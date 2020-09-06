#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texcoord;
layout(location = 2) in vec3 normal;

out vec2 v_texcoord;
out vec3 v_normal,v_view;


uniform mat4 worldMat,viewMat,projMat;
uniform vec3 eyepos;

void main(){
    v_normal=normalize(transpose(inverse(mat3(worldMat)))*normal);
    vec3 worldPos=(worldMat*vec4(position,1.0)).xyz;
    v_view=normalize(eyepos-worldPos);
    v_texcoord=texcoord;
    gl_Position=projMat*viewMat*vec4(worldPos,1.0);
}