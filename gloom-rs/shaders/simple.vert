#version 430 core

layout(location=0) in vec3 position;
layout(location=1) in vec4 colour;

layout(location=1) out vec4 vertex_colour;

layout(location=2) uniform mat4 trans_matrix;

void main()
{
    gl_Position = trans_matrix * vec4(position, 1.0f);
    vertex_colour = colour;
}