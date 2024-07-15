extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	#--- set size
	object_size = Vector2(32, 32)

	#--- set depth
	depth = -998
	z_index = depth
