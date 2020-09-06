
#include <iostream>
#include <vector>

#include <GL/glew.h>
#include <glm.hpp>
#include <gtc/matrix_transform.hpp>

#include <glfw3.h>


#include "Shader.h"
#include "Model.h"
#include "Camera.h"
#include "Light.h"


unsigned int WINDOW_WIDTH;
unsigned int WINDOW_HEIGHT;


GLuint programID;
GLFWwindow *window;

int init(){

    if (!glfwInit()) {
        std::cout << "glfw init failed!!\n";
        return -1;
    }

    glfwWindowHint(GL_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);

    WINDOW_WIDTH=1200;
    WINDOW_HEIGHT=800;



    window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "opengl_playground", NULL, NULL);

    if (!window) {
        std::cout << "window creation failed!\n";
        glfwTerminate();
        return 0;
    }

    glfwMakeContextCurrent(window);

    glewExperimental = GL_TRUE;

    if (glewInit() != GLEW_OK) {
        std::cout << "glew init failed\n";
        return 0;
    }

    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

//    glEnable(GL_DEPTH_TEST);
//    // Accept fragment if it closer to the camera than the former one
//    glDepthFunc(GL_LESS);
//    // Cull triangles which normal is not towards the camera
//    glEnable(GL_CULL_FACE);

    return 1;

}



int main() {

    init();


    Shader shader("../shader/VertexShader.glsl","../shader/FragmentShader.glsl");
    shader.use();

    //13041_Beagle_v1_L1.obj
    //ChessKing.obj
    Model chessking("../assets/suzanne.obj");


    Camera camera(
            glm::vec3(0.03, 0.03, 0.03), // Camera is at (4,3,3), in World Space
            glm::vec3(0, 0, 0), // and looks at the origin
            glm::vec3(-1, 0, 1),
            glm::radians(45.0f),
            (4.0f / 3.0f),
            0.01f,
            100.0f
    );

    Light light{
        glm::vec3(1.0,1.0,1.0),
        glm::vec3(-1.0,-1.0,-1.0),
        glm::vec3(0.2,0.3,0.1),
            glm::vec3(0.2,0.3,0.1),
            glm::vec3(1.0,1.0,1.0)
    };


    glm::mat4 Model = glm::mat4(1.0f);
    // Our ModelViewProjection : multiplication of our 3 matrices
    glm::mat4 MVP = camera.getProjectionMatrix()* camera.getViewMatrix() * Model;



    while (!glfwWindowShouldClose(window)) {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        chessking.draw(shader,light,camera);


        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();


    }


    glfwTerminate();
    return 0;
}

