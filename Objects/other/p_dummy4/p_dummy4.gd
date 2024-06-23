extends DrawnSprite

var climb_snd_toggle

@onready var alarm_2_timer = $Alarms/Alarm2

var player1 = preload("res://objects/player1/Player1.tscn")

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -50
	z_index = depth
	
	$Node/AnimatedSprite2D.play("run_left")
	#drawn_sprite_create()
	#drawn_sprite_step()

func _ready():
	initial_setup()
	create()
	
func _process(delta):
	smooth_animated_sprite_movement(x_velocity, y_velocity, delta)

func _physics_process(delta):
	smooth_motion_step_begin()
	step()
	smooth_motion_step_end()

func alarm_2():
	if (climb_snd_toggle): Audio.play_sound(global.snd_climb1)
	else: Audio.play_sound(global.snd_climb2)
	climb_snd_toggle = not climb_snd_toggle

func create():
	drawn_sprite_create()
	# dummy actor for title screen

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
			if alarm_2_timer.is_stopped():
				alarm_2_timer.start(8.0/30.0)
	
	
		if (position.y >= 176 + 8):
	
			position.y = 176 + 8
			var player = gml.instance_create(position.x, position.y, player1)
			player.facing = 18
			gml.instance_destroy(self)
	

	else:
		var player = gml.instance_create(position.x, position.y, player1)
		player.facing = 18
		gml.instance_destroy(self)
	
func _on_alarm_2_timeout():
	alarm_2()
