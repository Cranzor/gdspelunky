extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func collision_with_sceptre():
	if (other.held):

		if (global.has_crown):
	
			other.held = false
			var all_player1s = gml.get_all_instances("player1")
			for player1_instance in all_player1s:
		
				player1_instance.hold_item = null
				player1_instance.pickup_item_type = ""
		
			gml.instance_destroy(other)
	
			Audio.play_sound(global.snd_chest_open)
			gml.instance_create(position.x, position.y, Objects.x_gold, self)
			gml.instance_destroy(self)
	
		else:
	
			global.message = "THE SCEPTRE FITS..."
			global.message2 = "BUT NOTHING IS HAPPENING!"
			global.message_timer = 100
