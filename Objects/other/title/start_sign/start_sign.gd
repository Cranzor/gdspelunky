extends Node2D

var object_size
var depth

func initial_setup():
	#--- set size
	object_size = Vector2(48, 32)

	#--- set depth
	depth = -999
	z_index = depth
	
	$AnimatedSprite2D.play("start_sign")

func _ready():
	initial_setup()
