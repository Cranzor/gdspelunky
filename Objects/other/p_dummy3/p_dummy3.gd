extends DrawnSprite

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
var climb_snd_toggle
const TRANSITION = 0
const ROPEDROP = 1
const LEFT = 0
const RIGHT = 0

func create():
	# dummy actor for intro

	image_speed = 0.6
	climb_snd_toggle = false

	#TRANSITION = 0
	#ROPEDROP = 1
	status = 0

	y_vel = 0

	#LEFT = 0
	#RIGHT = 1
	facing = RIGHT

func step():	
	position.y += y_vel

	if (status == TRANSITION):

		if (position.x >= 904):
		
			sprite_index = "duck_left"
			status = 1
		
		else:
			position.x += 2

	elif (status == ROPEDROP):
		alarm_0_countdown.start(20)
		status += 1

	elif (status == 3):

		sprite_index = "run_left"
		if (position.x >= 920):
		
			sprite_index = "climb_up3"
			status = 4
		
		else:
			position.x += 2

	elif (status == 4):

		if (position.y >= 256):
			var intro = gml.get_instance("intro")
			intro.fade_out = true
		
		else:
		
			position.y += 2
	
		if (alarm_2_countdown.frames_to_count_down < 1): alarm_2_countdown.start(8)

func draw():
	#if (facing == RIGHT): image_xscale = -1
	#else: image_xscale = 1
	

	if (facing == RIGHT): animated_sprite_node.flip_h = true
	else: animated_sprite_node.flip_h = false

	#draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha) #--- Not needed?

func alarm_0():
	var rope = gml.instance_create(position.x+16, position.y, Objects.rope_throw)
	rope.falling = true
	rope.armed = true
	#alarm_1(50) #--- Guess this was deleted?
	status = 3
	Audio.play_sound(global.snd_throw)

func alarm_2():
	if (climb_snd_toggle): Audio.play_sound(global.snd_climb1)
	else: Audio.play_sound(global.snd_climb2)
	climb_snd_toggle = not climb_snd_toggle
