cmake_minimum_required(VERSION 3.15)
project(opengl_playground)

set(CMAKE_CXX_STANDARD 11)

include_directories("./dependencies/GLEW/include")
include_directories("./dependencies/GLFW/include")
include_directories("./dependencies/glm")
include_directories("./dependencies/assimp/include")
include_directories("./dependencies/SOIL2/include")


link_directories("${CMAKE_SOURCE_DIR}/dependencies/GLEW/lib")
link_directories("${CMAKE_SOURCE_DIR}/dependencies/GLFW/lib")
link_directories("${CMAKE_SOURCE_DIR}/dependencies/assimp/lib")
link_directories("${CMAKE_SOURCE_DIR}/dependencies/SOIL2/lib")




add_executable(opengl_playground main.cpp Shader.cpp Shader.h Texture.cpp Texture.h Model.cpp Model.h Mesh.cpp Mesh.h Material.cpp Material.h Light.h Camera.cpp Camera.h)

find_library (OpenGL_LIBRARY OpenGL)
set (EXTRA_LIBS ${OpenGL_LIBRARY})

target_link_libraries(opengl_playground ${EXTRA_LIBS})


target_link_libraries(opengl_playground "${CMAKE_SOURCE_DIR}/dependencies/GLEW/lib/libGLEW.2.2.0.dylib")
target_link_libraries(opengl_playground "${CMAKE_SOURCE_DIR}/dependencies/GLFW/lib/libglfw.3.3.dylib")
target_link_libraries(opengl_playground "${CMAKE_SOURCE_DIR}/dependencies/assimp/lib/libassimp.5.0.0.dylib")
target_link_libraries(opengl_playground "${CMAKE_SOURCE_DIR}/dependencies/SOIL2/lib/libsoil2-debug.dylib")



