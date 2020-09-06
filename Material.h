//
// Created by 이재현 on 2020/08/31.
//

#ifndef OPENGL_PLAYGROUND_MATERIAL_H
#define OPENGL_PLAYGROUND_MATERIAL_H

#include <glm.hpp>
#include "Texture.h"

struct Material {

    glm::vec3 ambient;
    glm::vec3 diffuse;
    glm::vec3 specular;
    glm::vec3 emission;
    float shininess;

    Texture ambientmap;
    Texture diffusemap;
    Texture speculartmap;

    std::string matName;

};


#endif //OPENGL_PLAYGROUND_MATERIAL_H
