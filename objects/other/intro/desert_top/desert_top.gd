extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	object_setup()


#--- Object functions
func create():
	if (gml.room_get_name() == "intro"):
		sprite_index = "desert_top_night"
