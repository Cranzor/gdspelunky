extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var DESTROY
var SEARCH
var BLAST
var alerted
var shift
var shift_toggle


func animation_end():
	if (sprite_index == "ufo_blast"):

		status = DESTROY
		sprite_index = "ufo"
	

func create():
	# action_inherited
	super()

	# main_code
	type = "ufo"
	image_speed = 0.5
	Collision.set_collision_bounds(self, 4, 2, 12, 14)
	orig_x = 0
	orig_y = 0
	x_vel = 0
	y_vel = 0
	x_acc = 0.2
	y_acc = 0.2

	# DY:  stats
	hp = 1
	invincible = 0
	flying = true

	# DY:  status
	SEARCH = 0
	DESTROY = 1
	BLAST = 2

	status = SEARCH
	alerted = false

	shift = 0
	shift_toggle = gml.rand(0,1)

	shake_counter = 0
	shake_toggle = 1


func step():
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		PlatformEngine.move_to(x_vel, y_vel, self)

		if (hp < 1):

			gml.instance_create(position.x, position.y, Objects.ufo_crash)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[16] += 1
				global.ufos += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		dir = 0
		var character = gml.get_instance("character") #---[FLAG] may need to change this for multiplayer
		dist = gml.point_distance(position.x, position.y, character.position.x, character.position.y)
		if (dist < 160 and not alerted):

			alerted = true
			Audio.play_sound(global.snd_alien)


		if (status == DESTROY):
			var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
			
			y_vel = 0
			if (shift_toggle == 0): # DY:  right
		
				x_vel = 1
				shift += 1
				if (shift >= 64):
			
					shift_toggle = 1
			
		
			else:
		
				x_vel = -1
				shift -= 1
				if (shift <= -64):
			
					shift_toggle = 0
			
		
		
			if (Collision.is_collision_left(1, self)):
		
				position.x += 1
				shift_toggle = 0
				shift = -64
		
		
			if (Collision.is_collision_right(1, self)):
		
				position.x -= 1
				shift_toggle = 1
				shift = 64
		
		
			if (abs(character.position.x - (position.x+8)) < 8):
		
				status = BLAST
				Audio.play_sound(global.snd_laser_charge)
		
		
			if (player1.position.y < position.y or position.y < player1.position.y-96): status = SEARCH

		elif (status == BLAST):

			x_vel = 0
			y_vel = 0
			sprite_index = "ufo_blast"
			if (image_index == 16):
		
				gml.instance_create(position.x+8, position.y+16, Objects.laser)
				Audio.play_sound(global.snd_laser)
		

		elif (gml.instance_exists("character") and not character.swimming and not character.dead):

			if (position.y > character.position.y - 48):
		
				if (y_vel == 2): status = DESTROY
				y_vel = -2
				# DY: if (Collision.is_collision_top(1)): position.y += 2
		
			else:
		
				if (y_vel == -2): status = DESTROY
				y_vel = 2
				# DY: if (Collision.is_collision_bottom(1)): position.y -= 2
		

			if (shift_toggle == 0): # DY:  right
		
				x_vel = 1
				shift += 1
				if (shift >= 32):
			
					shift_toggle = 1
					if (character.position.x > position.x): shift = 0
			
		
			else:
		
				x_vel = -1
				shift -= 1
				if (shift <= -32):
			
					shift_toggle = 0
					if (character.position.x < position.x): shift = 0
			
		
		
			if (Collision.is_collision_left(1, self)):
		
				position.x += 1
				shift_toggle = 0
				shift = -32
		
		
			if (Collision.is_collision_right(1, self)):
		
				position.x -= 1
				shift_toggle = 1
				shift = 32
