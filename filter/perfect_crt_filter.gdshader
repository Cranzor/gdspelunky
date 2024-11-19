shader_type canvas_item;

uniform sampler2D sampled_texture : source_color;

#define vTexCoord UV.xy * 5.0
#define SourceSize vec4(UV, 1.0 / UV) //either TextureSize or InputSize
#define SUBPX_POS 0.3
#define H_SHARP 0.15
#define Source sampled_texture
#define COMPAT_TEXTURE texture
#define V_SHARP 0.5
#define MIN_THICK 0.3
#define MAX_THICK 0.9
#define THICK_FALLOFF 0.65

void fragment() {
    vec2 cent = vTexCoord*SourceSize.xy;
    float src_x_fract = fract(cent.x - 0.5);
    float src_x_int = floor(cent.x-0.5);

    float src_y_fract = fract(cent.y - SUBPX_POS) -0.5;
    float src_y_int = floor (cent.y - SUBPX_POS);

// Function similar to smoothstep and sigmoid.
    float s = sign(src_x_fract - 0.5);
    float o = (1.0 + s) * 0.5;
    float src_x = src_x_int + o - 0.5 * s * pow(2.0 * (o - s * src_x_fract), mix(1.0, 6.0, H_SHARP));

    vec3 signal = COMPAT_TEXTURE(Source, vec2((src_x + 0.5) * SourceSize.z, (src_y_int + 0.5) * SourceSize.w)).rgb;

// Vectorize operations for speed.
    float eff_v_sharp = 3.0 + 50.0 * V_SHARP * V_SHARP;
    vec3 thickmin = vec3(MIN_THICK); vec3 thickmax = vec3(MAX_THICK); vec3 thickfall = vec3(THICK_FALLOFF);
    vec3 radius = pow(mix(thickmin, thickmax, signal), thickfall) * 0.5;

    COLOR.rgb = signal * clamp(0.25 - eff_v_sharp * (src_y_fract * src_y_fract - radius * radius),0.0, 1.0);
}

