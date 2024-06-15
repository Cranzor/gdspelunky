extends Node2D #--- no parent

@export var object_size: Vector2
@export var depth: int

var x_off

func initial_setup():
	#--- set size
	object_size = Vector2(96, 96)

	#--- set depth
	#depth = -99999
	depth = -4000 #--- around -4000 seems to be the negative max
	z_index = depth

func _ready():
	initial_setup()
	x_off = 0
	
func _physics_process(delta):
	if (InLevel.is_room("credits1") and gml.instance_exists("camel")):
		position.x += 0.01
		
	elif (gml.view('xview') != 0):
		x_off -= 0.01

	position.x = gml.view('xview') + 208 + x_off
