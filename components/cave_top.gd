extends Sprite2D

func set_cave_top(background: StringName, left: int, top: int, width: int, height: int, x: int, y: int, depth: int) -> void:
	region_rect = Rect2(left, top, width, height)
	position = Vector2.ZERO #--- y position is set to -16 for convenient viewing in the editor
	global_position = Vector2(x, y)
	show()
	
