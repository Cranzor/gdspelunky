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
var s_whoa_left
var s_damsel_whoa_l
var s_tunnel_whoa_l
var facing
var LEFT
var swimming
var splash
var burn
var ON_GROUND
var s_stun_l
var s_damsel_stun_l
var s_tunnel_stun_l
var image_speed
var parachute
var poof
var para_used
var bubble
var DUCKTOHANG
var s_p_exit
var s_damsel_exit
var s_tunnel_exit
var DUCKING
var STANDING
var x_vel_limit
var y_vel_limit
var k_down
var HANGING
var k_right
var k_left
var view_yview
var k_up

var k_left_pushed_steps
var k_right_pushed_steps
var can_run
var k_run
var k_jump
var s_tunnel_attack_l
var run_held
var x_acc
var run_acc
var RIGHT
var ladder_timer
var y_acc
var climb_acc
var FALLING
var depart_ladder_x_vel
var depart_ladder_y_vel
var JUMPING
var jump_button_released
var jump_time
var IN_AIR
var gravity_intensity
var RUNNING
var jumps
var hang_count

var alarm_1_active
var alarm_2_active
var alarm_3_active
var alarm_4_active
var alarm_5_active
var alarm_6_active
var alarm_7_active
var alarm_8_active
var alarm_9_active
var alarm_10_active
var alarm_11_active

# Called when the node enters the scene tree for the first time.
func _ready():
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

	if (gml.instance_exists('tiki_torch')):

		var source = gml.instance_nearest(position.x, position.y, 'tiki_torch')
		if (gml.distance_tobject(source, position.x, position.y)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)+48

	if (gml.instance_exists('arrow_trap_left_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'arrow_trap_left_lit')
		if (gml.distance_tobject(source, position.x, position.y)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)+48

	if (gml.instance_exists('arrow_trap_right_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'arrow_trap_right_lit')
		if (gml.distance_tobject(source, position.x, position.y)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)+48

	if (gml.instance_exists('spear_trap_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'spear_trap_lit')
		if (gml.distance_tobject(source, position.x, position.y)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)+48

	if (gml.instance_exists('smash_trap_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'smash_trap_lit')
		if (gml.distance_tobject(source, position.x, position.y)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)+48

	if (gml.instance_exists('shotgun_blast_left')):

		var source = gml.instance_nearest(position.x, position.y, 'shotgun_blast_left')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)

	if (gml.instance_exists('shotgun_blast_right')):

		var source = gml.instance_nearest(position.x, position.y, 'shotgun_blast_right')
		if (gml.distance_tobject(source, position.x, position.y) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_tobject(source, position.x, position.y)


	# WHOA
	if ($Sprite2D.texture == s_whoa_left or $Sprite2D.texture == s_damsel_whoa_l or $Sprite2D.texture == s_tunnel_whoa_l):

		if (whoa_timer > 0): whoa_timer -= 1
		elif (hold_item):
		
			hold_item.held = false
			if (facing == LEFT): hold_item.x_vel = -2
			else: hold_item.x_vel = 2
			if (hold_item.type == "Damsel"): Audio.play_sound(global.snd_damsel)
			if (hold_item.type == "Bow" and bow_armed):
			
				CharacterScripts.scr_fire_bow()
			
			if (hold_item.type == pickup_item_type):
			
				hold_item = 0
				pickup_item_type = ""
			
			else: CharacterScripts.scr_hold_item(pickup_item_type)
		

	else: whoa_timer = whoa_timer_max

	# FIRING
	if (firing > 0): firing -= 1

	# WATER
	if (gml.collision_point(position.x, position.y, 'water_swim', -1, -1)):

		if (not swimming):
		
			gml.instance_create(position.x, position.y-8, splash)
			swimming = true
			Audio.play_sound(global.snd_splash)
		


	# BURNING
	if (burning > 0):

		if (randi_range(1,5) == 1): gml.instance_create(position.x-8+randi_range(4,12), position.y-8+randi_range(4,12), burn)
		burning -= 1


	# LAVA
	if (gml.collision_point(position.x, position.y+6, 'lava', 0, 0)):

		if (not dead):
		
			if (InLevel.is_real_level()): global.misc_deaths[11] += 1
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
	if (global.has_jetpack and PlatformEngine.platform_character_is(ON_GROUND)):

		jetpack_fuel = 50


	# fall off bottom of screen
	if (position.y > gml.room_height() + 16 and not dead):

		if (InLevel.is_real_level()): global.misc_deaths[10] += 1
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

		if (stun_timer > 0 and ($Sprite2D.texture == s_stun_l or $Sprite2D.texture == s_damsel_stun_l or $Sprite2D.texture == s_tunnel_stun_l)):
		
			image_speed = 0.4
			stun_timer -= 1
		
		
		if (stun_timer < 1 and ($Sprite2D.texture == s_stun_l or $Sprite2D.texture == s_damsel_stun_l or $Sprite2D.texture == s_tunnel_stun_l)):
			stunned = false
			
		if (gml.instance_exists('parachute')): fall_timer = 0
		
		if (y_vel > 0 and state != CLIMBING):
		
			fall_timer += 1
			if (fall_timer > 16): wall_hurt = 0 # no sense in them taking extra damage from being thrown here
			if (global.has_parachute and not stunned and fall_timer > 14):
			
				if (not gml.collision_point(position.x, position.y+32, solid, 0, 0)):
				
					gml.instance_create(position.x-8, position.y-16, parachute)
					fall_timer = 0
					global.has_parachute = false
				
			
		
		elif (PlatformEngine.platform_character_is(ON_GROUND) and fall_timer > 16 and not gml.collision_rectangle(position.x-8, position.y-8, position.x+8, position.y+8, 'spring_trap', 0, 0)): # LONG DROP
		
			# LONG DROP
			stunned = true
			if (fall_timer > 48): global.plife -= 10
			elif (fall_timer > 32): global.plife -= 2
			else: global.plife -= 1
			if (global.plife < 1):
			
				MiscScripts.scr_create_blood(position.x, position.y, 3)
				if (InLevel.is_real_level()): global.misc_deaths[3] += 1
			
			bounced = true
			stun_timer += 60
			y_vel = -3
			fall_timer = 0
			var obj = gml.instance_create(position.x-4, position.y+6, poof)
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
		
		if (swimming and not gml.collision_point(position.x, position.y, 'lava', 0, 0)):
		
			fall_timer = 0
			if (bubble_timer > 0): bubble_timer -= 1
			else:
			
				gml.instance_create(position.x, position.y-4, bubble)
				bubble_timer = bubble_timer_max
			
		
		else:
		
			bubble_timer = bubble_timer_max
		
		
		if (state != DUCKTOHANG and not stunned and not dead and $Sprite2D.texture != s_p_exit and $Sprite2D.texture != s_damsel_exit and $Sprite2D.texture != s_tunnel_exit):
		
			bounced = false
			character_step_event()
		
		elif (state != DUCKING and state != DUCKTOHANG):
		
			state = STANDING
		


	# if (dead or stunned):
	if (dead or stunned):

		if (hold_item):
		
			if (hold_item.type == "Bow" and bow_armed):
			
				CharacterScripts.scr_fire_bow()
			
			hold_item.visible = true
			hold_item.held = false
			if (hold_item.type == pickup_item_type):
			
				hold_item = 0
				pickup_item_type = ""
			
			else: CharacterScripts.scr_hold_item(pickup_item_type)
			#hold_item = 0
			#pickup_item_type = ""
		

		if (bounced): y_vel += 1
		else: y_vel += 0.6
		
		if (Collision.is_collision_top(1, self) and y_vel < 0):
		
			y_vel = -y_vel * 0.8
		
		
		if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
		
			x_vel = -x_vel * 0.5
		
		
		if (Collision.is_collision_bottom(1, self) or Collision.is_collision_platform_bottom(1, self)):
		
			# bounce
			if (y_vel > 1): y_vel = -y_vel * 0.5
			else: y_vel = 0
			
			# friction
			if (abs(x_vel) < 0.1): x_vel = 0
			elif (abs(x_vel) != 0 and gml.collision_point(position.x, position.y+16, 'ice', 0, 0)): x_vel *= 0.8
			elif (abs(x_vel) != 0): x_vel *= 0.3
			
			bounced = true
		
		
		# apply the limits since the velocity may be too extreme
		x_vel_limit = 10
		if (x_vel > x_vel_limit): x_vel = x_vel_limit
		elif (x_vel < -x_vel_limit): x_vel = -x_vel_limit
		if (y_vel > y_vel_limit): y_vel = y_vel_limit
		elif (y_vel < -y_vel_limit): y_vel = -y_vel_limit
		
		PlatformEngine.move_to(x_vel, y_vel, self)

	elif (InLevel.is_level()): # look up and down

		if (k_down and (PlatformEngine.platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] += 4 #--- [FLAG] GameMaker camera?
		
		elif (k_up and (PlatformEngine.platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] -= 4
		
		else: view_count = 0

func character_step_event():
	#--- Declarations at the top
	
	#/*
	#This script should be placed in the step event for the platform character.
	#It updates the keys used by the character, moves all of the solids, moves the
	#character, sets the sprite index, and sets the animation speed for the sprite.
	#*/
	var hang_count_max = 3

	###################
	# KEYS
	###################

	k_left = ControlScripts.check_left()

	if (k_left): k_left_pushed_steps += 1
	else: k_left_pushed_steps = 0
	  
	var k_left_pressed = ControlScripts.check_left_pressed()
	var k_left_released = ControlScripts.check_left_released()
	  
	k_right = ControlScripts.check_right()
	  
	if (k_right): k_right_pushed_steps += 1
	else: k_right_pushed_steps = 0
	  
	var k_right_pressed = ControlScripts.check_right_pressed()
	var k_right_released = ControlScripts.check_right_released()
	  
	k_up = ControlScripts.check_up()
	k_down = ControlScripts.check_down()
	  
	#key "run"
	if can_run:
		k_run = 0
	# k_run=run_key
	else:
		k_run=0
	  
	k_jump = ControlScripts.check_jump()
	var k_jump_pressed = ControlScripts.check_jump_pressed()
	var k_jump_released = ControlScripts.check_jump_released()
	  
	if (cant_jump > 0):

		k_jump = 0
		k_jump_pressed = 0
		k_jump_released = 0
		cant_jump -= 1

	else:

		if (global.is_tunnel_man and
			$Sprite2D.texture == s_tunnel_attack_l and
			!hold_item):
		
			k_jump = 0
			k_jump_pressed = 0
			k_jump_released = 0
			cant_jump -= 1
		


	k_attack = ControlScripts.check_attack()
	k_attack_pressed = ControlScripts.check_attack_pressed()
	k_attack_released = ControlScripts.check_attack_released()

	k_item_pressed = ControlScripts.check_item_pressed()

	var x_prev = position.x
	var y_prev = position.y

	if (stunned or dead):

		k_left = false
		k_left_pressed = false
		k_left_released = false
		k_right = false
		k_right_pressed = false
		k_right_released = false
		k_up = false
		k_down = false
		k_jump = false
		k_jump_pressed = false
		k_jump_released = false
		k_attack = false
		k_attack_pressed = false
		k_attack_released = false
		k_item_pressed = false


	#####################
	# Collisions
	#####################

	var col_solid_left = false
	var col_solid_right = false
	var col_left = false
	var col_right = false
	var col_top = false
	var col_bot = false
	var col_ladder = false
	var col_plat_bot = false
	var col_plat = false
	var col_water_top = false
	var col_ice_bot = false
	var run_key = false
	if (Collision.is_collision_moveable_solid_left(1, null)): col_solid_left = true
	if (Collision.is_collision_moveable_solid_right(1, null)): col_solid_right = true
	if (Collision.is_collision_left(1, null)): col_left = true
	if (Collision.is_collision_right(1, null)): col_right = true
	if (Collision.is_collision_top(1, null)): col_top = true
	if (Collision.is_collision_bottom(1, null)): col_bot = true
	if (Collision.is_collision_ladder(self)): col_ladder = true
	if (Collision.is_collision_platform_bottom(1, null)): col_plat_bot = true
	if (Collision.is_collision_platform(self)): col_plat = true
	if (Collision.is_collision_water_top(1, null)): col_water_top = true
	if (gml.collision_point(position.x, position.y+8, 'ice', 0, 0)): col_ice_bot = true
	if (ControlScripts.check_run()):

		run_held = 100
		run_key = true


	if (ControlScripts.check_attack() and not whipping):

		run_held += 1
		run_key = true


	if (not run_key or (not k_left and not k_right)): run_held = 0

	# allows the character to run left and right
	# if state!=DUCKING and state!=LOOKING_UP and state!=CLIMBING:
	if (state != CLIMBING and state != HANGING):

		if (k_left_released and Collision.approximately_zero(x_vel)): x_acc -= 0.5
		if (k_right_released and Collision.approximately_zero(x_vel)): x_acc += 0.5
		
		if (k_left and not k_right):
		
			if (col_solid_left):
			
				# x_vel = 3
				if (PlatformEngine.platform_character_is(ON_GROUND) and state != DUCKING):
				
					x_acc -= 1
					push_timer += 10
					#if (not SS_Is_sound_playing(global.snd_push)): play_sound(global.snd_push)
				
			
			elif (k_left_pushed_steps > 2) and (facing==LEFT or Collision.approximately_zero(x_vel)):
			
				x_acc -= run_acc
			
			facing = LEFT
			#if (PlatformEngine.platform_character_is(ON_GROUND) and abs(x_vel) > 0 and alarm[3] < 1): alarm[3] = floor(16/-x_vel)
		
	  
		if (k_right and not k_left):
		
			if (col_solid_right):
			
				# x_vel = 3
				if (PlatformEngine.platform_character_is(ON_GROUND) and state != DUCKING):
				
					x_acc += 1
					push_timer += 10
					#if (not SS_Is_sound_playing(global.snd_push)): play_sound(global.snd_push)
				
			
			elif (k_right_pushed_steps > 2 or col_solid_left) and (facing==RIGHT or Collision.approximately_zero(x_vel)):
			
				x_acc += run_acc
			
			facing = RIGHT
			#if (PlatformEngine.platform_character_is(ON_GROUND) and abs(x_vel) > 0 and alarm[3] < 1): alarm[3] = floor(16/x_vel)
		


	#/******************************************
#
	  #LADDERS
	  #
	#*******************************************/

	if (state == CLIMBING):

		if (gml.instance_exists('cape')):
		
			cape.open = false
		
		k_jumped = false
		ladder_timer = 10
		var ladder = gml.collision_point(position.x, position.y, 'ladder', 0, 0)
		if (ladder): position.x = ladder.x + 8

		if (k_left): facing = LEFT
		elif (k_right): facing = RIGHT
		if (k_up):
		
			if (gml.collision_point(position.x, position.y-8, 'ladder', 0, 0) or gml.collision_point(position.x, position.y-8, 'ladder_top', 0, 0)):
			
				y_acc -= climb_acc
				if (alarm_2_active == false): alarm_2(8)
			
		
		elif (k_down):
		
			if (gml.collision_point(position.x, position.y+8, 'ladder', 0, 0) or gml.collision_point(position.x, position.y+8, 'ladder_top', 0, 0)):
			
				y_acc += climb_acc
				if (alarm_2_active == false): alarm_2(8)
			
			else:
				state = FALLING
			if (col_bot): state = STANDING
		
		
		if (k_jump_pressed and not whipping):
		
			if (k_left):
				x_vel = -depart_ladder_x_vel
			elif (k_right):
				x_vel = depart_ladder_x_vel
			else:
				x_vel = 0
			y_acc += depart_ladder_y_vel
			state = JUMPING
			jump_button_released = 0
			jump_time = 0
			ladder_timer = 5
		

	else:

		if (ladder_timer > 0): ladder_timer -= 1


	if (PlatformEngine.platform_character_is(IN_AIR) and state != HANGING):

		y_acc += gravity_intensity


	# Player has landed
	if ((col_bot or col_plat_bot) and PlatformEngine.platform_character_is(IN_AIR) and y_vel >= 0):

		if (not col_plat or col_bot):
		
			y_vel = 0
			y_acc = 0
			state = RUNNING
			jumps = 0
		
		#play_sound(global.snd_land)

	if ((col_bot or col_plat_bot) and not col_plat): y_vel = 0

	# Player has just walked off of the edge of a solid
	if (col_bot == 0 and (not col_plat_bot or col_plat) and PlatformEngine.platform_character_is(ON_GROUND)):

		state = FALLING
		y_acc += grav
		k_jumped = true
		if (global.has_gloves): hang_count = 5


	if (col_top):

		if (dead or stunned): y_vel = -y_vel * 0.8
		elif (state == JUMPING): y_vel = abs(y_vel*0.3)


	if (col_left and facing == LEFT) or (col_right and facing == RIGHT):

		if (dead or stunned): x_vel = -x_vel * 0.5
		else: x_vel = 0


	#/******************************************
#
		#JUMPING
	  #
	#*******************************************/

	if (k_jump_released and PlatformEngine.platform_character_is(IN_AIR)):

		k_jumped = true

	elif (PlatformEngine.platform_character_is(ON_GROUND)):

		cape.open = false
		k_jumped = false


	if (k_jump_pressed and gml.collision_point(x, y, web, 0, 0)):

		obj = instance_place(x, y, web)
		obj.life -= 1
		y_acc += initial_jump_acc * 2
		y_vel -= 3
		x_acc += x_vel/2
		
		state = JUMPING
		jump_button_released = 0
		jump_time = 0
		
		grav = grav_norm

	elif (k_jump_pressed and col_water_top):

		y_acc += initial_jump_acc * 2
		y_vel -= 3
		x_acc += x_vel/2
		
		state = JUMPING
		jump_button_released = 0
		jump_time = 0
		
		grav = grav_norm

	elif (global.has_cape and k_jump_pressed and k_jumped and platform_character_is(IN_AIR)):

		if (not cape.open): cape.open = true
		else: cape.open = false

	elif (global.has_jetpack and k_jump and k_jumped and platform_character_is(IN_AIR) and jetpack_fuel > 0):

		y_acc += initial_jump_acc
		y_vel = -1
		jetpack_fuel -= 1
		if (alarm_10_active == false): alarm_10(3)
		
		state = JUMPING
		jump_button_released = 0
		jump_time = 0
		
		grav = 0

	elif (PlatformEngine.platform_character_is(ON_GROUND) and k_jump_pressed and fall_timer == 0):

		if (x_vel > 3 or x_vel < -3):
		
			y_acc += initial_jump_acc * 2
			x_acc += x_vel * 2
		
		else:
		
			y_acc += initial_jump_acc * 2
			x_acc += x_vel/2
		
		
		if (global.has_jordans):
		
			y_acc *= 3
			y_accLimit = 12
			grav = 0.5
		
		elif (global.has_spring_shoes): y_acc *= 1.5
		else:
		
			y_accLimit = 6
			grav = grav_norm
		
		
		play_sound(global.snd_jump)
		
		push_timer = 0

		# the "state" gets changed to JUMPING later on in the code
		state = FALLING
		# "variable jumping" states
		jump_button_released = 0
		jump_time = 0


	if (jump_time < jump_timeTotal): jump_time += 1
	#let the character continue to jump
	if (k_jump == 0): jump_button_released = 1
	if (jump_button_released): jump_time = jump_timeTotal

	gravity_intensity = (jump_time/jump_timeTotal) * grav

	if (k_up and platform_character_is(ON_GROUND) and not col_ladder):

		looking = UP
		if (x_vel == 0 and x_acc == 0): state = LOOKING_UP

	else: looking = 0

	if (not k_up and state == LOOKING_UP):

		state=STANDING


	#/******************************************
#
		#HANGING
	  #
	#*******************************************/

	if (not col_top):

		if (global.has_gloves and y_vel > 0):

			if (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
				(gml.collision_point(x+9, y-5, solid, 0, 0) or gml.collision_point(x+9, y-6, solid, 0, 0))):
			
				state = HANGING
				move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0
			
			elif (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
				(gml.collision_point(x-9, y-5, solid, 0, 0) or gml.collision_point(x-9, y-6, solid, 0, 0))):
			
				state = HANGING
				move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0
			

		elif (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(x+9, y-5, tree, 0, 0) or gml.collision_point(x+9, y-6, tree, 0, 0))):

			state = HANGING
			move_snap(1, 8)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(x-9, y-5, tree, 0, 0) or gml.collision_point(x-9, y-6, tree, 0, 0))):

			state = HANGING
			move_snap(1, 8)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(x+9, y-5, solid, 0, 0) or gml.collision_point(x+9, y-6, solid, 0, 0)) and
			not gml.collision_point(x+9, y-9, solid, 0, 0) and not gml.collision_point(x, y+9, solid, 0, 0)):

				state = HANGING
				move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0

		elif (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(x-9, y-5, solid, 0, 0) or gml.collision_point(x-9, y-6, solid, 0, 0)) and
			not gml.collision_point(x-9, y-9, solid, 0, 0) and not gml.collision_point(x, y+9, solid, 0, 0)):

				state = HANGING
				move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0


		if (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and state == FALLING and
			(gml.collision_point(x, y-5, arrow, 0, 0) or gml.collision_point(x, y-6, arrow, 0, 0)) and
			not gml.collision_point(x, y-9, arrow, 0, 0) and not gml.collision_point(x, y+9, arrow, 0, 0)):

			obj = instance_nearest(x, y-5, arrow)
			if (obj.stuck):
			
				state = HANGING
				# move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0
			


		#/*
		#if (hang_count == 0 and y > 16 and !platform_character_is(ON_GROUND) and state == FALLING and:
			#(gml.collision_point(x, y-5, treeBranch, 0, 0) or gml.collision_point(x, y-6, treeBranch, 0, 0)) and
			#not gml.collision_point(x, y-9, treeBranch, 0, 0) and not gml.collision_point(x, y+9, treeBranch, 0, 0))
	#
				#state = HANGING
		  ## move_snap(1, 8)
				#y_vel = 0
				#y_acc = 0
				#grav = 0
	#
		#*/



	if (hang_count > 0): hang_count -= 1

	if (state == HANGING):

		if (gml.instance_exists(cape)): cape.open = false
		k_jumped = false
		
		if (k_down and k_jump_pressed):
		
			grav = grav_norm
			state = FALLING
			y_acc -= grav
			hang_count = 5
			if (global.has_gloves): hang_count = 10
		
		elif (k_jump_pressed):
		
			grav = grav_norm
			if ((facing == RIGHT and k_left) or (facing == LEFT and k_right)):
			
				state = FALLING
				y_acc -= grav
			
			else:
			
				state = JUMPING
				y_acc += initial_jump_acc * 2
				if (facing == RIGHT): x -= 2
				else: x += 2
			
			hang_count = hang_count_max
		
		
		if ((facing == LEFT and not is_collision_left(2)) or
			(facing == RIGHT and not is_collision_right(2))):
		
			grav = grav_norm
			state = FALLING
			y_acc -= grav
			hang_count = 4
		

	else:

		grav = grav_norm


	# pressing down while standing:
	if (k_down and platform_character_is(ON_GROUND) and not whipping):

		if (col_bot):
		
			state = DUCKING
		
		elif col_plat_bot:
		
			# climb down ladder if possible:, else: jump down
			fall_timer = 0
			if (not col_bot):
			
				ladder = 0
				ladder = instance_place(x, y+16, ladder)
				if (gml.instance_exists(ladder)):
				
					if (abs(x-(ladder.x+8)) < 4):
					
						x = ladder.x + 8

						x_vel = 0
						y_vel = 0
						x_acc = 0
						y_acc = 0
						state = CLIMBING
					
				
				else:
				
					y += 1
					state = FALLING
					y_acc += grav
				
			
			else:
			
				#the character can't move down because there is a solid in the way
				state = RUNNING
			
		

	if (not k_down and state == DUCKING):

		state = STANDING
		x_vel = 0
		x_acc = 0

	if (x_vel == 0 and x_acc == 0 and state == RUNNING):

		state = STANDING

	if (x_acc != 0 and state == STANDING):

		state = RUNNING

	if (y_vel < 0 and platform_character_is(IN_AIR) and state != HANGING):

		state = JUMPING

	if (y_vel > 0 and platform_character_is(IN_AIR) and state != HANGING):

		state = FALLING
		set_collision_bounds(-5, -6, 5, 8)

	else: set_collision_bounds(-5, -8, 5, 8)

	# CLIMB LADDER
	col_point_ladder = gml.collision_point(x, y, ladder, 0, 0) or gml.collision_point(x, y, ladderTop, 0, 0)

	if ((k_up and platform_character_is(IN_AIR) and gml.collision_point(x, y-8, ladder, 0, 0) and ladder_timer == 0) or
		(k_up and col_point_ladder and ladder_timer == 0) or
		(k_down and col_point_ladder and ladder_timer == 0 and platform_character_is(ON_GROUND) and gml.collision_point(x, y+9, ladderTop, 0, 0) and x_vel == 0)):

		ladder = 0
		ladder = instance_place(x, y-8, ladder)
		if (gml.instance_exists(ladder)):
		
			if (abs(x-(ladder.x+8)) < 4):
			
				x = ladder.x + 8
				if (not gml.collision_point(x, y, ladder, 0, 0) and
					not gml.collision_point(x, y, ladderTop, 0, 0)):
				
					y = ladder.y + 14
				

				x_vel = 0
				y_vel = 0
				x_acc = 0
				y_acc = 0
				state = CLIMBING
			
		


	#/*
	#if (sprite_index == s_duck_thang_l or sprite_index == s_damsel_dt_hl):
#
		#ladder = 0
		#if (facing == LEFT and collision_rectangle(x-8, y, x, y+16, ladder, 0, 0) and not gml.collision_point(x-4, y+16, solid, 0, 0)):
		#
			#ladder = instance_nearest(x-4, y+16, ladder)
		#
		#elif (facing == RIGHT and collision_rectangle(x, y, x+8, y+16, ladder, 0, 0) and not gml.collision_point(x+4, y+16, solid, 0, 0)):
		#
			#ladder = instance_nearest(x+4, y+16, ladder)
		#
		#
		#if (ladder):
		#
			#x = ladder.x + 8
#
			#x_vel = 0
			#y_vel = 0
			#x_acc = 0
			#y_acc = 0
			#state = CLIMBING
		#
#
	#*/
	#/*
	#if (col_ladder and state == CLIMBING and k_jump_pressed and not whipping):
#
		#if (k_left):
			#x_vel = -depart_ladder_x_vel
		#elif (k_right):
			#x_vel = depart_ladder_x_vel
		#else:
			#x_vel = 0
		#y_acc += depart_ladder_y_vel
		#state = JUMPING
		#jump_button_released = 0
		#jump_time = 0
		#ladder_timer = 5
#
	#*/

	# Calculate horizontal/vertical friction
	if (state == CLIMBING):

		x_fric = friction_climbing_x
		y_fric = friction_climbing_y

	else:

		if (run_key and platform_character_is(ON_GROUND) and run_held >= 10):
		
			if (k_left): # run
			
				x_vel -= 0.1
				x_velLimit = 6
				x_fric = friction_running_fast_x
			
			elif (k_right):
			
				x_vel += 0.1
				x_velLimit = 6
				x_fric = friction_running_fast_x
			
		
		elif (state == DUCKING):
		
			if (x_vel<2 and x_vel>-2):
			
				x_fric = 0.2
				x_velLimit = 3
				image_speed = 0.8
			
			elif (k_left and global.down_trun): # run
			
				x_vel -= 0.1
				x_velLimit = 6
				x_fric = friction_running_fast_x
			
			elif (k_right and global.down_trun):
			
				x_vel += 0.1
				x_velLimit = 6
				x_fric = friction_running_fast_x
			
			else:
			
				x_vel *= 0.8
				if (x_vel < 0.5): x_vel = 0
				x_fric = 0.2
				x_velLimit = 3
				image_speed = 0.8
			
		
		else:
		
			#decrease the friction when the character is "flying"
			if (PlatformEngine.platform_character_is(IN_AIR)):
			
				if (dead or stunned): x_fric = 1.0
				else: x_fric = 0.8
			
			else:
			
				x_fric = friction_running_x
			
		
		
		# Stuck on web or underwater
		if (gml.collision_point(x, y, web, 0, 0)):
		
			x_fric = 0.2
			y_fric = 0.2
			fall_timer = 0
		
		elif (gml.collision_point(x, y, water, -1, -1)):
		
			if (gml.instance_exists(cape)): cape.open = false
		
			if (state == FALLING and y_vel > 0):
			
				y_fric = 0.5
			
			elif (not gml.collision_point(x, y-9, water, -1, -1)):
			
				y_fric = 1
			
			else:
			
				y_fric = 0.9
			
		
		else:
		
			swimming = false
			y_fric = 1
		


	if (col_ice_bot and state != DUCKING and not global.has_spike_shoes):

		x_fric = 0.98
		y_fric = 1


	# RUNNING

	if (PlatformEngine.platform_character_is(ON_GROUND)):

		if (state == RUNNING and k_left and col_left):
		
			push_timer += 1
		
		elif (state == RUNNING and k_right and col_right):
		
			push_timer += 1
		
		else:
		
			push_timer = 0
		
		
		if (PlatformEngine.platform_character_is(ON_GROUND) and not k_jump and not k_down and not run_key):
		   
			x_velLimit = 3
		
		
		
		# ledge flip
		if (state == DUCKING and abs(x_vel) < 3 and facing == LEFT and
			gml.collision_point(x, y+9, solid, 0, 0) and not gml.collision_point(x-1, y+9, solid, 0, 0) and k_left):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				hold_item.held = false
				if (hold_item.type == "Gold Idol"): hold_item.y -= 8
				scr_drop_item(-1, -4)
			
			var all_monkeys = gml.get_all_instances("monkey")
			for monkey_instance in all_monkeys:
				# knock off monkeys that grabbed you
				if (monkey_instance.status == 7):
				
					monkey_instance.x_vel = -1
					monkey_instance.y_vel = -4
					monkey_instance.status = 1
					monkey_instance.vine_counter = 20
					monkey_instance.grab_counter = 60
				
			
		
		elif (state == DUCKING and abs(x_vel) < 3 and facing == RIGHT and
			gml.collision_point(x, y+9, solid, 0, 0) and not gml.collision_point(x+1, y+9, solid, 0, 0) and k_right):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				# hold_item.held = false
				if (hold_item.type == "Gold Idol"): hold_item.y -= 8
				scr_drop_item(1, -4)
			
			
			var all_monkeys = gml.get_all_instances("monkey")
			for monkey_instance in all_monkeys:
				# knock off monkeys that grabbed you
				if (status == 7):
				
					monkey_instance.x_vel = 1
					monkey_instance.y_vel = -4
					monkey_instance.status = 1
					monkey_instance.vine_counter = 20
					monkey_instance.grab_counter = 60
				
			
		


	if (state == DUCKTOHANG):

		x = x_prev
		y = y_prev
		x_vel = 0
		y_vel = 0
		x_acc = 0
		y_acc = 0
		grav = 0


	# PARACHUTE AND CAPE
	if (gml.instance_exists(parachute)):

		y_fric = 0.5

	if (gml.instance_exists(cape)):

		if (cape.open): y_fric = 0.5


	if (push_timer > 100): push_timer = 100

	# limits the acceleration if it is too extreme:
	if (x_acc > x_accLimit): x_acc = x_accLimit
	elif (x_acc < -x_accLimit): x_acc = -x_accLimit
	if (y_acc > y_accLimit): y_acc = y_accLimit
	elif (y_acc < -y_accLimit): y_acc = -y_accLimit

	# applies the acceleration
	x_vel += x_acc
	if (dead or stunned): y_vel += 0.6
	else: y_vel += y_acc

	# nullifies the acceleration
	x_acc = 0
	y_acc = 0

	# applies the friction to the velocity, now that the velocity has been calculated
	x_vel *= x_fric
	y_vel *= y_fric

	# apply ball and chain
	if (gml.instance_exists(ball)):

		if (distance_tobject(ball) >= 24):
		
			if (x_vel > 0 and ball.x < x and abs(ball.x-x) > 24): x_vel = 0
			if (x_vel < 0 and ball.x > x and abs(ball.x-x) > 24): x_vel = 0
			if (y_vel > 0 and ball.y < y and abs(ball.y-y) > 24):
			
				if (abs(ball.x-x) < 1):
				
					x = ball.x
				
				elif (ball.x < x and not k_right):
				
					if (x_vel > 0): x_vel *= -0.25
					elif (x_vel == 0): x_vel -= 1
				
				elif (ball.x > x and not k_left):
				
					if (x_vel < 0): x_vel *= -0.25
					elif (x_vel == 0): x_vel += 1
				
				y_vel = 0
				fall_timer = 0
			
			if (y_vel < 0 and ball.y > y and abs(ball.y-y) > 24): y_vel = 0
		


	# apply the limits since the velocity may be too extreme
	if (not dead and not stunned):

		if (x_vel > x_velLimit): x_vel = x_velLimit
		elif (x_vel < -x_velLimit): x_vel = -x_velLimit

	if (y_vel > y_velLimit): y_vel = y_velLimit
	elif (y_vel < -y_velLimit): y_vel = -y_velLimit
		
	# approximates the "active" variables
	if Collision.approximately_zero(x_vel): x_vel=0
	if Collision.approximately_zero(y_vel): y_vel=0
	if Collision.approximately_zero(x_acc): x_acc=0
	if Collision.approximately_zero(y_acc): y_acc=0

	# prepares the character to move up a hill
	# we need to use the "slope_y_prev" variable later to know the "true" y previous value
	# keep this condition the same
	if max_slope>0 and platform_character_is(ON_GROUND) and x_vel!=0:

		slope_y_prev=y
		for y in range (0, slope_y_prev - max_slope, -1):
			if col_top:
				break
		slope_change_in_y=slope_y_prev-y

	else:
		slope_change_in_y=0

	# moves the character, and balances out the effects caused by other processes
	# keep this condition the same
	if max_slope*abs(x_vel)>0 and platform_character_is(ON_GROUND):

	  # we need to check if we should dampen out the speed as the character runs on upward slopes:
		x_prev=x
		y_prev=slope_y_prev       # we don't want to use y, because y is too high
		y_prevHigh=y            # we'll use the higher previous variable later
		move_to(x_vel,y_vel+slope_change_in_y)
		dist=point_distance(x_prev,y_prev,x,y)# overall distance that has been traveled
	  # we should have only ran at x_vel
		if dist>abs(x_vel_integer):
		  
			# show_message(string(dist)+ " "+string(abs(x_vel_integer)))
			excess=dist-abs(x_vel_integer)
			if(x_vel_integer<0):
				excess*=-1
			# move back since the character moved too far
			x=x_prev
			y=y_prevHigh     # we need the character to be high so the character can move down
			# this time we'll move the correct distance, but we need to shorten out the x_vel a little
			# these lines can be changed for different types of slowing down when running up hills
			ratio=abs(x_vel_integer)/dist*0.9        #can be changed
			move_to( round(x_vel_integer*ratio),round(y_velInteger*ratio+slope_change_in_y) )
	  

	else:

	  # we simply move x_vel and y_vel while in the air or on a ladder:
		move_to(x_vel,y_vel)

	# move the character downhill if possible:
	# we need to multiply max_down_slope by the absolute value of x_vel since the character normally runs at an x_vel larger than 1
	if not col_bot and max_down_slope>0 and x_vel_integer!=0 and platform_character_is(ON_GROUND):

	  #the character is floating just above the slope, so move the character down
		up_y_prev=y
		for y in range (0, up_y_prev + max_down_slope, 1):
			if col_bot:             # we hit a solid below:
				up_y_prev=y           # I know that this doesn't seem to make sense, because of the name of the variable, but it all works out correctly after we break out of this loop
				break 				  #out of this loop
		y=up_y_prev


	#figures out what the sprite index of the character should be
	character_sprite()

	#sets the previous state and the previously previous state
	state_prev_prev = state_prev
	state_prev = state

	#calculates the image_speed based on the character's velocity
	if (state == RUNNING or state == DUCKING or state == LOOKING_UP):

		if (state == RUNNING or state == LOOKING_UP): image_speed = abs(x_vel) * run_anim_speed + 0.1


	if (state == CLIMBING): image_speed = sqrt(sqr(abs(x_vel))+sqr(abs(y_vel))) * climb_anim_speed
	if (x_vel >= 4 or x_vel <= -4):

		image_speed = 1
		if (PlatformEngine.platform_character_is(ON_GROUND)): set_collision_bounds(-8, -8, 8, 8)
		else: set_collision_bounds(-5, -8, 5, 8)

	else: set_collision_bounds(-5, -8, 5, 8)
	if (whipping): image_speed = 1
	if (state == DUCKTOHANG):

		image_index = 0
		image_speed = 0.8

	#limit the image_speed at 1 so the animation always looks good
	if (image_speed > 1): image_speed = 1

func alarm_1(frames):
	pass

func alarm_2(frames):
	if alarm_2_active == false:
		if frames > 0:
			alarm_2_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			alarm_timeout(countdown_time)
			#code here
			alarm_2_active = false
			
func alarm_3(frames):
	pass

func alarm_4(frames):
	pass
	
func alarm_5(frames):
	pass
	
func alarm_6(frames):
	pass

func alarm_7(frames):
	pass

func alarm_8(frames):
	pass

func alarm_9(frames):
	pass

func alarm_10(frames):
	pass

func alarm_11(frames):
	pass

func alarm_timeout(time):
	await get_tree().create_timer(time).timeout
