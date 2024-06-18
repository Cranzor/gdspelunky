extends XStart

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	#depth = -999999
	depth = -4095
	z_index = depth
	
	#$AnimatedSprite2D.play("exit")
	#x_start_create()
	#x_start_step()

func _ready():
	initial_setup()
