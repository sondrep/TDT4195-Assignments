#version 430 core

layout(location=0) in vec3 position;
layout(location=1) in vec4 colour;
layout(location=2) in vec3 normal;

layout(location=0) out vec4 vertex_colour;
layout(location=1) out vec3 vertex_normal;

layout(location=0) uniform mat4 trans_matrix;
layout(location=1) uniform mat4 model_matrix;

void main()
{
    gl_Position = trans_matrix * vec4(position, 1.0f);
    vertex_colour = colour;
    vertex_normal = normalize(mat3(model_matrix) * normal);
}