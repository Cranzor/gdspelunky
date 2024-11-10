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
	for repetition in range(1, 6):

		var obj = gml.instance_create(position.x, position.y, Objects.spider)
		obj.x_vel = randi_range(0,3)-randi_range(0,3)
		obj.y_vel = -randi_range(1,3)

	Audio.play_sound(global.snd_thump)


func create():
	match (randi_range(1,3)):
		1:  sprite_index = "kali_head1"
		2:  sprite_index = "kali_head2"
		3:  sprite_index = "kali_head3"
