uniform float uTime;

varying vec2 vUv;

void main() {
    vec3 transformed = position;
    transformed.x += sin(position.x + uTime);  
    transformed.y += sin(position.y - uTime);  

    gl_Position = projectionMatrix * modelViewMatrix * vec4(transformed, 1.0);
    vUv = uv;
} 