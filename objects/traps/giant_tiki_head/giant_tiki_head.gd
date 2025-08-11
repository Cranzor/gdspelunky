extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
func alarm_0():
	sprite_index = "gth_hole"
	gml.instance_create(position.x, position.y, Objects.boulder, self)
	Audio.play_sound(global.snd_thump)
