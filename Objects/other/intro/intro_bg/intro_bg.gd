extends Node2D

@export var object_size: Vector2
@export var depth: int

var x_off

func initial_setup():
	#--- set size
	object_size = Vector2(480, 112)

	#--- set depth
	depth = 9999
	z_index = depth
	
func _ready():
	x_off = 0

func _physics_process(delta):
	if (gml.is_room("credits1") and gml.instance_exists("camel")):
		position.x += 0.02

	elif (gml.view("xview") != 0):
		x_off -= 0.02

	position.x = gml.view("xview") + x_off
