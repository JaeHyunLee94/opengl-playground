//
// Created by 이재현 on 2020/08/30.
//

#ifndef OPENGL_PLAYGROUND_MODEL_H
#define OPENGL_PLAYGROUND_MODEL_H


#include <vector>
#include "Mesh.h"
#include "Light.h"
#include "Camera.h"
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>


class Model {

public:

    Model(std::string filePath);
    /*
     *  position , wolrd matrix 넣기
     */
    void draw(Shader& shader, Light& light, Camera& camera);
private:

    std::vector<Mesh> meshes;
    std::string filePath;
    std::string directory;


    void processNode(aiNode *pNode, const aiScene *pScene);

    Mesh processMesh(aiMesh *pMesh, const aiScene *pScene);

};


#endif //OPENGL_PLAYGROUND_MODEL_H
