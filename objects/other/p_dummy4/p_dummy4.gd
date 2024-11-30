extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var climb_snd_toggle


func alarm_2():
	if (climb_snd_toggle): Audio.play_sound(global.snd_climb1)
	else: Audio.play_sound(global.snd_climb2)
	climb_snd_toggle = not climb_snd_toggle


func create():
	super()
	#DY: dummy actor for title screen

	image_speed = 0.6
	status = 0
	climb_snd_toggle = false

	x_vel = 0
	y_vel = 0


func step():
	position.x += x_vel
	position.y += y_vel

	if (status == 0):

		if (position.y >= 160):
	
			sprite_index = "fall_left"
			y_vel = 4
			if (y_vel < 6): y_vel += 0.2
	
		else:
	
			sprite_index = "climb_up3"
			y_vel = 2
			if (alarm_2_countdown.frames_to_count_down < 1): alarm_2_countdown.start(8)
	
	
		if (position.y >= 176 + 8):
	
			position.y = 176 + 8
			var player = gml.instance_create(position.x, position.y, Objects.player1)
			player.facing = 18
			gml.instance_destroy(self)
	

	else:
		var player = gml.instance_create(position.x, position.y, Objects.player1)
		player.facing = 18
		gml.instance_destroy(self)
