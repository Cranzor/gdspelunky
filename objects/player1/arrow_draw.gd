extends AnimatedSprite2D

var sprites = Sprites.new()
var objects = ObjectDatabase.new()

#---[FLAG] put this object into a group that hides itself each frame
func draw_arrow(passed_position, passed_sprite, passed_frame = 0):
	position = passed_position
	offset = get_sprite_offset(passed_sprite)
	set_animation(passed_sprite)
	frame = passed_frame
	show()


func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
