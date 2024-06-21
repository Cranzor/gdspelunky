extends Node2D

var object_size
var depth

func initial_setup():
	#--- set size
	object_size = Vector2(144, 16)

	#--- set depth
	depth = 0
	z_index = depth
	
	$AnimatedSprite2D.play("copy")

func _ready():
	initial_setup()
