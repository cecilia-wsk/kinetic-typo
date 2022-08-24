varying vec3 vUv;
uniform float uTime;
uniform sampler2D uTexture;

void main() {
    float time = uTime;
    vec4 color = texture2D(uTexture,vUv);
    gl_FragColor = color;
}