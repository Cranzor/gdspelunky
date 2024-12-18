extends MovingSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var toggle
var BOUNCE #--- also in enemy class but will declare here since this appears to be the only non-enemy script with it


func alarm_1():
	sprite_index = "olmec_start2"
	for i in range(0, 6):

		var debris = gml.instance_create(position.x+32+gml.rand(0,32), position.y+gml.rand(0,32), Objects.olmec_debris)
		debris.x_vel = gml.rand(1,4)
		debris.y_vel = -gml.rand(1,3)

	Audio.play_sound(global.snd_thump)
	var all_hawkman_worships = gml.get_all_instances("hawkman_worship")
	for hawkman_worship_instance in all_hawkman_worships:

		var obj = gml.instance_create(hawkman_worship_instance.position.x, hawkman_worship_instance.position.y, Objects.hawkman)    
		obj.status = 98
		obj.hp = 1
		obj.x_vel = -3
		obj.y_vel = -5
		obj.counter = 300
	
		gml.instance_destroy(hawkman_worship_instance)

	var all_caveman_worships = gml.get_all_instances("caveman_worship")
	for caveman_worship_instance in all_caveman_worships:

		caveman_worship_instance.image_index = 0
		caveman_worship_instance.image_speed = 0

	alarm_2_countdown.start(50)


func alarm_2():
	sprite_index = "olmec_start3"
	alarm_3_countdown.start(50)
	for i in range(0, 6):

		var debris = gml.instance_create(position.x+gml.rand(0,32), position.y+gml.rand(0,32), Objects.olmec_debris)
		debris.x_vel = -gml.rand(1,4)
		debris.y_vel = -gml.rand(1,3)

	Audio.play_sound(global.snd_thump)

	

func alarm_3():
	sprite_index = "olmec"
	for i in range(0, 12):

		var debris = gml.instance_create(position.x+gml.rand(0,64), position.y+32+gml.rand(0,32), Objects.olmec_debris)
		debris.x_vel = gml.rand(1,4)-gml.rand(1,4)
		debris.y_vel = -gml.rand(1,3)

	Audio.play_sound(global.snd_thump)
	alarm_4_countdown.start(50)

	

func alarm_4():
	toggle = true
	status = BOUNCE
	Audio.play_sound(global.snd_big_jump)
	Audio.play_sound(global.snd_alert)
	alarm_6_countdown.start(20)

	

func alarm_5():
	view_hborder[0] = 128 #--- size of camera spacing for player
	view_vborder[0] = 64
	gml.view_xview = 0
	view_object[0] = player1
	player1.active = true
	status = 0
	counter = 100
	play_music(global.mus_boss, true)
	# DY: Audio.play_sound(global.snd_boss)

	

func alarm_6():
	var all_caveman_worships = gml.get_all_instances("caveman_worship")
	for caveman_worship_instance in all_caveman_worships:

		obj = gml.instance_create(caveman_worship_instance.position.x, caveman_worship_instance.position.y, Objects.caveman)
		obj.facing = 1
		obj.status = 2
		gml.instance_destroy(caveman_worship_instance)


func create():
	shop_wall = false
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 0, 62, 64)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	my_grav = 0.2
	invincible = true
	viscid_top = 1
	carry_player = false
	image_speed = 0.4

	LEFT = 0
	RIGHT = 1
	facing = gml.rand(0,1)

	# DY:  status
	START2 = -2
	START1 = -1
	IDLE = 0
	BOUNCE = 1
	RECOVER = 2
	WALK = 3
	DROWNING = 4
	PREPARE = 5
	SLAM = 6
	CREATE = 7
	DEAD = 99
	status = -1

	counter = 0
	bounce_counter = 0
	slammed = false

	view_hborder[0] = 0
	view_vborder[0] = 0
	gml.view_yview = 400
	view_object[0] = olmec


func step():
	# action_inherited
	super()

	# main_code
	if (carry_player or gml.collision_rectangle(position.x-1, position.y, position.x+66,  position.y+62, "player1", 0, 0)):

		player1.position.x += x_vel
		player1.position.y += y_vel

	PlatformEngine.move_to(x_vel,y_vel)

	if (y_vel < 6):

		y_vel += my_grav

	
	if (Collision.is_collision_top(1, self)):

		gml.instance_create(position.x, position.y-16, Objects.olmec_slam)
		position.y += 1
		if (y_vel < 0): y_vel = -y_vel * 0.8


	if (Collision.is_collision_left(1, self)):

		position.x += 1
		x_vel = 0
		# DY: if (x_vel < 0): x_vel = -x_vel * 0.8

	if (Collision.is_collision_right(1, self)):

		position.x -= 1
		x_vel = 0
		# DY: if (x_vel > 0): x_vel = -x_vel * 0.8


	if (gml.collision_point(position.x, position.y+64, "lava", 0, 0)): status = DROWNING

	if (gml.collision_point(position.x, position.y-2, "lava", 0, 0)):

		global.enemy_kills[21] += 1
		final_boss.olmec_dead = true
		global.kills += 1
		gml.instance_destroy(self)


	dist = gml.distance_to_object(player1) + 32


	if (gml.collision_rectangle(position.x, position.y-2, position.x+64,  position.y+64, "player1", 0, 0)): carry_player = true
	else: carry_player = false

	if (status == START1):

		if (gml.view("xview") < 176): gml.view_xview += 2
		else:
	
			alarm_1_countdown.start(100)
			status = START2
	
	
		if (Collision.is_collision_bottom(1, self)):
			y_vel = 0

	elif (status == START2):
   
		if (Collision.is_collision_bottom(1, self)):
			y_vel = 0

	elif (status == IDLE):

		if (counter > 0): counter -= 1
		if (counter == 0): status = BOUNCE
	
		if (Collision.is_collision_bottom(1, self)):
	
			y_vel = 0
	
	
		toggle = true

	elif (status == CREATE):

		for repetition in range(6):
	
			gml.instance_create(position.x+32+gml.rand(0,32)-gml.rand(0,32), position.y+14+gml.rand(0,32)-gml.rand(0,32), Objects.psychic_create2)
	
		gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
		gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
		gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
		Audio.play_sound(global.snd_psychic)
		status = IDLE

	elif (status == RECOVER):

		if (Collision.is_collision_bottom(1, self)):
	
			Audio.play_sound(global.snd_thump)
			status = IDLE
			x_vel = 0
			y_vel = 0
			counter = gml.rand(40,100)
	
		else:
	
			if (counter > 1): counter -= 1
			elif (counter == 1):
		
				if (player1.position.x < position.x): x_vel = -0.25
				elif (player1.position.x > position.x+64): x_vel = 0.25
				else: x_vel = 0
				counter -= 1
		
			else:
		
				if (x_vel < 0 and toggle): x_vel -= 0.25
				elif (x_vel < 0 and not toggle): x_vel += 0.25
				if (x_vel > 0 and toggle): x_vel += 0.25
				elif (x_vel > 0 and not toggle): x_vel -= 0.25
				if (x_vel <= -2 or x_vel >= 2): toggle = not toggle
		

			if ((not player1.active and y_vel >= 0) or
				(player1.position.y > position.y and abs(player1.position.x - (position.x+32)) < 32 and x_vel > -1)):
		
				status = PREPARE
				y_vel = 0
				x_vel = 0
				my_grav = 0
				counter = 20
		
	

	elif (status == BOUNCE):

		if (Collision.is_collision_bottom(1, self)):
	
			y_vel = -4
	
		else:
	
			counter = 10
			status = RECOVER
			Audio.play_sound(global.snd_big_jump)
	

	elif (status == PREPARE):

		if (counter > 0): counter -= 1
		else:
	
			y_vel = 5
			my_grav = 0.2
			status = SLAM
			slammed = false
	

	elif (status == SLAM):

		carry_player = false
		if (Collision.is_collision_bottom(1, self)):
	
			if (not slammed):
		
				gml.instance_create(position.x, position.y+64, Objects.olmec_slam)
				slammed = true
				InLevel.scr_shake(5)
		
			else:
		
				if (gml.rand(1,2) == 1 or not player1.active): status = IDLE
				else: status = CREATE
				x_vel = 0
				y_vel = 0
				counter = 60
				if (not player1.active): alarm_5_countdown.start(50)
		
	

	elif (status == DROWNING):

		x_vel = 0
		y_vel = 0.1
		my_grav = 0
		InLevel.scr_shake(10)
		if (not SS_IsSoundPlaying(global.snd_flame)): Audio.play_sound(global.snd_flame)


	if (Collision.is_collision_top(1, self)):
		y_vel = 1
	if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):

		x_vel = -x_vel


	if (Collision.is_collision_solid(self)):
		position.y -= 2
