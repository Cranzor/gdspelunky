extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var KISS
var SLAVE
var startled
var stun_max


func animation_end():
	if (status == YELL):

		status = IDLE
		counter = 200


	if (status == KISS):

		status = SLAVE


	if (sprite_index == "damsel_exit2" or sprite_index == "p_exit"):

		gml.instance_destroy(self)


func collision_with_whip():
	if (other.type == "machete" and hit == 0):

		hp -= other.damage
		hit = 10
		Audio.play_sound(global.snd_hit)
		Audio.play_sound(global.snd_damsel)
		if (blood_left > 0):
	 
			MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self) #---[FLAG] check division
			if (hp < 0): blood_left -= 1
	 

	elif (status != THROWN and (status < EXIT or status == SLAVE or status == KISS) and hit == 0):

		y_vel = -2
		hit = 10
		Audio.play_sound(global.snd_hit)
		Audio.play_sound(global.snd_damsel)
		if (for_sale):
	
			in_level.scr_shopkeeper_anger(3, self)


func collision_with_whip_pre():
	if (other.type == "machete" and hit == 0):

		hp -= other.damage
		hit = 10
		Audio.play_sound(global.snd_hit)
		Audio.play_sound(global.snd_damsel)
		if (blood_left > 0):
	 
			MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self) #---[FLAG] check division
			if (hp < 0): blood_left -= 1
	 

	elif (status != THROWN and (status < EXIT or status == SLAVE or status == KISS) and hit == 0):

		y_vel = -2
		hit = 10
		Audio.play_sound(global.snd_hit)
		Audio.play_sound(global.snd_damsel)
		if (for_sale):
	
			in_level.scr_shopkeeper_anger(3, self)


func create():
	# action_inherited
	super()

	# main_code
	type = "damsel"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 8)
	image_speed = 0.5
	trigger = true
	startled = false
	invincible = false
	swimming = false
	heavy = true
	cost = in_level.get_kiss_value() * 3
	if (global.is_damsel): buy_message = "I'LL LET YOU HAVE HIM FOR $" + str(cost) + "!"
	else: buy_message = "I'LL LET YOU HAVE HER FOR $" + str(cost) + "!"

	hp = 4
	blood_left = 4
	favor = 8
	sac_count = 20

	IDLE = 0
	RUN = 1
	THROWN = 2
	YELL = 3
	EXIT = 4
	SLAVE = 5
	KISS = 6
	DEAD = 99
	dead = false
	status = IDLE
	hit = 0

	facing = LEFT

	bounced = false
	burning = 0 #--- changing from "false" to 0 to prevent issues
	counter = 200
	stun_max = 120

	bomb_id = 0


func destroy():
	# action_inherited
	super()

	# main_code
	if (bomb_id):

		bomb_id.enemy_id = 0


func draw():
	if (facing == RIGHT): image_xscale = -1
	else: image_xscale = 1

	#gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)
	DrawSprite.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, animated_sprite_node)

	if (cost > 0):

		#gml.draw_sprite_ext("small_collect", cimg, position.x, position.y-12, 1, 1, 0, gml.c_white, 1, self, false)
		small_collect_draw_node.draw_sprite_ext("small_collect", cimg, position.x, position.y-12, 1, 1, 0, gml.c_white, 1, small_collect_draw_node)
		cimg += 1
		if (cimg > 9): cimg = 0


func step(): # one of seven scripts which uses 'other' outside of collision_with
	# action_inherited
	super()

	# main_code
	if (active and
		gml.collision_point(position.x, position.y, "exit", 0, 0, self) and
		hp > 0 and
		not held and
		status != THROWN):

			global.damsels_saved_total += 1
			global.damsels += 1
			global.xdamsels += 1
			var door = gml.instance_place(position.x, position.y, "exit", self)
			position.x = door.position.x+8
			position.y = door.position.y+8
			if (global.is_damsel): sprite_index = "p_exit"
			else: sprite_index = "damsel_exit2"
			status = 4
			x_vel = 0
			y_vel = 0
			Audio.play_sound(global.snd_steps)
			depth = 1000
			active = false
			can_pick_up = false


	if (sprite_index == "damsel_exit2" or sprite_index == "p_exit"):

		depth = 1000
		invincible = true


	if (hit > 0): hit -= 1

	if (gml.collision_point(position.x, position.y, "water_swim", -1, -1, self)):

		if (not swimming):
	
			gml.instance_create(position.x, position.y, Objects.splash)
			swimming = true
			Audio.play_sound(global.snd_splash)
	
		my_grav = 0.2

	else:

		swimming = false
		my_grav = 0.6


	# DY:  if damsel dies offscreen sometimes it won't trigger shopkeeper:
	if (cost > 0 and hp <= 0):

		in_level.scr_shopkeeper_anger(3, self)


	if (not invincible):

		if (gml.collision_point(position.x, position.y, "solid", 0, 0, self) and not held):
	
			MiscScripts.scr_create_blood(position.x, position.y, 3, self)
			if (hp > 0):
		
				global.damsels_killed_total += 1
				global.damsels_killed += 1
				global.kills += 1
		
			Audio.play_sound(global.snd_damsel)
			gml.instance_destroy(self)
	

		if (burning > 0):
	
			if (gml.rand(1,5) == 1): gml.instance_create(position.x+gml.rand(4,12), position.y+gml.rand(4,12), Objects.burn)
			burning -= 1
	

		if (gml.collision_point(position.x, position.y+6, "lava", 0, 0, self)):
	
			status = DEAD
			dead = true
			if (hp > 0):
		
				hp = 0
				global.damsels_killed_total += 1
		
			burning = 1
			my_grav = 0
			x_vel = 0
			y_vel = 0.1
			depth = 999
	

		if (gml.collision_point(position.x, position.y+6, "spikes", 0, 0, self) and y_vel > 2):
	
			var obj = gml.instance_place(position.x, position.y+6, "spikes", self)
			obj.sprite_index = "spikes_blood"
			if (hp > 0):
		
				MiscScripts.scr_create_blood(position.x, position.y, 3, self)
		
			if (global.is_damsel):
		
				sprite_index = "die_l"
		
			else:
		
				sprite_index = "damsel_die_l"
		
			status = DEAD
			dead = true
			if (hp > 0):
		
				hp = 0
				global.damsels_killed_total += 1
		
			my_grav = 0
			x_vel = 0
			y_vel = 0.2
	

		if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "spears_left", 0, 0, self) and
			(status != THROWN or Collision.is_collision_bottom(1, self))):
	
			var obj = gml.instance_nearest(position.x, position.y, "spears_left")
			if (obj.image_index >= 19 and obj.image_index < 28):
		
				if (held):
			
					held = false
					var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
					player1.hold_item = null
					player1.pickup_item_type = ""
			
				hp -= 2
				status = THROWN
				counter = stun_max
				y_vel = -6
				if (obj.position.x < position.x): x_vel = 4
				else: x_vel = -4
				image_speed = 0.5
				Audio.play_sound(global.snd_hit)
				gml.instance_create(other.position.x+8, other.position.y+8, Objects.blood)
		
	


	if (not held and y_vel > 2 and status != THROWN):

		status = THROWN
		SS.set_sound_pan(global.snd_damsel, 0)
		Audio.play_sound(global.snd_damsel)


	if (held):
		var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
		facing = character.facing

	elif (status == SLAVE):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if (player1.position.x < position.x): facing = LEFT
		else: facing = RIGHT
		if (global.is_damsel):
	
			sprite_index = "stand_left"
	
		else:
	
			sprite_index = "damsel_left"
	

	elif (status == KISS):

		if ((sprite_index == "damsel_kiss_l" or
			sprite_index == "p_kiss_l") and image_index == 7):
	
			if (facing == LEFT): gml.instance_create(position.x-8, position.y-8, Objects.heart)
			else: gml.instance_create(position.x+8, position.y-8, Objects.heart)
			Audio.play_sound(global.snd_kiss)
	

	elif (status == IDLE):

		if (global.is_damsel):
	
			sprite_index = "stand_left"
	
		else:
	
			sprite_index = "damsel_left"
	
		if (counter > 0): counter -= 1
		else:
	
			status = YELL
			if (global.is_damsel):
		
				sprite_index = "yell_left"
		
			else:
		
				sprite_index = "damsel_yell_l"
			
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			if (player1.position.x < position.x): SS.set_sound_pan(global.snd_damsel, -10000)
			elif (player1.position.x > position.x): SS.set_sound_pan(global.snd_damsel, 10000)
			else: SS.set_sound_pan(global.snd_damsel, 0)
			Audio.play_sound(global.snd_damsel)
	

	elif (status == YELL):

		if (image_index == 4):
	
			gml.instance_create(position.x, position.y-16, Objects.yell_help)
	

	elif (status == RUN):

		image_speed = 0.8
		if (global.is_damsel):
	
			sprite_index = "run_left"
	
		else:
	
			sprite_index = "damsel_run_l"
	
		if (facing == LEFT and Collision.is_collision_left(2, self)): facing = RIGHT
		if (facing == RIGHT and Collision.is_collision_right(2, self)): facing = LEFT
	
		if (facing == LEFT):
	
			x_vel = -1.5
	
		else:
	
			x_vel = 1.5
	

	elif (status == THROWN):

		# DY:  Collision.set_collision_bounds(self, -4, -2, 4, 2)

		if (!startled):
	
			global.damsels_grabbed += 1
			startled = true
	
	
		if (global.is_damsel):
	
			if (x_vel == 0): sprite_index = "stun_l"
			elif (bounced):
		
				if (y_vel < 0): sprite_index = "die_l_bounce"
				else: sprite_index = "die_l_fall"
		
			else:
		
				if (x_vel < 0): sprite_index = "die_ll"
				else: sprite_index = "die_lr"
		
	
		else:
	
			if (x_vel == 0): sprite_index = "damsel_stun_l"
			elif (bounced):
		
				if (y_vel < 0): sprite_index = "damsel_bounce_l"
				else: sprite_index = "damsel_fall_l"
		
			else:
		
				if (x_vel < 0): sprite_index = "damsel_die_ll"
				else: sprite_index = "damsel_die_lr"
		
	
	
		if (Collision.is_collision_bottom(1, self) and not bounced):
	
			bounced = true
	
	
		if (Collision.is_collision_bottom(2, self) or gml.collision_rectangle(position.x-4, position.y-6, position.x+4,  position.y+8, "web", 0, 0, self)):
	
			if (!dead):
		
				if (counter > 0): counter -= 1
				else: status = RUN
		
		
			if (hp <= 0):
		
				if (global.is_damsel):
			
					sprite_index = "die_l"
			
				else:
			
					sprite_index = "damsel_die_l"
			
				status = DEAD
				if (!dead):
			
					dead = true
					global.damsels_killed_total += 1
					global.damsels_killed += 1
					global.kills += 1
			
		
	


	# DY:  sacrifice
	if (status == THROWN or status == DEAD):

		if (not held and x_vel == 0 and y_vel == 0):
	
			if (gml.collision_point(position.x, position.y+8, "sac_altar_left", 0, 0, self)):
		
				if (sac_count > 0): sac_count -= 1
				else:
			
					gml.instance_create(position.x, position.y, Objects.flame)
					Audio.play_sound(global.snd_small_explode)
					MiscScripts.scr_create_blood(position.x, position.y, 3, self)
					global.message = "KALI ACCEPTS YOUR SACRIFICE!"
					if (global.favor <= -8):
				
						global.message = "KALI DEVOURS YOUR SACRIFICE!"
				
					elif (global.favor < 0):
				
						if (status == 98): global.favor += favor*1.5
						else: global.favor += favor
						if (favor > 0): favor = 0
				
					else:
				
						if (status == 98): global.favor += favor*1.5
						else: global.favor += favor
				
					MiscScripts.scr_get_favor_msg()
					global.message_timer = 200
					global.shake = 10
					gml.instance_destroy(self)
			
		
	
		else: sac_count = 20
