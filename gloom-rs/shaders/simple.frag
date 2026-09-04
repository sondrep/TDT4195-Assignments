#version 430 core

layout (location=1) in vec4 vertex_colour;
out vec4 colour;

void main()
{
    colour = vertex_colour;
}