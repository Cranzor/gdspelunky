extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -998
	z_index = depth
