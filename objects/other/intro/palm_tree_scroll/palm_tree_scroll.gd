extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var scroll


func create():
	scroll = false
	if (InLevel.is_room("credits1")):
		sprite_index = "palm_tree_dark"

	

func step():
	if (scroll): position.x += 1

	if (position.x > 320): gml.instance_destroy(self)
