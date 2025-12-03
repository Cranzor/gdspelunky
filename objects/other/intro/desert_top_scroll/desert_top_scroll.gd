extends GMObject


func _ready():
	object_setup()


#--- Object functions
var scroll


func create():
	scroll = false
	if (gml.room_get_name() == "credits1"):
		sprite_index = "desert_top_night"

	
func step():
	if (scroll): position.x += 1
	
	if (position.x > 320): gml.instance_destroy(self)
