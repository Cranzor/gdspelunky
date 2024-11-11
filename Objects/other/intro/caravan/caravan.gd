extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	if (global.damsels > 0):

		if (global.is_damsel): sprite_index = "caravan3"
		else: sprite_index = "caravan2"

	image_speed = 0.5
	status = 0


func step():
	if (status == 0):

		position.x -= 1
		if (position.x <= 160+64):
		
			status = 1
	

	elif (status == 1):

		position.x -= 0.01

	elif (status == 2):

		position.x -= 2


	if (position.x < -64):
		var credits2 = gml.get_instance("credits2")
		credits2.fade_out = true
