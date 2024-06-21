@tool
extends Solid

func initial_setup():
	#--- set size
	object_size = Vector2(128, 16)

	#--- set depth
	depth = -1
	z_index = depth
	
	$AnimatedSprite2D.play("title")

func _ready():
	initial_setup()
