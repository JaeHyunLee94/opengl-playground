//
// Created by 이재현 on 2020/08/29.
//

#ifndef OPENGL_PLAYGROUND_TEXTURE_H
#define OPENGL_PLAYGROUND_TEXTURE_H


#include <GL/glew.h>
#include <string>


class Texture {


public:

    GLuint textureID;
    Texture();
    Texture(std::string fileName,GLenum type);
    void load(std::string fileName,GLenum type);
private:
    int width, height,channels;

    std::string typeName;
    std::string fileName;

};


#endif //OPENGL_PLAYGROUND_TEXTURE_H
