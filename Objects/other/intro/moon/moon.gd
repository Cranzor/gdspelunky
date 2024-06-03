extends Node2D #--- no parent

@export var object_size: Vector2
@export var depth: int

var x_off

func initial_setup():
	#--- set size
	object_size = Vector2(96, 96)

	#--- set depth
	depth = 99999
	z_index = depth

func _ready():
	x_off = 0
	
func _physics_process(delta):
	
