extends Solid

func initial_setup():
	#--- set size
	object_size = Vector2(32, 16)

	#--- set depth
	depth = -999
	z_index = depth
	
	$AnimatedSprite2D.play("tutorial_sign")

func _ready():
	initial_setup()
