extends AnimatedSprite2D
class_name DrawSprite

var sprites = Sprites.new()
var objects = ObjectDatabase.new()

func draw_sprite(passed_position, passed_sprite, passed_frame = 0, passed_z_index = 0):
	position = passed_position
	offset = get_sprite_offset(passed_sprite)
	set_animation(passed_sprite)
	frame = passed_frame
	z_index = passed_z_index
	show()

func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
