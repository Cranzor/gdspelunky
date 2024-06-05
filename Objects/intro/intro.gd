extends Node2D

@export var object_size: Vector2
@export var depth: int

func initial_setup():
	#--- set size
	object_size = Vector2(0, 0)

	#--- set depth
	depth = 0
	z_index = depth

func _ready():
	initial_setup()
