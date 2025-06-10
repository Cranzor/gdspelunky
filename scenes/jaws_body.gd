extends AnimatedSprite2D

func draw_jaws_body(passed_position, passed_sprite):
	position = passed_position
	play(passed_sprite)
