#version 430 core

layout(location=0) in vec3 position;
layout(location=1) in vec4 colour;

layout(location=1) out vec4 vertex_colour;

layout(location=2) uniform float oscillator;

void main()
{
    mat4 identity_matrix;

    identity_matrix[0] = vec4(1.0, 0.0, 0.0, 0.0);
    identity_matrix[1] = vec4(0.0, 1.0, 0.0, 0.0);
    identity_matrix[2] = vec4(0.0, 0.0, 1.0, 0.0);
    identity_matrix[3] = vec4(0.0, 0.0, 0.0, 1.0);

    gl_Position = identity_matrix * vec4(position, 1.0f);
    vertex_colour = colour;
}