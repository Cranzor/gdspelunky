extends RemoteTransform2D

@onready var physics_ticks: int = Engine.get_physics_ticks_per_second()
@onready var parent: GMObject = get_parent().get_parent()
var current_pos: Vector2 = Vector2.ZERO
var last_pos: Vector2 = Vector2.ZERO
var diff: Vector2 = Vector2.ZERO


func _ready() -> void:
	set_sprite()
	reset_position()


func _physics_process(delta: float) -> void:
	if GameSettings.smooth_motion:
		if parent.get_node("Sprite").scale.x == -1:
			scale.x = -1
		else:
			if parent.object_name != "arrow_trap_test":
				scale.x = 1
		
		if parent.position != current_pos:
			last_pos = current_pos
			current_pos = parent.position
		else:
			last_pos = current_pos
			position = parent.position


func _process(delta: float) -> void:
	if GameSettings.smooth_motion:
		position += (current_pos - last_pos) * delta * physics_ticks


func set_sprite():
	remote_path = "../../Sprite"


func reset_position():
	position = parent.position
