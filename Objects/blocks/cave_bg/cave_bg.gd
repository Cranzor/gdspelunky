extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	if (true):
		match (randi_range(1,2)):
			1:  sprite_index = "cave_bg1"
			2:  sprite_index = "cave_bg2"
