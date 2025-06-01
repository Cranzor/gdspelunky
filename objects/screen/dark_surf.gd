extends Node2D

var rectangle_to_draw: Array
var surface_rectangle: Array

func _draw() -> void:
	if gml.surfaces_to_draw["dark_surf"] == true and gml.changed_scene == false:
		if !rectangle_to_draw.is_empty():
			var rect2 = rectangle_to_draw[0]
			var color = rectangle_to_draw[1]
			var draw_to_surface = rectangle_to_draw[2]
			var surface_target = rectangle_to_draw[3]

			if draw_to_surface: #--- adding the current view position when drawing to a surface
				rect2.position += Vector2(gml.view_xview, gml.view_yview)
				surface_rectangle = rectangle_to_draw.duplicate()
			
			draw_rect(rect2, color)
			rectangle_to_draw.clear()
			rectangle_to_draw = surface_rectangle.duplicate()
