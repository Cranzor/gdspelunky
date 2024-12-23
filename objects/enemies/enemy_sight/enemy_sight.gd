extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func collision_with_character():
	var all_cavemen = gml.get_all_instances("caveman")
	for caveman_instance in all_cavemen:

		if (gml.distance_to_object("player1", caveman_instance) < 100 and caveman_instance.status < 98):
		
			caveman_instance.status = 2
			Audio.play_sound(global.snd_alert)
	

	var all_hawkmen = gml.get_all_instances("hawkman")
	for hawkman_instance in all_hawkmen:

		if (gml.distance_to_object("player1", hawkman_instance) < 100 and hawkman_instance.status < 98):
		
			hawkman_instance.status = 2
			Audio.play_sound(global.snd_alert)
	

func collision_with_solid():
	# action_kill_object
	gml.instance_destroy(self)
	

func create():
	owner_object = 0
