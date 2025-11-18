extends AnimatedSprite2D
class_name DrawSprite

var sprites = Sprites.new()
var objects = ObjectDatabase.new()
@export var hide_at_start_of_frame: bool = false

func _ready() -> void:
	hide_draw_object()

func draw_sprite(passed_position, passed_sprite, passed_frame = 0, passed_z_index = 0, animated_sprite = self, global_pos = false):
	animated_sprite.position = passed_position
	animated_sprite.offset = get_sprite_offset(passed_sprite)
	animated_sprite.set_animation(passed_sprite)
	animated_sprite.frame = passed_frame
	animated_sprite.z_index = passed_z_index
	animated_sprite.show()


static func draw_sprite_ext(passed_sprite: String, subimg: int, x: int, y: int, xscale: int, yscale: int, rot, color: Color, alpha, animated_sprite: AnimatedSprite2D):
	var before_updated_global_position: Vector2 = animated_sprite.global_position
	animated_sprite.global_position = Vector2(x, y)
	animated_sprite.scale.x = xscale
	animated_sprite.rotation_degrees = -rot

	if color != gml.c_white: #--- c_white is to display the default color
		animated_sprite.self_modulate = color
	animated_sprite.self_modulate.a = alpha
	if !animated_sprite.is_playing():
		animated_sprite.frame = subimg
		animated_sprite.play()
	animated_sprite.show()

	#--- set object to reset interpolation if distance moved is larger than 10 pixels
	if abs(before_updated_global_position.x-animated_sprite.global_position.x) > 10 or abs(before_updated_global_position.y-animated_sprite.global_position.y) > 10:
		animated_sprite.get_parent().reset_interpolation_this_frame = true

func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset

func hide_draw_object():
	if hide_at_start_of_frame:
		hide()
