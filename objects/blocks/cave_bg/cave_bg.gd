extends GMObject


func _ready():
	object_setup()


#--- Object functions


func create():
	if (true):
		match (randi_range(1,2)):
			1:  sprite_index = "cave_bg1"
			2:  sprite_index = "cave_bg2"
