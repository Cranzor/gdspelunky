extends AnimatedSprite2D

var sprites = Sprites.new()
var objects = ObjectDatabase.new()

#---[FLAG] put this object into a group that hides itself each frame
func draw_jetpack(passed_position, passed_sprite):
	position = passed_position
	offset = get_sprite_offset(passed_sprite)
	play(passed_sprite)
	if passed_sprite == "jetpack_back":
		z_index = 0
	show()


func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
