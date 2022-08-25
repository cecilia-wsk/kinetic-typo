uniform float uTime;
uniform sampler2D uTexture;

varying vec2 vUv;

void main() {
    float time = uTime;
    vec2 uv = vUv;
    vec2 repeat = vec2(6.0, 7.0);
    uv.x += sin(uv.y - time) * 0.05; 
    uv = fract( uv * repeat - vec2(0.0, time));
    vec4 color = texture2D(uTexture, uv);
    // gl_FragColor = color;
     gl_FragColor = vec4( vec3(uv, 0.75), 0.8 );
}