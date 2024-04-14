extends Character

var first_level_skip
var level_skip
var sprite_index
var s_damsel_left
var s_tunnel_left
var active
var dead
var dead_counter
var stunned
var bounced
var my_grav
var fall_timer
var stun_timer
var wall_hurt
var push_timer
var whoa_timer
var whoa_timer_max
var dist_to_nearest_light_source
var bubble_timer
var bubble_timer_max
var bet
var point
var climb_snd_toggle
var walk_snd_toggle
var k_attack
var k_attack_pressed
var whipping
var cant_jump
var k_jumped
var burning
var firing
var firing_max
var firing_pistol_max
var firing_shotgun_max
var bow_armed
var bow_strength
var jetpack_fuel
var bloodless
var red_color
var red_toggle
var k_attack_released
var hold_item
var hold_item_type
var pickup_item_type
var k_item
var k_item_pressed
var k_item_released
var k_rope
var k_bomb
var k_pay
var hold_arrow
var hold_arrow_toggle
var bomb_arrow_counter
var ARROW_NORM
var ARROW_BOMB
var move_toggle
var view_count
var look_off
var p_exit
var x_start
var x_tutorial
var x_scores
var x_title
var x_end
var x_shortcut5
var x_shortcut9
var x_sun
var x_moon
var x_stars
var x_change
var x_shortcut13
var x_change2

var cape
var explosion
var state
var CLIMBING
var p_dummy5
var x_vel
var y_vel
var grav


# Called when the node enters the scene tree for the first time.
func _ready():
	print(sprite_index)
	# for debugging
	first_level_skip = 1
	level_skip = 1

	if (global.is_damsel): $Sprite2D.texture = s_damsel_left
	elif (global.is_tunnel_man): $Sprite2D.texture = s_tunnel_left

	# reset gamepad
	#/*
	#gamepad.attack_pressed = false
	#gamepad.attack = false
	#gamepad.start_pressed = false
	#gamepad.start = false
	#*/

	active = true
	dead = false
	dead_counter = 100
	stunned = false
	bounced = false
	my_grav = 0.6

	fall_timer = 0
	stun_timer = 0
	wall_hurt = 0
	push_timer = 0
	whoa_timer = 0
	whoa_timer_max = 30
	dist_to_nearest_light_source = 999

	# swimming
	bubble_timer = 0
	bubble_timer_max = 20

	# gambling
	bet = 0
	point = false

	climb_snd_toggle = false
	walk_snd_toggle = false

	k_attack = true
	k_attack_pressed = false
	whipping = false
	cant_jump = 0
	k_jumped = false
	burning = 0
	firing = 0
	firing_max = 20
	firing_pistol_max = 20
	firing_shotgun_max = 40
	bow_armed = false
	bow_strength = 0
	jetpack_fuel = 0
	bloodless = false

	 # used with Kapala
	red_color = 0
	red_toggle = false

	k_attack_released = 0
	hold_item = 0
	hold_item_type = ""
	pickup_item_type = ""
	k_item = 0
	k_item_pressed = 0
	k_item_released = 0
	k_rope = 0
	k_bomb = 0
	k_pay = 0

	hold_arrow = 0
	hold_arrow_toggle = false
	bomb_arrow_counter = 80
	ARROW_NORM = 1
	ARROW_BOMB = 2

	move_toggle = true

	view_count = 0
	look_off = 0

	p_exit = 0

	x_start = 0
	x_tutorial = 1
	x_scores = 2
	x_title = 3
	x_end = 4
	x_shortcut5 = 5
	x_shortcut9 = 6
	x_sun = 7
	x_moon = 8
	x_stars = 9
	x_change = 10
	x_shortcut13 = 11
	x_change2 = 12

	if (InLevel.is_room("r_olmec")): active = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# prevent player from dying on title screen
	if (InLevel.is_room("r_title") or InLevel.is_room("r_highscores")):

		if (global.is_tunnel_man): global.plife = 2
		else: global.plife = 4


	if (global.plife > 99): global.plife = 99
	if (global.bombs > 99): global.bombs = 99
	if (global.rope > 99): global.rope = 99

	if (global.has_cape and not gml.instance_exists(cape)): gml.instance_create(position.x, position.y, cape)

	if (gml.instance_exists(cape)):

		if (cape.open): fall_timer = 0


	# kapala
	if (red_color > 0):

		if (red_toggle): red_color -= 5
		elif (red_color < 20): red_color += 5
		else: red_toggle = true

	else: red_color = 0

	if (hold_arrow == ARROW_BOMB):

		if (bomb_arrow_counter > 0): bomb_arrow_counter -= 1
		else:
		
			gml.instance_create(position.x, position.y, explosion)
			if (global.graphics_high):
			
				MiscScripts.scr_create_flame(position.x, position.y, 3)
			
			bomb_arrow_counter = 80
			hold_arrow = 0
		
		
		if (InLevel.is_in_shop(position.x, position.y)):
		
			InLevel.scr_shopkeeper_anger(position.x, position. y, 2)
		


	# exit game from title screen
	if (InLevel.is_room("r_title") and state == CLIMBING and position.y < 32):

		if (hold_item):
		
			hold_item.held = false
			hold_item = 0
			pickup_item_type = ""
		
		gml.instance_create(position.x, position.y, p_dummy5)
		gml.instance_destroy()


	# instead of destroying the player instance when dead, we occasionally make him disappear
	# i.e. being eaten by plant
	if (dead and not visible):

		x_vel = 0
		y_vel = 0
		grav = 0
		my_grav = 0
		bounced = true


	# find distance to nearest light source, used for dark rooms
	# aka longest variable name ever
	dist_to_nearest_light_source = 999
	if (gml.instance_exists(explosion)):

		var source = gml.instance_nearest(position.x, position.y, explosion)
		dist_to_nearest_light_source = gml.distance_tobject('source', position.x, position.y)
		if (source.image_index <= 3): dist_to_nearest_light_source -= source.image_index*16
		else: dist_to_nearest_light_source += (source.image_index-3)*16

	if (gml.instance_exists('lava')):

		var source = gml.instance_nearest(position.x, position.y, 'lava')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)

	if (gml.instance_exists('lamp')):

		var source = gml.instance_nearest(position.x, position.y, 'lamp')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)

	if (gml.instance_exists('lamp_item')):

		var source = gml.instance_nearest(position.x, position.y, 'lamp_item')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)

	if (gml.instance_exists('flare_crate')):

		var source = gml.instance_nearest(position.x, position.y, 'flare_crate')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)

	if (gml.instance_exists(tiki_torch)):

		source = gml.instance_nearest(position.x, position.y, tiki_torch)
		if (gml.distance_tobject(source)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)+48

	if (gml.instance_exists(arrow_trap_left_lit)):

		source = gml.instance_nearest(position.x, position.y, arrow_trap_left_lit)
		if (gml.distance_tobject(source)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)+48

	if (gml.instance_exists(arrow_trap_right_lit)):

		source = gml.instance_nearest(position.x, position.y, arrow_trap_right_lit)
		if (gml.distance_tobject(source)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)+48

	if (gml.instance_exists(spear_trap_lit)):

		source = gml.instance_nearest(position.x, position.y, spear_trap_lit)
		if (gml.distance_tobject(source)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)+48

	if (gml.instance_exists(smash_trap_lit)):

		source = gml.instance_nearest(position.x, position.y, smash_trap_lit)
		if (gml.distance_tobject(source)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)+48

	if (gml.instance_exists(shotgun_blast_left)):

		source = gml.instance_nearest(position.x, position.y, shotgun_blast_left)
		if (gml.distance_tobject(source) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)

	if (gml.instance_exists(shotgun_blast_right)):

		source = gml.instance_nearest(position.x, position.y, shotgun_blast_right)
		if (gml.distance_tobject(source) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source)


	# WHOA
	if (sprite_index == s_whoa_left or sprite_index == s_damsel_whoa_l or sprite_index == s_tunnel_whoa_l):

		if (whoa_timer > 0): whoa_timer -= 1
		elif (hold_item):
		
			hold_item.held = false
			if (facing == LEFT): hold_item.x_vel = -2
			else: hold_item.x_vel = 2
			if (hold_item.type == "Damsel"): Audio.play_sound(global.snd_damsel)
			if (hold_item.type == "Bow" and bow_armed):
			
				scr_fire_bow()
			
			if (hold_item.type == pickup_item_type):
			
				hold_item = 0
				pickup_item_type = ""
			
			else: scr_hold_item(pickup_item_type)
		

	else: whoa_timer = whoa_timerMax

	# FIRING
	if (firing > 0): firing -= 1

	# WATER
	if (gml.collision_point(position.x, position.y, water_swim, -1, -1)):

		if (not swimming):
		
			gml.instance_create(position.x, position.y-8, splash)
			swimming = true
			Audio.play_sound(global.snd_splash)
		


	# BURNING
	if (burning > 0):

		if (randi_range(1,5) == 1): gml.instance_create(position.x-8+randi_range(4,12), position.y-8+randi_range(4,12), burn)
		burning -= 1


	# LAVA
	if (gml.collision_point(position.x, position.y+6, lava, 0, 0)):

		if (not dead):
		
			if (is_real_level()): global.misc_deaths[11] += 1
			Audio.play_sound(global.snd_flame)
		
		global.plife -= 99
		# dead = true
		x_vel = 0
		y_vel = 0.1
		grav = 0
		my_grav = 0
		bounced = true
		burning = 100
		depth = 999


	# JETPACK
	if (global.has_jetpack and platform_character_is(ON_GROUND)):

		jetpack_fuel = 50


	# fall off bottom of screen
	if (position.y > room_height + 16 and not dead):

		if (is_real_level()): global.misc_deaths[10] += 1
		global.plife -= 99
		x_vel = 0
		y_vel = 0
		grav = 0
		my_grav = 0
		bounced = true
		if (hold_item):
		
			hold_item.visible = true
			hold_item.held = false
			hold_item = 0
			pickup_item_type = ""
		
		Audio.play_sound(global.snd_thud)
		Audio.play_sound(global.snd_die)


	if (active):

		if (stun_timer > 0 and (sprite_index == s_stun_l or sprite_index == s_damsel_stun_l or sprite_index == s_tunnel_stun_l)):
		
			image_speed = 0.4
			stun_timer -= 1
		
		
		if (stun_timer < 1 and (sprite_index == s_stun_l or sprite_index == s_damsel_stun_l or sprite_index == s_tunnel_stun_l)):
			stunned = false
			
		if (gml.instance_exists(parachute)): fall_timer = 0   
		
		if (y_vel > 0 and state != CLIMBING):
		
			fall_timer += 1
			if (fall_timer > 16): wall_hurt = 0 # no sense in them taking extra damage from being thrown here
			if (global.has_parachute and not stunned and fall_timer > 14):
			
				if (not gml.collision_point(position.x, position.y+32, solid, 0, 0)):
				
					gml.instance_create(position.x-8, position.y-16, parachute)
					fall_timer = 0
					global.has_parachute = false
				
			
		
		elif (platform_character_is(ON_GROUND) and fall_timer > 16 and not collision_rectangle(position.x-8, position.y-8, position.x+8, position.y+8, spring_trap, 0, 0)): # LONG DROP
		
			# LONG DROP
			stunned = true
			if (fall_timer > 48): global.plife -= 10
			elif (fall_timer > 32): global.plife -= 2
			else: global.plife -= 1
			if (global.plife < 1):
			
				scr_create_blood(position.x, position.y, 3)
				if (is_real_level()): global.misc_deaths[3] += 1
			
			bounced = true
			stun_timer += 60
			y_vel = -3
			fall_timer = 0
			obj = gml.instance_create(position.x-4, position.y+6, poof)
			obj.x_vel = -0.4 #--- changing this as it's only referring to one instance
			obj = gml.instance_create(position.x+4, position.y+6, poof)
			obj.x_vel = 0.4 
			Audio.play_sound(global.snd_thud)
		
		else:# if (gml.collision_point(position.x, position.y+9, solid, 0, 0) or state == JUMPING or state == HANGING or state == CLIMBING or state == DUCKING):
		
			fall_timer = 0
			if (gml.instance_exists(parachute)):
			
				gml.instance_create(position.x-8, position.y-16-8, para_used)
				var all_parachutes = gml.get_all_instances("parachute")
				for parachute in all_parachutes: gml.instance_destroy()  
			
		
		
		# if (stunned): fall_timer = 0
		
		if (swimming and not gml.collision_point(position.x, position.y, lava, 0, 0)):
		
			fall_timer = 0
			if (bubble_timer > 0): bubble_timer -= 1
			else:
			
				gml.instance_create(position.x, position.y-4, bubble)
				bubble_timer = bubble_timerMax
			
		
		else:
		
			bubble_timer = bubble_timerMax
		
		
		if (state != DUCKTOHANG and not stunned and not dead and sprite_index != s_p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):
		
			bounced = false
			character_step_event()
		
		elif (state != DUCKING and state != DUCKTOHANG):
		
			state = STANDING
		


	# if (dead or stunned):
	if (dead or stunned):

		if (hold_item):
		
			if (hold_item.type == "Bow" and bow_armed):
			
				scr_fire_bow()
			
			hold_item.visible = true
			hold_item.held = false
			if (hold_item.type == pickup_item_type):
			
				hold_item = 0
				pickup_item_type = ""
			
			else: scr_hold_item(pickup_item_type)
			#hold_item = 0
			#pickup_item_type = ""
		

		if (bounced): y_vel += 1
		else: y_vel += 0.6
		
		if (is_collision_top(1) and y_vel < 0):
		
			y_vel = -y_vel * 0.8
		
		
		if (is_collision_left(1) or is_collision_right(1)):
		
			x_vel = -x_vel * 0.5
		
		
		if (is_collision_bottom(1) or is_collision_platform_bottom(1)):
		
			# bounce
			if (y_vel > 1): y_vel = -y_vel * 0.5
			else: y_vel = 0
			
			# friction
			if (abs(x_vel) < 0.1): x_vel = 0
			elif (abs(x_vel) != 0 and gml.collision_point(position.x, position.y+16, ice, 0, 0)): x_vel *= 0.8
			elif (abs(x_vel) != 0): x_vel *= 0.3
			
			bounced = true
		
		
		# apply the limits since the velocity may be too extreme
		x_velLimit = 10
		if (x_vel > x_velLimit): x_vel = x_velLimit
		elif (x_vel < -x_velLimit): x_vel = -x_velLimit
		if (y_vel > y_velLimit): y_vel = y_velLimit
		elif (y_vel < -y_velLimit): y_vel = -y_velLimit
		
		move_to(x_vel, y_vel)

	elif (is_level()): # look up and down

		if (k_down and (platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] += 4
		
		elif (k_up and (platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] -= 4
		
		else: view_count = 0

