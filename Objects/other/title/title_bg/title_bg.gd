extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(192, 80)

	#--- set depth
	#depth = -999999
	depth = -4095
	z_index = depth
	
	$AnimatedSprite2D.play("title_bg")
	#drawn_sprite_create()
	#drawn_sprite_step()

func _ready():
	initial_setup()
