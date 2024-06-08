extends Node2D

@export var object_size = Vector2(0, 0)
@export var depth = 0

func initial_setup():
	#--- set size
	object_size = Vector2(0, 0)

	#--- set depth
	depth = 0
	z_index = depth

	#_create()

func _ready():
	initial_setup()
	
	
	LevelGeneration.scr_setup_walls(224)
	gml.instance_destroy(self)
