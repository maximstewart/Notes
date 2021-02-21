#version 330 core

in vec2 pUv;
in vec3 pNormal;
in vec3 pToLight;
in vec3 pToCamera;
in vec3 pSize;

out vec4 color;

uniform sampler2D tex;
uniform sampler2D reflection;
uniform sampler2D heights;

void main(void)
{

	vec2 uv = pUv;
	if (pSize.z >= 1.002)
	{
		vec2 boardSize = pSize.xy / 4;
		uv = mod(uv * boardSize, 1.0);
		uv *= 0.96;
		uv += 0.02;
	}

	vec3 normal = normalize(pNormal);
	vec3 toLight = normalize(pToLight);
	vec3 toCamera = normalize(pToCamera);

	float lambert = max(dot(normalize(normal), normalize(toLight)), 0.2);
	float specular = pow(max(dot(reflect(toLight, normal), toCamera), 0.0), 10.0) * 0.5;

	color = texture(tex, uv) * lambert + vec4(1.0) * specular;
	
	if (pSize.z >= 1.002)
	{
		float heightLeft = texture(heights, uv + vec2(-0.003, 0)).r;
		float heightRight = texture(heights, uv + vec2(0.003, 0)).r;
		float heightUp = texture(heights, uv + vec2(0, -0.003)).r;
		float heightDown = texture(heights, uv + vec2(0, 0.003)).r;
		vec3 nnormal = vec3(heightLeft - heightRight, 1.0, heightUp - heightDown);
		
		float fresnel = 1.0 - max(dot(-toCamera, normal), 0.0);
		
		vec4 reflectionColor = texture(reflection, gl_FragCoord.xy / vec2(1280.0, -720.0) + vec2(0, 1) + nnormal.xz * 0.1);
		color = mix(color, reflectionColor, fresnel * 0.6 + 0.2);
	}
	
}