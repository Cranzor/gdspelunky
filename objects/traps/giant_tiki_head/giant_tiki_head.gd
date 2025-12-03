extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions
func alarm_0():
	sprite_index = "gth_hole"
	gml.instance_create(position.x, position.y, Objects.boulder, self)
	Audio.play_sound(global.snd_thump)
