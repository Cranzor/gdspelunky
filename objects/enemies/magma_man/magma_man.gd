extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	whipped = false


func animation_end():
	if (sprite_index == "magma_man_die"):

		gml.instance_destroy(self)
	

func collision_with_bomb():
	if (other.sprite_index != "bomb_armed"):
	
		other.sprite_index = "bomb_armed"
		other.image_speed = 1
		other.alarm_1_countdown.start(gml.rand(8,12))
	

	if (other.position.x < position.x): other.x_vel = -gml.rand(2,4)
	else: other.x_vel = gml.rand(2,4)
	if (other.position.y < position.y): other.y_vel = -gml.rand(2,4)

	if (other.held):
		var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
		if (character): character.hold_item = null


func collision_with_character():
	if (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		other.stunned = true
		other.stun_timer = 20
		other.burning = 100
		other.y_vel = -4
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
		gml.instance_create(other.position.x, other.position.y, Objects.blood)
	
		if (global.plife > 0):
	
			global.plife -= 2
			if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[21] += 1
	
		Audio.play_sound(global.snd_hurt)
		Audio.play_sound(global.snd_flame)


func collision_with_enemy():
	if (other.type != "magma man"):

		other.y_vel = -4
		if (position.x < other.position.x):
			other.x_vel = -3
		else:
			other.x_vel = 3
		if (other.status != 98): Audio.play_sound(global.snd_flame)
	
		other.burning = 100
		other.hp -= 2
		if (other.type != "tomb lord" and other.type != "yeti king"):
	
			other.status = 98
			other.counter = 50


func collision_with_whip():
	if (not whipped):

		Audio.play_sound(global.snd_hit)
		whipped = true
		alarm_0_countdown.start(10)


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 0, sprite_width-2, sprite_height)
	x_vel = 2.5
	image_speed = 0.5

	# DY:  stats
	type = "magma man"
	hp = 200
	invincible = 0

	IDLE = 0
	WALK = 1
	ATTACK = 2
	THROW = 3
	STUNNED = 98
	DEAD = 99
	status = IDLE

	whipped = false

	bounced = false
	dead = false
	counter = 0
	sight_counter = 0

	LEFT = 0
	RIGHT = 1
	facing = RIGHT

	shake_counter = 0
	shake_toggle = 1


func step():
	if (hp > 0): hp -= 1
	if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0) or hp < 1):

		x_vel = 0
		y_vel = 0
		status = DEAD
		sprite_index = "magma_man_die"


	y_vel += my_grav
	if (y_vel > y_vel_limit): y_vel = y_vel_limit

	if (Collision.is_collision_bottom(1, self)):
		y_vel = 0
	else:

		gml.instance_create(position.x+8, position.y+8, Objects.magma)
		gml.instance_destroy(self)

	#/*
	#if (status != DEAD and hp < 1):
#
		#status = DEAD
	#)
	#*/

	if (gml.rand(1,20) == 1): gml.instance_create(position.x+gml.rand(4,12), position.y+gml.rand(4,12), Objects.burn)
	burning -= 1
	
	if (status == IDLE):

		if (y_vel < 0 and Collision.is_collision_top(1, self)):
	
			y_vel = 0
	

		if (Collision.is_collision_bottom(1, self) and counter > 0): counter -= 1
		if (counter < 1):
	
			facing = gml.rand(0,1)
			status = WALK
			if (gml.rand(1,6) == 1):
		
				var magma = gml.instance_create(position.x+8, position.y+8, Objects.magma)
				magma.hp = hp
				gml.instance_destroy(self)
		
	

	elif (status == WALK):

		if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
	
			if (facing == LEFT): facing = RIGHT
			else: facing = LEFT
	
	
		if (facing == LEFT):
	
			x_vel = -1.5
			if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
		
				status = IDLE
				counter = gml.rand(20,50)
				x_vel = 0
		
	
		else:
	
			x_vel = 1.5
			if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
		
				status = IDLE
				counter = gml.rand(20,50)
				x_vel = 0
		 
	
	
		if (gml.rand(1,100) == 1):
	
			status = IDLE
			counter = gml.rand(20,50)
			x_vel = 0
	


	PlatformEngine.move_to(x_vel,y_vel, self)
	if (Collision.is_collision_solid(self)):
		position.y -= 2

	if (status < STUNNED and status != THROW):

		if (abs(x_vel) > 0): sprite_index = "magma_man_walk_l"
		else: sprite_index = "magma_man_left"
