extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	image_speed = 0.5
	status = 0
	if (global.is_damsel): sprite_index = "camel_damsel"
	elif (global.is_tunnel_man): sprite_index = "camel_tunnel"


func step():
	if (status == 0):

		position.x -= 1
		if (position.x <= 160):
		
			Audio.play_music(global.mus_credits, false)
			status = 1
	

	elif (status == 1):

		position.x -= 0.01

	elif (status == 2):

		position.x -= 2


	if (InLevel.is_room("credits1") and position.x < -64):
		var credits1 = gml.get_instance("credits1")
		credits1.fade_out = true
