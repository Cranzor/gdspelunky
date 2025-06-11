extends AnimatedSprite2D
class_name DrawSprite

var sprites = Sprites.new()
var objects = ObjectDatabase.new()
@export var hide_at_start_of_frame: bool = false


func draw_sprite(passed_position, passed_sprite, passed_frame = 0, passed_z_index = 0, animated_sprite = self, global_pos = false):
	animated_sprite.position = passed_position
	animated_sprite.offset = get_sprite_offset(passed_sprite)
	animated_sprite.set_animation(passed_sprite)
	animated_sprite.frame = passed_frame
	animated_sprite.z_index = passed_z_index
	animated_sprite.show()


func draw_sprite_ext(passed_sprite: String, subimg: int, x: int, y: int, xscale: int, yscale: int, rot, color: Color, alpha, animated_sprite: AnimatedSprite2D):
	animated_sprite.global_position = Vector2(x, y)
	animated_sprite.scale.x = xscale
	animated_sprite.rotation_degrees = -rot

	if color != gml.c_white: #--- c_white is to display the default color
		animated_sprite.self_modulate = color
	animated_sprite.self_modulate.a = alpha
	
	animated_sprite.show()


func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
