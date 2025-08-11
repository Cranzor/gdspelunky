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

	
func step():
	if (image_index == 11):
		gml.instance_create(position.x, position.y+16, Objects.heart, self)
		var end_custom = gml.get_instance("end_custom")
		if (not end_custom.fade_out): Audio.play_sound(global.snd_kiss)
