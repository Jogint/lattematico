varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 cor_original = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 cor_invertida = vec4(1.0 - cor_original.rgb, cor_original.a);
    gl_FragColor = cor_invertida;
}