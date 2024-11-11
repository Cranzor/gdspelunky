extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	# action_kill_object
	gml.instance_destroy(self)
	

func collision_with_solid():
	other.clean_death = false
	var tile = gml.tile_layer_find(3, position.x, position.y-16)
	if (tile): gml.tile_delete(tile)
	gml.instance_destroy(other)


func create():
	alarm_0_countdown.start(1)
	Audio.play_sound(global.snd_slam)
