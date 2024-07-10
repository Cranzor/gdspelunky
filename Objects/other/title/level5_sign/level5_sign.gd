extends DrawnSprite #--- changing this to get sprite_index

func initial_setup():
	#--- set size
	object_size = Vector2(48, 32)

	#--- set depth
	depth = -999
	z_index = depth
	
	sprite_index = "level5_sign"

func _ready():
	initial_setup()
