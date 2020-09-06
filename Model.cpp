//
// Created by 이재현 on 2020/08/30.
//


#include <iostream>
#include "Model.h"
#include "Light.h"
#include "Camera.h"
#include <glm.hpp>
#include <assimp/scene.h>
#include <assimp/Importer.hpp>
#include <assimp/postprocess.h>

Model::Model(std::string  filePath) {

    this->filePath=filePath;

    Assimp::Importer importer;

    const aiScene* scene= importer.ReadFile(filePath.c_str(),aiProcess_Triangulate | aiProcess_GenSmoothNormals | aiProcess_FlipUVs | aiProcess_CalcTangentSpace);


    // check for errors
    if(!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode) // if is Not Zero
    {
        std::cout << "ERROR::ASSIMP:: " << importer.GetErrorString() << std::endl;
        return;
    }
    directory = filePath.substr(0, filePath.find_last_of('/'));

    // process ASSIMP's root node recursively
    processNode(scene->mRootNode, scene);




}

void Model::processNode(aiNode *pNode, const aiScene *pScene) {


    for(int i=0;i<pNode->mNumMeshes;i++){
        aiMesh* mesh=pScene->mMeshes[pNode->mMeshes[i]];

        meshes.push_back(processMesh(mesh,pScene));

    }
    for(unsigned int i = 0; i < pNode->mNumChildren; i++)
    {
        processNode(pNode->mChildren[i], pScene);
    }

}
//model 복사 최소화, texture 중복로딩문제 해결
Mesh Model::processMesh(aiMesh *mesh, const aiScene *pScene) {

    std::vector<Vertex> vertices;
    std::vector<unsigned int> indices;
    Material material;




    for(unsigned int i = 0; i < mesh->mNumVertices; i++)
    {
        Vertex vertex;
        glm::vec3 vector; // we declare a placeholder vector since assimp uses its own vector class that doesn't directly convert to glm's vec3 class so we transfer the data to this placeholder glm::vec3 first.
        // positions
        vector.x = mesh->mVertices[i].x;
        vector.y = mesh->mVertices[i].y;
        vector.z = mesh->mVertices[i].z;
        vertex.position=vector;
        // normals
        if (mesh->HasNormals())
        {
            vector.x = mesh->mNormals[i].x;
            vector.y = mesh->mNormals[i].y;
            vector.z = mesh->mNormals[i].z;
            vertex.normal = vector;
        }
        // texture coordinates
        if(mesh->mTextureCoords[0]) // does the mesh contain texture coordinates?
        {
            glm::vec2 vec;
            // a vertex can contain up to 8 different texture coordinates. We thus make the assumption that we won't
            // use models where a vertex can have multiple texture coordinates so we always take the first set (0).
            vec.x = mesh->mTextureCoords[0][i].x;
            vec.y = mesh->mTextureCoords[0][i].y;
            vertex.texcoord = vec;
//            // tangent
//            vector.x = mesh->mTangents[i].x;
//            vector.y = mesh->mTangents[i].y;
//            vector.z = mesh->mTangents[i].z;
//            vertex.Tangent = vector;
//            // bitangent
//            vector.x = mesh->mBitangents[i].x;
//            vector.y = mesh->mBitangents[i].y;
//            vector.z = mesh->mBitangents[i].z;
//            vertex.Bitangent = vector;
        }
        else
            vertex.texcoord = glm::vec2(0.0f, 0.0f);

        vertices.push_back(vertex);
    }

    for(unsigned int i = 0; i < mesh->mNumFaces; i++)
    {
        aiFace face = mesh->mFaces[i];
        // retrieve all indices of the face and store them in the indices vector
        for(unsigned int j = 0; j < face.mNumIndices; j++)
            indices.push_back(face.mIndices[j]);
    }
    aiMaterial* pmaterial = pScene->mMaterials[mesh->mMaterialIndex];
    aiColor3D diffuse_color(0.0f,0.0f,0.0f);
    aiColor3D ambient_color(0.0f,0.0f,0.0f);
    aiColor3D specular_color(0.0f,0.0f,0.0f);
    float shininess=0.0f;

    if(AI_SUCCESS!=pmaterial->Get(AI_MATKEY_COLOR_DIFFUSE,diffuse_color)){
        std::cout << "there is no diffuse color in this material\n";
    }//진짜 바뀌나?
    if(AI_SUCCESS!=pmaterial->Get(AI_MATKEY_COLOR_AMBIENT,ambient_color)){
        std::cout << "there is no ambient color in this material\n";
    }//진짜 바뀌나?
    if(AI_SUCCESS!=pmaterial->Get(AI_MATKEY_COLOR_SPECULAR,specular_color)){
        std::cout << "there is no diffuse color in this material\n";
    }//진짜 바뀌나?
    if(AI_SUCCESS!=pmaterial->Get(AI_MATKEY_SHININESS,shininess)){
        std::cout << "there is no diffuse color in this material\n";
    }//진짜 바뀌나?


    //material info load
    material.shininess=shininess;
    material.ambient.r=ambient_color.r;//glm 변환
    material.ambient.g=ambient_color.g;
    material.ambient.b=ambient_color.b;
    material.diffuse.r=diffuse_color.r;//glm 변환
    material.diffuse.g=diffuse_color.g;
    material.diffuse.b=diffuse_color.b;
    material.specular.r=specular_color.r;//glm 변환기
    material.specular.g=specular_color.g;
    material.specular.b=specular_color.b;



    /*
     *
     * texture 생성하고 material 에 포인터 넣
     */
    aiString aiDiffuseTextureName;
    aiString aiAmbientTextureName;
    aiString aiSpecularTextureName;

    std::string diffuseFileName;
    std::string ambientFileName;
    std::string specularFileName;

    //diffuse load

    if( pmaterial->GetTextureCount(aiTextureType_DIFFUSE) >0 && AI_SUCCESS== pmaterial->GetTexture(aiTextureType_DIFFUSE,mesh->mMaterialIndex,&aiDiffuseTextureName)){
        diffuseFileName=aiDiffuseTextureName.data;


    }
    //diffuse load
    if( pmaterial->GetTextureCount(aiTextureType_AMBIENT) >0 && AI_SUCCESS== pmaterial->GetTexture(aiTextureType_AMBIENT,mesh->mMaterialIndex,&aiAmbientTextureName)){
        ambientFileName=aiAmbientTextureName.data;


    }
    //diffuse load
    if( pmaterial->GetTextureCount(aiTextureType_SPECULAR) >0 && AI_SUCCESS== pmaterial->GetTexture(aiTextureType_SPECULAR,mesh->mMaterialIndex,&aiSpecularTextureName)){
        specularFileName=aiSpecularTextureName.data;

    }



    std::string diffusePath= directory + '/' + diffuseFileName;
    std::string ambientPath= directory + '/' + ambientFileName;
    std::string specularPath= directory + '/' + specularFileName;
    material.ambientmap=Texture(ambientPath,GL_SAMPLER_2D);
    material.speculartmap=Texture(specularPath,GL_SAMPLER_2D);
    material.diffusemap=Texture(diffusePath,GL_SAMPLER_2D);


    Mesh m(vertices,indices,material);

    return m;


}

void Model::draw(Shader& shader,Light& light, Camera& camera) {

    for(auto& mesh_: meshes){
        mesh_.draw(shader,light,camera);
    }

}

