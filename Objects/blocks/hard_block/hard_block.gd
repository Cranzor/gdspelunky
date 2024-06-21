extends Solid

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -100
	z_index = depth
	
	$AnimatedSprite2D.play("brick")
	#solid_create()
	#solid_step()

func _ready():
	initial_setup()

func create():
	solid_create()
	
	invincible = true
