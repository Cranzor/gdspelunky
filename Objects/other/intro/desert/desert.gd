extends Solid

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
func create():
	solid_create()
	
	if (gml.room_get_name() == "intro"):
		sprite_index = "desert_night"
