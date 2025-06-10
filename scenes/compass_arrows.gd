extends AnimatedSprite2D

func draw_compass_arrow(passed_position, passed_sprite) -> void:
	position = passed_position
	play(passed_sprite)
	show()
