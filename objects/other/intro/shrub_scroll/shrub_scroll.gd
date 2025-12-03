extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions
var scroll


func create():
	scroll = false
	if (InLevel.is_room("credits1")):
		sprite_index = "shrub_dark"

	

func step():
	if (scroll): position.x += 1

	if (position.x > 320): gml.instance_destroy(self)
