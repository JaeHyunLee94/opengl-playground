#version 330 core

// Interpolated values from the vertex shaders
in vec2 v_texcoord;
in vec3 v_normal,v_view;

// Ouput data
out vec4 frag_color;

// Values that stay constant for the whole mesh. specular map 은 없다고 가정
uniform sampler2D diffuse_map;
uniform vec3 Ka,Ks,Kd,Ke;
uniform vec3 Sa,Ss,Sd;
uniform vec3 lightdir;
uniform float sh;



void main(){

    vec3 normal =  normalize(v_normal);
    vec3 view = normalize(v_view);
    vec3 light=normalize(lightdir);

    vec3 matdiffuse=texture(diffuse_map,v_texcoord).rgb;
    vec3 diff=max(dot(normal,light),0.0)*Sd*matdiffuse;

    vec3 refl=2.0*normal*dot(normal,light)-light;
    vec3 spec=pow(max(dot(refl,v_view),0),sh)*Ss*Ks;

    vec3 ambi=Ka*Sa;

    frag_color=vec4(0.9,0.2,0.1,1.0);

//    frag_color=vec4(diff+spec+ambi+Ke,1.0);

}
