// from here: https://godotshaders.com/shader/pixel-circle-ellipse/
// modified slightly to make pixel conversion easier and to work as a mask
// to convert pixel radius to diameter value, do (radius * 2) / texture size (one dimension, as it's a square)
// there may be a simpler way to do this, but this works

// Released under MIT License, Tengku Izdihar, 2025
shader_type canvas_item;

uniform float diameter :hint_range(0, 1) = 0.5;
uniform vec4 circle_color : source_color = vec4(1);
uniform float elipse_factor :hint_range(0, 90) = 45;
uniform sampler2D screen_texture : hint_screen_texture;
uniform vec4 color : source_color;

void fragment(){
	vec2 pixelNumber = vec2(textureSize(TEXTURE, 0));
	vec2 pixelated_UV = round(UV * pixelNumber) / pixelNumber;
	vec2 uv = (pixelated_UV * 2.0 - 1.0);

	float ef = radians(elipse_factor);
	uv.x *= cos(ef);
	uv.y *= sin(ef);

	float circle = ceil(length(uv) - diameter / 1.44);
	circle = 1. - circle;
	circle = clamp(circle, 0, circle_color.a);

	//COLOR = circle_color;
	COLOR = texture(screen_texture, SCREEN_UV);
	COLOR.a = circle;
	COLOR *= color;
}