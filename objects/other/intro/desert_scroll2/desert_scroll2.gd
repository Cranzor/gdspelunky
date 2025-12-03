extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions
var scroll


func create():
	# action_inherited
	super()

	# main_code
	scroll = false

	if (InLevel.is_room("credits1")): sprite_index = "desert_night2"


func step():
	if (scroll): position.x += 1

	if (position.x > 320): gml.instance_destroy(self)
