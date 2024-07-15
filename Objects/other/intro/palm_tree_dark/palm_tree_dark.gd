extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	#--- set size
	object_size = Vector2(32, 128)

	#--- set depth
	depth = -999
	z_index = depth
