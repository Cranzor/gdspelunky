extends Solid

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -100
	z_index = depth
	
	solid_create()

func _ready():
	initial_setup()
	if (gml.room_get_name() == "intro"):
		$AnimatedSprite2D.play("desert_night")
