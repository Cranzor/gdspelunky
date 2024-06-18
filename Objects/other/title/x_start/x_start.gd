extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -4095
	z_index = depth
	
	#$AnimatedSprite2D.play("exit")
	#drawn_sprite_create()
	#drawn_sprite_step()

func _ready():
	initial_setup()
