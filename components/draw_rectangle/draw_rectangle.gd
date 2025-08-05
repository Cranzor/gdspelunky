extends ColorRect


func draw_rectangle(x1, y1, x2, y2, outline) -> void:
	position = Vector2(x1, y1)
	size = Vector2(x2 - x1, y2 - y1)
	color = gml.draw_color
	color.a = gml.draw_alpha
	show()
