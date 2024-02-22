varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec2 off_red = vec2(0.021, -0.019);
    vec2 off_green = vec2(0.013, 0.016);
    vec2 off_blue = vec2(-0.016, 0.012);
    
    vec4 output_color;
    output_color.r = texture2D(gm_BaseTexture, v_vTexcoord + off_red).r;
    output_color.g = texture2D(gm_BaseTexture, v_vTexcoord + off_green).g;
    output_color.b = texture2D(gm_BaseTexture, v_vTexcoord + off_blue).b;
    
    //output_color.rgba = texture2D(gm_BaseTexture, v_vTexcoord).rgba;
    output_color.a = texture2D(gm_BaseTexture, v_vTexcoord).a;
    
    gl_FragColor = v_vColour * output_color;
}
