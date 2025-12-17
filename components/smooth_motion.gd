extends RemoteTransform2D
class_name SmoothMotion

@onready var physics_ticks: int = Engine.get_physics_ticks_per_second()
@onready var parent: GMObject = get_parent().get_parent()
var current_pos: Vector2 = Vector2.ZERO
var last_pos: Vector2 = Vector2.ZERO
var diff: Vector2 = Vector2.ZERO
var sprite: AnimatedSprite2D
var waiting_for_reset: bool = false
var fixed_delta: float = 0.0333333333
var tween: Tween
static var paused: bool = false


func _ready() -> void:
	if parent.object_name == "arrow": #--- making an exception so that rotation works properly
		update_rotation = false

	set_sprite()
	set_initial_position()
	
	SignalBus.fps_setting_changed.connect(set_initial_position)


func update_sprite_during_tick() -> void: #--- called in gm_loop once per tick
	if tween: tween.kill()
	if GameSettings.smooth_motion:
		if parent.get_node("Sprite").scale.x == -1:
			scale.x = -1
		else:
			if parent.object_name != "arrow_trap_test":
				scale.x = 1
		
		if parent.global_position.is_equal_approx(current_pos):
			last_pos = current_pos
			position = sprite.global_position
		else:
			last_pos = current_pos
			current_pos = parent.global_position
			
			if !waiting_for_reset and !paused:
				start_sprite_movement_tween()
		
		waiting_for_reset = false


func start_sprite_movement_tween() -> void:
	tween = create_tween()
	tween.tween_property(self, "position", current_pos, fixed_delta)


func set_sprite():
	remote_path = "../../Sprite"
	sprite = get_node(remote_path)


func set_initial_position():
	position = parent.global_position
	parent.animated_sprite_node.global_position = parent.global_position
	last_pos = position
	current_pos = position
	scale.x = 1
	waiting_for_reset = true


func reset_position(passed_position: Vector2 = Vector2.ZERO):
	if GameSettings.smooth_motion:
		if passed_position:
			position = passed_position
		else:
			position = sprite.global_position
			waiting_for_reset = true
