const vertexShader = /* glsl */ `
varying vec2 vUv;
uniform float uTime;

void main() {
    vUv = uv;

    vec3 transformed = position;
    transformed.x += sin(position.y + (uTime * 0.5));  
    
    gl_Position = projectionMatrix * modelViewMatrix * vec4 
    (transformed, 1.0);
} 
`;

const fragmentShader = /* glsl */ `
varying vec2 vUv;
uniform float uTime;
uniform sampler2D uTexture;

void main() {
    float time = uTime;
    vec2 uv = vUv;
    vec2 repeat = vec2(6.0, 7.0);
    uv.x += sin(uv.y + time * 0.5) * 0.05; 
    uv = fract( uv * repeat + vec2(0.0, time));
    vec4 color = texture2D(uTexture, uv);
    gl_FragColor = color;
}
`;

export default  {
    vertex: vertexShader,
    fragment: fragmentShader
}