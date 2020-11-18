uniform float time;
uniform float progress;
uniform sampler2D tex;
uniform sampler2D texture2;
uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
float PI = 3.141592653589793238;
void main()	{
	vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);
	vec4 color = texture2D(tex, newUV);
	gl_FragColor = vec4(vUv,0.0,1.);
	gl_FragColor = color;
	//gl_FragColor = vec4(progress, 0., 0., 1.);
}  