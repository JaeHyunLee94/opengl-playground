//
// Created by 이재현 on 2020/08/30.
//

#ifndef OPENGL_PLAYGROUND_MESH_H
#define OPENGL_PLAYGROUND_MESH_H


#include <glm.hpp>
#include <vector>
#include "Texture.h"
#include "Shader.h"
#include "Material.h"
#include "Light.h"
#include "Camera.h"

struct Vertex{
    glm::vec3 position;
    glm::vec3 normal;
    glm::vec2 texcoord;
};



class Mesh {

public:
   std::vector<Vertex> vertices;
   std::vector<unsigned int> indices;
   Material material;



   Mesh(std:: vector<Vertex> vertices, std::vector<unsigned int> indices,Material material);
   void draw(Shader& shader,Light& light, Camera& camera);

private:
    GLuint VAO,VBO,EBO;


    void setupMesh();
};


#endif //OPENGL_PLAYGROUND_MESH_H

