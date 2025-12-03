extends GMObject


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	# action_kill_object
	gml.instance_destroy(self)
	

func collision_with_solid():
	other.clean_death = false
	#var tile = gml.tile_layer_find(3, position.x, position.y-16) #--- commenting out as relevant blocks now have CaveTop component
	#if (tile): gml.tile_delete(tile)
	if other.object_name != "olmec": #--- adding a simple exception here.
		#--- calling step objects in order causes Olmec to create this object, then game_step_event moves Olmec down, and Olmec gets destroyed as a solid.
		#--- running objects in reverse fixes this but causes issues with dark_fall platforms crushing the player.
		#--- whatever is going on seems to be a quirk in the order in which objects get called in the original engine. but the outcome should be the same here.
		gml.instance_destroy(other)


func create():
	alarm_0_countdown.start(1)
	Audio.play_sound(global.snd_slam)
