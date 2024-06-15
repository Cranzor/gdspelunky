extends Node2D

@export var object_size: Vector2
@export var depth: int

func initial_setup():
	#--- set size
	object_size = Vector2(16, 17)

	#--- set depth
	depth = -10
	z_index = depth

func _ready():
	initial_setup()

	if (gml.room_get_name() == "intro"):
		$AnimatedSprite2D.play("desert_top_night")
