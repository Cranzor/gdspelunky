extends Node2D
var circles_to_draw: Array

func _draw() -> void:
	for circle in circles_to_draw:
		var pos = circle[0]
		var radius = circle[1]
		var color = circle[2]
		var draw_to_surface = circle[3]
		
		if draw_to_surface: #--- adding the current view position when drawing to a surface
			pos += Vector2(gml.view_xview, gml.view_yview)
		
		material.set("shader_parameter/color", color)
		draw_circle(pos, radius, color)
	circles_to_draw.clear()
