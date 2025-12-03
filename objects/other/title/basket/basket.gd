extends GMObject


func _ready():
	object_setup()


#--- Object functions
func animation_end():
	if (sprite_index == "basket_swoosh"): sprite_index = "basket"
