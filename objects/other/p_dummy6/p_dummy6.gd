extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func create():
	# DY:  dummy actor for end

	if (global.is_damsel): sprite_index = "damsel_left"
	elif (global.is_tunnel_man): sprite_index = "tunnel_left"


func draw():
	image_xscale = -1
	DrawSprite.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, animated_sprite_node)
