extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
func animation_end():
	if (sprite_index == "basket_swoosh"): sprite_index = "basket"
