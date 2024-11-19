/*
	Port of libretro's crt-lottes.glsl to Godot shading language.
	Source: https://github.com/libretro/glsl-shaders/blob/master/crt/shaders/crt-lottes.glsl

	From original:

	PUBLIC DOMAIN CRT STYLED SCAN-LINE SHADER

	  by Timothy Lottes

	This is more along the style of a really good CGA arcade monitor.
	With RGB inputs instead of NTSC.
	The shadow mask example has the mask rotated 90 degrees for less chromatic aberration.

	Left it unoptimized to show the theory behind the algorithm.

	It is an example what I personally would want as a display option for pixel art games.
	Please take and use, change, or whatever.
*/

shader_type canvas_item;
render_mode blend_mix;

uniform sampler2D screen_texture : hint_screen_texture;

// hardScan
uniform float hardScan: hint_range(-20.0, 0.0, 1.0) = -8.0;

// hardPix
uniform float hardPix: hint_range(-20.0, 0.0, 1.0) = -3.0;

// warpX
uniform float warpX: hint_range(0.0, 0.125, 0.01) = 0.031;

// warpY
uniform float warpY: hint_range(0.0, 0.125, 0.01) = 0.041;

// maskDark
uniform float maskDark: hint_range(0.0, 2.0, 0.1) = 0.5;

// maskLight
uniform float maskLight: hint_range(0.0, 2.0, 0.1) = 1.5;

// scaleInLinearGamma
uniform float scaleInLinearGamma: hint_range(0.0, 1.0, 1.0) = 1.0;

// shadowMask
uniform float shadowMask: hint_range(0.0, 4.0, 1.0) = 3.0;

// brightness boost
uniform float brightBoost: hint_range(0.0, 2.0, 0.05) = 1.0;

// bloom-x soft
uniform float hardBloomPix: hint_range(-2.0, -0.5, 0.1) = -1.5;

// bloom-y soft
uniform float hardBloomScan: hint_range(-4.0, -1.0, 0.1) = -2.0;

// bloom ammount
uniform float bloomAmount: hint_range(0.0, 1.0, 0.05) = 0.15;

// filter kernel shape
uniform float shape: hint_range(0.0, 10.0, 0.05) = 2.0;


uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
uniform int FrameCount;
//uniform int FrameDirection; // not used

/*
NOTE: Godot shading language does not support \"\"#define\", so \"SourceSize\"
has been inlined where used, and commented accordingly.
*/
//#define SourceSize vec4(TextureSize, 1.0 / TextureSize) //either TextureSize or InputSize

/*
NOTE: Godot shading language does not support \"\"#define\", so these ones
must be commented/uncommented in the corresponding \"#ifdef\"/\"#ifndef\" sections.
*/

// reduce instructions with simpler linearization (fixes HD3000 Sandy Bridge IGP)
// Default in original GLSL source: disabled
//#define SIMPLE_LINEAR_GAMMA

// apply bloom
// Default in original GLSL source: enabled
//#define DO_BLOOM


// ------------- //

// sRGB to Linear.
// Assuming using sRGB typed textures this should not be needed.

//#ifdef SIMPLE_LINEAR_GAMMA
/*
float ToLinear1(float c) {
    return c;
}

vec3 ToLinear(vec3 c) {
    return c;
}

vec3 ToSrgb(vec3 c) {
    return pow(c, vec3(1.0 / 2.2));
}
*/
//#else

float ToLinear1(float c) {
    if (scaleInLinearGamma == 0.)
        return c;

    return(c<=0.04045) ? c/12.92 : pow((c + 0.055)/1.055, 2.4);
}

vec3 ToLinear(vec3 c) {
    if (scaleInLinearGamma==0.)
        return c;

    return vec3(ToLinear1(c.r), ToLinear1(c.g), ToLinear1(c.b));
}

// Linear to sRGB.
// Assuming using sRGB typed textures this should not be needed.
float ToSrgb1(float c) {
    if (scaleInLinearGamma == 0.)
        return c;

    return(c<0.0031308 ? c*12.92 : 1.055*pow(c, 0.41666) - 0.055);
}

vec3 ToSrgb(vec3 c) {
    if (scaleInLinearGamma == 0.)
        return c;

    return vec3(ToSrgb1(c.r), ToSrgb1(c.g), ToSrgb1(c.b));
}

//#endif

// Nearest emulated sample given floating point position and texel offset.
// Also zero's off screen.
vec3 Fetch(sampler2D _TEXTURE, vec2 pos,vec2 off) {
	//pos=(floor(pos*SourceSize.xy+off)+vec2(0.5,0.5))/SourceSize.xy;
	pos=(floor(pos*vec4(TextureSize, 1.0 / TextureSize).xy+off)+vec2(0.5,0.5))/vec4(TextureSize, 1.0 / TextureSize).xy;

	//#ifdef SIMPLE_LINEAR_GAMMA
	//return ToLinear(brightBoost * pow(texture(_TEXTURE,pos.xy).rgb, vec3(2.2)));
	//#else
	return ToLinear(brightBoost * texture(_TEXTURE,pos.xy).rgb);
	//#endif
}

// Distance in emulated pixels to nearest texel.
vec2 Dist(vec2 pos) {
	//pos = pos*SourceSize.xy;
	pos = pos*vec4(TextureSize, 1.0 / TextureSize).xy;

	return -((pos - floor(pos)) - vec2(0.5));
}

// 1D Gaussian.
float Gaus(float pos, float scale) {
	return exp2(scale*pow(abs(pos), shape));
}

// 3-tap Gaussian filter along horz line.
vec3 Horz3(sampler2D _TEXTURE, vec2 pos, float off) {
	vec3 b    = Fetch(_TEXTURE, pos, vec2(-1.0, off));
	vec3 c    = Fetch(_TEXTURE, pos, vec2( 0.0, off));
	vec3 d    = Fetch(_TEXTURE, pos, vec2( 1.0, off));
	float dst = Dist(pos).x;

	// Convert distance to weight.
	float scale = hardPix;
	float wb = Gaus(dst-1.0,scale);
	float wc = Gaus(dst+0.0,scale);
	float wd = Gaus(dst+1.0,scale);

	// Return filtered sample.
	return (b*wb+c*wc+d*wd)/(wb+wc+wd);
}

// 5-tap Gaussian filter along horz line.
vec3 Horz5(sampler2D _TEXTURE, vec2 pos,float off) {
	vec3 a = Fetch(_TEXTURE, pos,vec2(-2.0, off));
	vec3 b = Fetch(_TEXTURE, pos,vec2(-1.0, off));
	vec3 c = Fetch(_TEXTURE, pos,vec2( 0.0, off));
	vec3 d = Fetch(_TEXTURE, pos,vec2( 1.0, off));
	vec3 e = Fetch(_TEXTURE, pos,vec2( 2.0, off));

	float dst = Dist(pos).x;
	// Convert distance to weight.
	float scale = hardPix;
	float wa = Gaus(dst - 2.0, scale);
	float wb = Gaus(dst - 1.0, scale);
	float wc = Gaus(dst + 0.0, scale);
	float wd = Gaus(dst + 1.0, scale);
	float we = Gaus(dst + 2.0, scale);

	// Return filtered sample.
	return (a*wa+b*wb+c*wc+d*wd+e*we)/(wa+wb+wc+wd+we);
}

// 7-tap Gaussian filter along horz line.
vec3 Horz7(sampler2D _TEXTURE, vec2 pos,float off) {
	vec3 a = Fetch(_TEXTURE, pos, vec2(-3.0, off));
	vec3 b = Fetch(_TEXTURE, pos, vec2(-2.0, off));
	vec3 c = Fetch(_TEXTURE, pos, vec2(-1.0, off));
	vec3 d = Fetch(_TEXTURE, pos, vec2( 0.0, off));
	vec3 e = Fetch(_TEXTURE, pos, vec2( 1.0, off));
	vec3 f = Fetch(_TEXTURE, pos, vec2( 2.0, off));
	vec3 g = Fetch(_TEXTURE, pos, vec2( 3.0, off));

	float dst = Dist(pos).x;
	// Convert distance to weight.
	float scale = hardBloomPix;
	float wa = Gaus(dst - 3.0, scale);
	float wb = Gaus(dst - 2.0, scale);
	float wc = Gaus(dst - 1.0, scale);
	float wd = Gaus(dst + 0.0, scale);
	float we = Gaus(dst + 1.0, scale);
	float wf = Gaus(dst + 2.0, scale);
	float wg = Gaus(dst + 3.0, scale);

	// Return filtered sample.
return (a*wa+b*wb+c*wc+d*wd+e*we+f*wf+g*wg)/(wa+wb+wc+wd+we+wf+wg);
}

// Return scanline weight.
float Scan(vec2 pos, float off) {
	float dst = Dist(pos).y;

	return Gaus(dst + off, hardScan);
}

// Return scanline weight for bloom.
float BloomScan(vec2 pos, float off) {
	float dst = Dist(pos).y;

	return Gaus(dst + off, hardBloomScan);
}

// Allow nearest three lines to effect pixel.
vec3 Tri(sampler2D _TEXTURE, vec2 pos) {
	vec3 a = Horz3(_TEXTURE, pos,-1.0);
	vec3 b = Horz5(_TEXTURE, pos, 0.0);
	vec3 c = Horz3(_TEXTURE, pos, 1.0);

	float wa = Scan(pos,-1.0);
	float wb = Scan(pos, 0.0);
	float wc = Scan(pos, 1.0);

	return a*wa + b*wb + c*wc;
}

// Small bloom.
vec3 Bloom(sampler2D _TEXTURE, vec2 pos) {
	vec3 a = Horz5(_TEXTURE, pos,-2.0);
	vec3 b = Horz7(_TEXTURE, pos,-1.0);
	vec3 c = Horz7(_TEXTURE, pos, 0.0);
	vec3 d = Horz7(_TEXTURE, pos, 1.0);
	vec3 e = Horz5(_TEXTURE, pos, 2.0);

	float wa = BloomScan(pos,-2.0);
	float wb = BloomScan(pos,-1.0);
	float wc = BloomScan(pos, 0.0);
	float wd = BloomScan(pos, 1.0);
	float we = BloomScan(pos, 2.0);

	return a*wa+b*wb+c*wc+d*wd+e*we;
}

// Distortion of scanlines, and end of screen alpha.
vec2 Warp(vec2 pos) {
	pos  = pos*2.0-1.0;
	pos *= vec2(1.0 + (pos.y*pos.y)*warpX, 1.0 + (pos.x*pos.x)*warpY);

	return pos*0.5 + 0.5;
}

// Shadow mask.
vec3 Mask(vec2 pos) {
	vec3 mask = vec3(maskDark, maskDark, maskDark);

	// Very compressed TV style shadow mask.
	if (shadowMask == 1.0)
	{
	    float line = maskLight;
	    float odd = 0.0;

	    if (fract(pos.x*0.166666666) < 0.5) odd = 1.0;
	    if (fract((pos.y + odd) * 0.5) < 0.5) line = maskDark;

	    pos.x = fract(pos.x*0.333333333);

	    if      (pos.x < 0.333) mask.r = maskLight;
	    else if (pos.x < 0.666) mask.g = maskLight;
	    else                    mask.b = maskLight;
	    mask*=line;
	}

	// Aperture-grille.
	else if (shadowMask == 2.0)
	{
	    pos.x = fract(pos.x*0.333333333);

	    if      (pos.x < 0.333) mask.r = maskLight;
	    else if (pos.x < 0.666) mask.g = maskLight;
	    else                    mask.b = maskLight;
	}

	// Stretched VGA style shadow mask (same as prior shaders).
	else if (shadowMask == 3.0)
	{
	    pos.x += pos.y*3.0;
	    pos.x  = fract(pos.x*0.166666666);

	    if      (pos.x < 0.333) mask.r = maskLight;
	    else if (pos.x < 0.666) mask.g = maskLight;
	    else                    mask.b = maskLight;
	}

	// VGA style shadow mask.
	else if (shadowMask == 4.0)
	{
	    pos.xy  = floor(pos.xy*vec2(1.0, 0.5));
	    pos.x  += pos.y*3.0;
	    pos.x   = fract(pos.x*0.166666666);

	    if      (pos.x < 0.333) mask.r = maskLight;
	    else if (pos.x < 0.666) mask.g = maskLight;
	    else                    mask.b = maskLight;
	}

	return mask;
}

void fragment() {
	vec2 pos = Warp(UV.xy*(TextureSize.xy/InputSize.xy))*(InputSize.xy/TextureSize.xy);
	vec3 outColor = Tri(screen_texture, pos);

	//#ifdef DO_BLOOM
	//Add Bloom
	outColor.rgb += Bloom(screen_texture, pos)*bloomAmount;
	//#endif

	if (shadowMask > 0.0)
	    outColor.rgb *= Mask(FRAGCOORD.xy * 1.000001);

	//#ifdef GL_ES    /* TODO/FIXME - hacky clamp fix */

	vec2 bordertest = (pos);
	if ( bordertest.x > 0.0001 && bordertest.x < 0.9999 && bordertest.y > 0.0001 && bordertest.y < 0.9999)
	    outColor.rgb = outColor.rgb;
	else
	    outColor.rgb = vec3(0.0);

	//#endif

	COLOR = vec4(ToSrgb(outColor.rgb), 1.0);
}