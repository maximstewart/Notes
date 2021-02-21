#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 uv;

out vec2 pUv;
out vec3 pNormal;
out vec3 pToLight;
out vec3 pToCamera;
out vec3 pSize;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main(void)
{
	
	pUv = uv;
	pNormal = (view * vec4(normal, 0.0)).xyz;
	pToLight = vec3(10.0, 2.0, 2.0) - (view * model * vec4(position, 1.0)).xyz;
	pToCamera = vec3(view[3][0], view[3][1], view[3][2]) - (model * vec4(position, 1.0)).xyz;
	pSize = vec3(model[0][0], model[2][2], model[3][3]);
	
	gl_Position = projection * view * model * vec4(position, 1.0);
	
}