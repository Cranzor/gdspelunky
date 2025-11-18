extends RemoteTransform2D
class_name SmoothMotion

@onready var physics_ticks: int = Engine.get_physics_ticks_per_second()
@onready var parent: GMObject = get_parent().get_parent()
var current_pos: Vector2 = Vector2.ZERO
var last_pos: Vector2 = Vector2.ZERO
var diff: Vector2 = Vector2.ZERO
var sprite: AnimatedSprite2D
var waiting_for_reset: bool = false
static var paused: bool = false


func _ready() -> void:
	set_sprite()
	reset_position()


func update_sprite_during_tick() -> void: #--- called in gm_loop once per tick
	if GameSettings.smooth_motion:
		if parent.get_node("Sprite").scale.x == -1:
			scale.x = -1
		else:
			if parent.object_name != "arrow_trap_test":
				scale.x = 1
		
		if sprite.global_position != current_pos:
			last_pos = current_pos
			current_pos = sprite.global_position
		else:
			last_pos = current_pos
			position = sprite.global_position
		
		waiting_for_reset = false


func _process(delta: float) -> void:
	if GameSettings.smooth_motion and !waiting_for_reset and !paused:
		position += (current_pos - last_pos) * delta * physics_ticks


func set_sprite():
	remote_path = "../../Sprite"
	sprite = get_node(remote_path)


func reset_position(passed_position: Vector2 = Vector2.ZERO):
	if passed_position:
		position = passed_position
	else:
		position = sprite.global_position
		waiting_for_reset = true
