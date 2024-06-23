extends DrawnSprite #--- no parent, but adding DrawnSprite to get smooth movement function

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = 0
	z_index = depth
	$Node/AnimatedSprite2D.play("bat_left")

func _ready():
	initial_setup()

	status = 0
	x_vel = 0
	y_vel = 0
	y_acc = 0

func _physics_process(delta):
	#y_vel += y_acc
	#if (y_vel < 4): y_vel = 4
	position.x += x_vel
	position.y += y_vel
	
	x_velocity = x_vel
	y_velocity = y_vel

	if (status == 0):

		#if (position.x < gml.view("xview") + 320 + 16):
		if (position.x < gml.view("xview") + 480 + 24):
		
			status = 1
			x_vel = -randf_range(0, (3)) - 2
			y_vel = -randf_range(0, 1)
			y_acc = -randf_range(0, (1)) * 0.2
			Audio.play_sound(global.snd_bat)

func _process(delta):
	smooth_animated_sprite_movement(x_velocity, y_velocity, delta)
