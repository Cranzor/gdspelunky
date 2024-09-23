extends DrawnSprite

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
var climb_snd_toggle
const TRANSITION = 0
const ROPEDROP = 1
const LEFT = 0
const RIGHT = 0

@onready var alarm_0_timer = $Alarms/Alarm0
@onready var alarm_2_timer = $Alarms/Alarm2

@export var animated_sprite: AnimatedSprite2D

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
		if alarm_0_timer.is_stopped(): #--- [FLAG] check
			alarm_0_timer.start(float(20)/float(gml.room_speed))
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
	
		if alarm_2_timer.is_stopped():
			alarm_2_timer.start(float(8)/float(gml.room_speed))

func draw():
	#if (facing == RIGHT): image_xscale = -1
	#else: image_xscale = 1
	if has_sprite(): #--- adding this function due to how AnimatedSprite2D is set up. reference to the node has to be made after that process finishes
		if (facing == RIGHT): animated_sprite.flip_h = true
		else: animated_sprite.flip_h = false

	#draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha) #--- Not needed?

func _on_alarm_0_timeout():
	var rope = gml.instance_create(position.x+16, position.y, Objects.rope_throw)
	rope.falling = true
	rope.armed = true
	#alarm_1(50) #--- Guess this was deleted?
	status = 3
	Audio.play_sound(global.snd_throw)

func _on_alarm_2_timeout():
	if (climb_snd_toggle): Audio.play_sound(global.snd_climb1)
	else: Audio.play_sound(global.snd_climb2)
	climb_snd_toggle = not climb_snd_toggle

func has_sprite():
	if get_node("AnimatedSprite2D") == null:
		return false
	else:
		animated_sprite = get_node("AnimatedSprite2D")
		return true
