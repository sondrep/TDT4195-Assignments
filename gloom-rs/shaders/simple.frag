#version 430 core

layout(location=0) in vec4 vertex_colour;
layout(location=1) in vec3 vertex_normal;

out vec4 colour;

void main()
{
    vec3 lightDirection = normalize(vec3(0.8, -0.5, 0.6));
    colour = vec4(vertex_colour.rgb * max(0, dot(normalize(vertex_normal), -lightDirection)), vertex_colour.a);

}