extends Solid

func _ready():
	object_setup()


#--- Object functions
func create():
	super()
	
	if gml.room_get_name() == "intro":
		sprite_index = "desert_night2"
