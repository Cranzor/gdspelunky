extends Character

func _ready():
	#move_to_test()
	object_setup()
	character_create_event()

func _physics_process(delta):
	object_tick()
	#print(position)
	#print(animated_sprite_node.position)
	
func _process(delta):
	object_process(delta)

#--- Object functions

var game #--- Temporary to solve errors. Make this an autoload

const STANDING = 10
const RUNNING = 11
const DUCKING = 12
const LOOKING_UP = 13
const CLIMBING = 14
const JUMPING = 15
const FALLING = 16
const DYING = 17
const LEFT = 18
const RIGHT = 19
const ON_GROUND = 20
const IN_AIR = 21
const ON_LADDER = 22
const HANGING = 23
const DUCKTOHANG = 24

const UP = 101
const DOWN = 102

var blink
var k_jump_pressed
var player

var first_level_skip
var level_skip


var dead_counter
var stunned = false #--- Change this back
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
var p_dummy5



var swimming
var splash
var burn



var parachute
var poof
var para_used
var bubble



var x_vel_limit
var y_vel_limit
var k_down
var k_right
var k_left
var view_yview
var k_up

var k_left_pushed_steps
var k_right_pushed_steps
var can_run
var k_run
var k_jump

var run_held
var run_acc
var ladder_timer
var climb_acc
var depart_ladder_x_vel
var depart_ladder_y_vel
var jump_button_released
var jump_time
var gravity_intensity: float
var jumps
var hang_count
var web
var initial_jump_acc
var grav_norm
var y_acc_limit
var jump_time_total
var friction_climbing_x
var friction_climbing_y
var friction_running_fast_x
var friction_running_x
var x_acc_limit
var max_slope
var x_vel_integer = 0
var y_vel_integer = 0
var max_down_slope
var state_prev_prev
var state_prev
var run_anim_speed
var climb_anim_speed

var rock

var k_bomb_pressed #--- only found in step
var k_rope_pressed #--- only found in step
var in_game #--- only found in step
var col_spikes #--- only found in step
var money #--- only found in step
var collect #--- only found in step
var k_pay_pressed  #--- only found in step

var viscid_movement_ok #--- called by game_step_event. Seems to do nothing

#------------------------------------------------------------------
 #--- only found in character_step_event
var k_left_released #--- only found in character_step_event
var k_right_released #--- only found in character_step_event
var k_jump_released #--- only found in character_step_event
var x_prev #--- only found in character_step_event
var y_prev #--- only found in character_step_event
var k_left_pressed #--- only found in character_step_event
var k_right_pressed #--- only found in character_step_event
var run_key
var col_solid_left
var col_solid_right
var col_plat_bot
var col_plat
var col_water_top
var col_ladder
var col_ice_bot
var looking
var hang_count_max
var x_fric
var y_fric
var slope_y_prev
var slope_change_in_y
var y_prev_high
#------------------------------------------------------------------

var alarm_0_active
var alarm_1_active
var alarm_2_active
var alarm_3_active
var alarm_4_active
var alarm_10_active
var alarm_11_active

var test = true
var final_x_vel = 0
var final_y_vel = 0
	
func create():
	# for debugging
	first_level_skip = 1
	level_skip = 1

	if (global.is_damsel): sprite_index = 'damsel_left'
	elif (global.is_tunnel_man): sprite_index = 'tunnel_left'

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
	hold_item = null
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

	if (InLevel.is_room("olmec")): active = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func step():
	#print('node position: ' + str(position))
	#print('sprite position: ' + str(animated_sprite.position))
	#print("final x vel: " + str(final_x_vel), " final y vel: " + str(final_y_vel))
	every_second_timer()
	#character_size_test()
	#------------------------
	
	step_function_1() #--- Miscellaneous functions related to setting player values and handling some actions
	step_function_2() #--- Related to player actions and setting relevant animations. Starting game and exiting game are also here 
	step_function_3() #--- Functions for when the player takes damage
	step_function_4() #--- Player death functions
	step_function_5() #--- Caps values for when the player blinks when damaged
	step_function_6() #--- Functions handling the player collecting various items
	
	end_step()
	draw()

func step_function_1():
	prevent_player_death()
	cap_hud_values()
	spawn_cape()
	handle_kapala()
	handle_bomb_arrows()
	exit_game_from_title()
	hide_player_on_death()
	find_nearest_light_source()
	handle_edge_leaning()
	handle_firing()
	create_water_splash()
	create_burn()
	kill_player_upon_touching_lava()
	set_jetpack_fuel()
	fall_off_bottom_of_screen()
	handle_player_active()
	handle_player_dead_or_stunned()

func prevent_player_death():
	# prevent player from dying on title screen
	if (InLevel.is_room("title") or InLevel.is_room("highscores")):

		if (global.is_tunnel_man): global.plife = 2
		else: global.plife = 4
	
func cap_hud_values():
	if (global.plife > 99): global.plife = 99
	if (global.bombs > 99): global.bombs = 99
	if (global.rope > 99): global.rope = 99
	
func spawn_cape():
	if (global.has_cape and not gml.instance_exists(cape)): gml.instance_create(position.x, position.y, cape)

	if (gml.instance_exists(cape)):

		if (cape.open): fall_timer = 0

func handle_kapala():
	# kapala
	if (red_color > 0):

		if (red_toggle): red_color -= 5
		elif (red_color < 20): red_color += 5
		else: red_toggle = true

	else: red_color = 0

func handle_bomb_arrows():
	if (hold_arrow == ARROW_BOMB):

		if (bomb_arrow_counter > 0): bomb_arrow_counter -= 1
		else:
		
			gml.instance_create(position.x, position.y, explosion)
			if (global.graphics_high):
			
				MiscScripts.scr_create_flame(position.x, position.y, 3)
			
			bomb_arrow_counter = 80
			hold_arrow = 0
		
		
		if (InLevel.is_in_shop(position.x, position.y)):
		
			InLevel.scr_shopkeeper_anger(2, self)
	
func exit_game_from_title():
	# exit game from title screen
	if (InLevel.is_room("title") and state == CLIMBING and position.y < 32):

		if (hold_item):
		
			hold_item.held = false
			hold_item = null
			pickup_item_type = ""
		
		gml.instance_create(position.x, position.y, p_dummy5)
		gml.instance_destroy(self)

func hide_player_on_death():
	# instead of destroying the player instance when dead, we occasionally make him disappear
	# i.e. being eaten by plant
	if (dead and not visible):

		x_vel = 0
		y_vel = 0
		grav = 0
		my_grav = 0
		bounced = true
	
func find_nearest_light_source():
	# find distance to nearest light source, used for dark rooms
	# aka longest variable name ever
	dist_to_nearest_light_source = 999
	if (gml.instance_exists(explosion)):

		var source = gml.instance_nearest(position.x, position.y, 'explosion')
		dist_to_nearest_light_source = gml.distance_to_object('source', self)
		if (source.image_index <= 3): dist_to_nearest_light_source -= source.image_index*16
		else: dist_to_nearest_light_source += (source.image_index-3)*16

	if (gml.instance_exists('lava')):

		var source = gml.instance_nearest(position.x, position.y, 'lava')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)

	if (gml.instance_exists('lamp')):

		var source = gml.instance_nearest(position.x, position.y, 'lamp')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)

	if (gml.instance_exists('lamp_item')):

		var source = gml.instance_nearest(position.x, position.y, 'lamp_item')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)

	if (gml.instance_exists('flare_crate')):

		var source = gml.instance_nearest(position.x, position.y, 'flare_crate')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)

	if (gml.instance_exists('tiki_torch')):

		var source = gml.instance_nearest(position.x, position.y, 'tiki_torch')
		if (gml.distance_to_object(source, self)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)+48

	if (gml.instance_exists('arrow_trap_left_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'arrow_trap_left_lit')
		if (gml.distance_to_object(source, self)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)+48

	if (gml.instance_exists('arrow_trap_right_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'arrow_trap_right_lit')
		if (gml.distance_to_object(source, self)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)+48

	if (gml.instance_exists('spear_trap_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'spear_trap_lit')
		if (gml.distance_to_object(source, self)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)+48

	if (gml.instance_exists('smash_trap_lit')):

		var source = gml.instance_nearest(position.x, position.y, 'smash_trap_lit')
		if (gml.distance_to_object(source, self)+48 < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)+48

	if (gml.instance_exists('shotgun_blast_left')):

		var source = gml.instance_nearest(position.x, position.y, 'shotgun_blast_left')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)

	if (gml.instance_exists('shotgun_blast_right')):

		var source = gml.instance_nearest(position.x, position.y, 'shotgun_blast_right')
		if (gml.distance_to_object(source, self) < dist_to_nearest_light_source):
			dist_to_nearest_light_source = gml.distance_to_object(source, self)
	
func handle_edge_leaning():
	# WHOA
	if (sprite_index == 'whoa_left' or sprite_index == 'damsel_whoa_l' or sprite_index == 'tunnel_whoa_l'):

		if (whoa_timer > 0): whoa_timer -= 1
		elif (hold_item):
		
			hold_item.held = false
			if (facing == LEFT): hold_item.x_vel = -2
			else: hold_item.x_vel = 2
			if (hold_item.type == "Damsel"): Audio.play_sound(global.snd_damsel)
			if (hold_item.type == "Bow" and bow_armed):
			
				CharacterScripts.scr_fire_bow()
			
			if (hold_item.type == pickup_item_type):
			
				hold_item = null
				pickup_item_type = ""
			
			else: CharacterScripts.scr_hold_item(pickup_item_type)
		

	else: whoa_timer = whoa_timer_max

func handle_firing():
	# FIRING
	if (firing > 0): firing -= 1

func create_water_splash():
	# WATER
	if (gml.collision_point(position.x, position.y, 'water_swim', -1, -1)):

		if (not swimming):
		
			gml.instance_create(position.x, position.y-8, splash)
			swimming = true
			Audio.play_sound(global.snd_splash)

func create_burn():
	# BURNING
	if (burning > 0):

		if (randi_range(1,5) == 1): gml.instance_create(position.x-8+randi_range(4,12), position.y-8+randi_range(4,12), burn)
		burning -= 1

func kill_player_upon_touching_lava():
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

func set_jetpack_fuel():
	# JETPACK
	if (global.has_jetpack and platform_character_is(ON_GROUND)):

		jetpack_fuel = 50

func fall_off_bottom_of_screen():
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
			hold_item = null
			pickup_item_type = ""
		
		Audio.play_sound(global.snd_thud)
		Audio.play_sound(global.snd_die)

func handle_player_active():
	if (active):

		if (stun_timer > 0 and (sprite_index == 'stun_l' or sprite_index == 'damsel_stun_l' or sprite_index == 'tunnel_stun_l')):
		
			image_speed = 0.4
			stun_timer -= 1
		
		
		if (stun_timer < 1 and (sprite_index == 'stun_l' or sprite_index == 'damsel_stun_l' or sprite_index == 'tunnel_stun_l')):
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
				
			
		
		elif (platform_character_is(ON_GROUND) and fall_timer > 16 and not gml.collision_rectangle(position.x-8, position.y-8, position.x+8, position.y+8, 'spring_trap', 0, 0)): # LONG DROP
		
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
			var obj = gml.instance_create(position.x-4, position.y+6, Objects.poof)
			obj.x_vel = -0.4 #--- changing this as it's only referring to one instance
			obj = gml.instance_create(position.x+4, position.y+6, Objects.poof)
			obj.x_vel = 0.4
			Audio.play_sound(global.snd_thud)
		
		else:# if (gml.collision_point(position.x, position.y+9, solid, 0, 0) or state == JUMPING or state == HANGING or state == CLIMBING or state == DUCKING):
		
			fall_timer = 0
			if (gml.instance_exists(parachute)):
			
				gml.instance_create(position.x-8, position.y-16-8, para_used)
				var all_parachutes = gml.get_all_instances("parachute")
				for parachute in all_parachutes: gml.instance_destroy(parachute)
			
		
		
		# if (stunned): fall_timer = 0
		
		if (swimming and not gml.collision_point(position.x, position.y, 'lava', 0, 0)):
		
			fall_timer = 0
			if (bubble_timer > 0): bubble_timer -= 1
			else:
			
				gml.instance_create(position.x, position.y-4, bubble)
				bubble_timer = bubble_timer_max
			
		
		else:
		
			bubble_timer = bubble_timer_max
		
		
		if (state != DUCKTOHANG and not stunned and not dead and sprite_index != 'p_exit' and sprite_index != 'damsel_exit' and sprite_index != 'tunnel_exit'):
		
			bounced = false
			character_step_event()
		
		elif (state != DUCKING and state != DUCKTOHANG):
		
			state = STANDING

func handle_player_dead_or_stunned():
	# if (dead or stunned):
	if (dead or stunned):

		if (hold_item):
		
			if (hold_item.type == "Bow" and bow_armed):
			
				CharacterScripts.scr_fire_bow()
			
			hold_item.visible = true
			hold_item.held = false
			if (hold_item.type == pickup_item_type):
			
				hold_item = null
				pickup_item_type = ""
			
			else: CharacterScripts.scr_hold_item(pickup_item_type)
			#hold_item = null
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
		
		move_to(x_vel, y_vel)

	elif (InLevel.is_level()): # look up and down

		if (k_down and (platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] += 4 #--- [FLAG] GameMaker camera?
		
		elif (k_up and (platform_character_is(ON_GROUND) or state == HANGING) and not k_right and not k_left):
		
			if (view_count <= 30): view_count += 1
			else: view_yview[0] -= 4
		
		else: view_count = 0

func step_function_2():
#Action
	check_attack_button_on_death()
	check_bomb_pressed()
	check_rope_pressed()
	check_pay_pressed()
	start_weapon_animation()
	start_weapon_pre_animation()
	delete_whip_instances_when_not_whipping()
	handle_item_stealing()
	handle_chest_opening()
	handle_crate_opening()
	handle_flare_crate_opening()
	start_game()
	exit_level()
	game_over()
	set_in_game_status()
	bomb_rope_and_whipping_handling() #--- Also handles picking up items and attacking with items
	handle_shop_behavior() #--- Purchasing and games etc. (different shop types)
	handle_bow()

func check_attack_button_on_death():
	if (dead):
		k_attack_pressed = ControlScripts.check_attack_pressed()
	
func check_bomb_pressed():
	if (global.plife > 0): k_bomb_pressed = ControlScripts.check_bomb_pressed()
	else: k_bomb_pressed = false
	
func check_rope_pressed():
	if (global.plife > 0): k_rope_pressed = ControlScripts.check_rope_pressed()
	else: k_rope_pressed = false
	
func check_pay_pressed():
	k_pay_pressed = ControlScripts.check_pay_pressed()
	# k_flare_pressed = check_flare_pressed()
	
func start_weapon_animation():
	if ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == LEFT and image_index > 4 and gml.instance_number('whip') == 0):

		if (hold_item):
		
			if (hold_item.type == "Machete"):
			
				var obj = gml.instance_create(position.x-16, position.y, "slash")
				obj.sprite_index = "slash_left"
				Audio.play_sound(global.snd_whip)
			
			elif (hold_item.type == "Mattock"):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_hit")
				obj.sprite_index = "mattock_hit_l"
				Audio.play_sound(global.snd_whip)
			
		
		else:
		
			if (global.is_tunnel_man):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_hit")
				obj.sprite_index = "mattock_hit_l"
				Audio.play_sound(global.snd_whip)
			
			else:
			
				var obj = gml.instance_create(position.x-16, position.y, Objects.whip)
				obj.sprite_index = "whip_left"
				Audio.play_sound(global.snd_whip)
			
		

	elif ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == RIGHT and image_index > 4 and gml.instance_number('whip') == 0):

		if (hold_item):
		
			if (hold_item.type == "Machete"):
			
				var obj = gml.instance_create(position.x+16, position.y, "slash")
				obj.sprite_index = "slash_right"
				Audio.play_sound(global.snd_whip)
			
			elif (hold_item.type == "Mattock"):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_hit")
				obj.sprite_index = "mattock_hit_r"
				Audio.play_sound(global.snd_whip)
			
		
		else:
		
			if (global.is_tunnel_man):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_hit")
				obj.sprite_index = "mattock_hit_r"
				Audio.play_sound(global.snd_whip)
			
			else:
			
				var obj = gml.instance_create(position.x+16, position.y, Objects.whip)
				obj.sprite_index = "whip_right"
				Audio.play_sound(global.snd_whip)
	
func start_weapon_pre_animation():
	if (hold_item):

		if (hold_item.type == "Machete"):
		
			if ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == LEFT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x+16, position.y, "machete_pre")
				obj.sprite_index = "machete_pre_l"
			
			elif ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == RIGHT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x-16, position.y, "machete_pre")
				obj.sprite_index = "machete_pre_r"
			
		
		elif (hold_item.type == "Mattock"):
		
			if ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == LEFT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_pre")
				obj.sprite_index = "mattock_pre_l"
			
			elif ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == RIGHT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_pre")
				obj.sprite_index = "mattock_pre_r"
			
		

	elif (sprite_index == "tunnel_attack_l" and image_index < 2 and gml.instance_number('mattock_pre') == 0):

		if (facing == LEFT):
		
			var obj = gml.instance_create(position.x+16, position.y, "mattock_pre")
			obj.sprite_index = "mattock_pre_l"
		
		else:
		
			var obj = gml.instance_create(position.x-16, position.y, "mattock_pre")
			obj.sprite_index = "mattock_pre_r"
		

	elif ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == LEFT and image_index < 2 and gml.instance_number('whip_pre') == 0):

		var obj = gml.instance_create(position.x+16, position.y, Objects.whip_pre)
		obj.sprite_index = "whip_pre_l"

	elif ((sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l") and facing == RIGHT  and image_index < 2 and gml.instance_number('whip_pre') == 0):

		var obj = gml.instance_create(position.x-16, position.y, Objects.whip_pre)
		obj.sprite_index = "whip_pre_r"
	
func delete_whip_instances_when_not_whipping():
	if (not whipping):

		var all_whips = gml.get_all_instances("whip")
		for whip_instance in all_whips: gml.instance_destroy(whip_instance)
		
		var all_whip_pres = gml.get_all_instances("whip_pre")
		for whip_pre_instance in all_whip_pres: gml.instance_destroy(whip_pre_instance)
	
func handle_item_stealing():
	#if (hold_item > 0): #---changing 0 to null
	if (hold_item != null):

		if (hold_item.cost > 0 and InLevel.is_level()):
		
			if (global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] != 4 and global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] != 5):
			
				CharacterScripts.scr_steal_item()
				if (gml.instance_exists("shopkeeper")):
				
					InLevel.scr_shopkeeper_anger(0, self)
				
			
		
		elif (hold_item.cost > 0):
		
			CharacterScripts.scr_steal_item()
	
func handle_chest_opening():
	# open chest
	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "chest", 0, 0)):

		if (InLevel.is_real_level()): global.total_chests += 1
		var chest_instance = gml.instance_place(position.x, position.y, 'chest', self)
		if (chest_instance.sprite_index == "chest"):
		
			chest_instance.sprite_index = "chest_open"
			if (randi_range(1,12) == 1 and global.curr_level > 0):
			
				var obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bomb")
				obj.x_vel = randi_range(0,3) - randi_range(0,3)
				obj.y_vel = -2
				obj.sprite_index = "bomb_armed"
				obj.alarm_1(40) #--- this may need to be checked (uses 'with' in original code. but this should work)
				
				Audio.play_sound(global.snd_trap)
			
			else:
				var obj
				Audio.play_sound(global.snd_chest_open)
				for i in range(0, randi_range(3,4)):

					var n = randi_range(1,3)
					match (n):
						1:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "emerald")
						2:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "sapphire")
						3:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "ruby")
					
					obj.x_vel = randi_range(0,3) - randi_range(0,3)
					obj.y_vel = -2
				
				if (randi_range(1,4) == 1):
				
					var n = randi_range(1,3)
					match (n):
					
						1:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "emerald_big")
						2:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "sapphire_big")
						3:  obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "ruby_big")
					
					obj.x_vel = randi_range(0,3) - randi_range(0,3)
					obj.y_vel = -2
			
			
			k_attack_pressed = false
	
func handle_crate_opening():
	# open crate
	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "crate", 0, 0)):
		var obj
		if (InLevel.is_real_level()): global.total_crates += 1
		var chest_instance = gml.instance_place(position.x, position.y, 'crate', self)
		if (InLevel.is_room("r_tutorial")): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bomb_bag")
		elif (randi_range(1,500) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "jetpack")
		elif (randi_range(1,200) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "cape_pickup")
		elif (randi_range(1,100) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "shotgun")
		elif (randi_range(1,100) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "mattock")
		elif (randi_range(1,100) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "teleporter")
		elif (randi_range(1,90) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "gloves")
		elif (randi_range(1,90) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "spectacles")
		elif (randi_range(1,80) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "web_cannon")
		elif (randi_range(1,80) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "pistol")
		elif (randi_range(1,80) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "mitt")
		elif (randi_range(1,60) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "paste")
		elif (randi_range(1,60) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "spring_shoes")
		elif (randi_range(1,60) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "spike_shoes")
		elif (randi_range(1,60) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "machete")
		elif (randi_range(1,40) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bomb_box")
		elif (randi_range(1,40) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bow")
		elif (randi_range(1,20) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "compass")
		elif (randi_range(1,10) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "para_pickup")
		elif (randi_range(1,2) == 1): obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "rope_pile")
		else: obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bomb_bag")
		obj.cost = 0
		Audio.play_sound(global.snd_pickup)
		if (chest_instance == hold_item):
			
			hold_item = null
			pickup_item_type = ""
			
		chest_instance.gml.instance_create(position.x, position.y, "poof")
		chest_instance.gml.instance_destroy(chest_instance)
			
		k_attack_pressed = false
	
func handle_flare_crate_opening():
	# open flare crate

	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "flare_crate", 0, 0)):

		var chest_instance = gml.instance_place(position.x, position.y, 'flare_crate', self)
		for i in range (0, 3):
		
			var obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "flare")
			obj.x_vel = randi_range(0,3)-randi_range(0,3)
			obj.y_vel = randi_range(1,3)*-1
		
		Audio.play_sound(global.snd_pickup)
		if (chest_instance == hold_item):
		
			hold_item = null
			pickup_item_type = ""
		
		chest_instance.gml.instance_create(position.x, position.y, "poof")
		chest_instance.gml.instance_destroy()
		
		k_attack_pressed = false
	
func start_game():
	# start game
	#
	if (not dead and
		not stunned and
		not whipping and
		gml.collision_point(position.x, position.y, "x_start", 0, 0) and
		k_up and
		platform_character_is(ON_GROUND) and
		sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):

		# x_end is the child of x_start, for some reason, that's why this is here:
		if (InLevel.is_room("r_olmec") and hold_item):
		
			if (hold_item.heavy):
			
				hold_item.held = false
				hold_item = null
				pickup_item_type = ""
			
			elif (hold_item.type == "Bomb"):
			
				if (hold_item.armed):
				
					hold_item.held = false
				
				else:
				
					global.bombs += 1
					hold_item.gml.instance_destroy()
				
				
				global.pickup_item = pickup_item_type
			
			elif (hold_item.type == "Rope"):
			
				global.rope += 1
				hold_item.gml.instance_destroy()
				
				global.pickup_item = pickup_item_type
			
			else:
			
				global.pickup_item = hold_item.type
				hold_item.break_pieces = false
				hold_item.gml.instance_destroy(hold_item)
				
			
		
		elif (InLevel.is_room("r_olmec")): global.pickup_item = ""
		elif (hold_item): hold_item.held = false
		hold_item = null
		pickup_item_type = ""

		var door = gml.instance_place(position.x, position.y, 'x_start', self)
		if (door): position.x = door.position.x + 8
		if (global.is_damsel): sprite_index = "damsel_exit"
		elif (global.is_tunnel_man): sprite_index = "tunnel_exit"
		else: sprite_index = "p_exit"
		image_speed = 0.5
		active = false
		depth = 999
		invincible = 999
		
		p_exit = x_start
		if (gml.collision_point(position.x, position.y, "x_scores", 0, 0)): p_exit = x_scores
		elif (gml.collision_point(position.x, position.y, "x_tutorial", 0, 0)): p_exit = x_tutorial
		elif (gml.collision_point(position.x, position.y, "x_title", 0, 0)): p_exit = x_title
		elif (gml.collision_point(position.x, position.y, "x_end", 0, 0)): p_exit = x_end
		elif (gml.collision_point(position.x, position.y, "x_shortcut5", 0, 0)): p_exit = x_shortcut5
		elif (gml.collision_point(position.x, position.y, "x_shortcut9", 0, 0)): p_exit = x_shortcut9
		elif (gml.collision_point(position.x, position.y, "x_shortcut13", 0, 0)): p_exit = x_shortcut13
		elif (gml.collision_point(position.x, position.y, "x_sun", 0, 0)): p_exit = x_sun
		elif (gml.collision_point(position.x, position.y, "x_moon", 0, 0)): p_exit = x_moon
		elif (gml.collision_point(position.x, position.y, "x_stars", 0, 0)): p_exit = x_stars
		elif (gml.collision_point(position.x, position.y, "x_change", 0, 0)): p_exit = x_change
		elif (gml.collision_point(position.x, position.y, "x_change2", 0, 0)): p_exit = x_change2
		
		if (p_exit != x_change2): Audio.stop_all_music()
		
		Audio.play_sound(global.snd_steps)
	
func exit_level():
	# exit level
	#
	if (not dead and
		not stunned and
		not whipping and
		gml.collision_point(position.x, position.y, "exit", 0, 0) and
		k_up and
		platform_character_is(ON_GROUND) and
		sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):

		hold_arrow = 0
		global.pickup_item = ""
		if (hold_item):
		
			if (hold_item.type == "gold idol"):
			
				if (InLevel.is_real_level()): global.idols_converted += 1
				global.money += hold_item.value*(global.level_type+1)
				if (hold_item.sprite_index == "crystal_skull"): global.skulls += 1
				else: global.idols += 1
				Audio.play_sound(global.snd_coin)
				gml.instance_create(position.x, position.y-8, "big_collect")
				hold_item.gml.instance_destroy(hold_item)
				hold_item = null
			
			elif (hold_item.type == "damsel"):
			
				if (hold_item.hp > 0):
				
					# global.plife += 1
					if (InLevel.is_real_level()): global.damsels_saved_total += 1
					global.damsels += 1
					global.xdamsels += 1
					var door = gml.instance_place(position.x, position.y, 'exit', self)
					hold_item.position.x = door.position.x+8
					hold_item.position.y = door.position.y+8
					
					if (global.is_damsel): hold_item.sprite_index = "p_exit"
					else: hold_item.sprite_index = "damsel_exit"
					hold_item.status = 4
					hold_item.held = false
					hold_item.x_vel = 0
					hold_item.y_vel = 0
					hold_item.Audio.play_sound(global.snd_steps)
					hold_item.depth = 1000
					hold_item.active = false
					
					hold_item = null
				
				else:
				
					hold_item.status = 2
					hold_item.held = false
					hold_item = null
					pickup_item_type = ""
				
			
			elif (hold_item.heavy):
			
				hold_item.held = false
				hold_item = null
				pickup_item_type = ""
			
			elif (hold_item.type == "bomb"):
			
				if (hold_item.armed):
				
					hold_item.held = false
				
				else:
				
					global.bombs += 1
					hold_item.gml.instance_destroy(hold_item)
				
				
				global.pickup_item = pickup_item_type
			
			elif (hold_item.type == "rope"):
			
				global.rope += 1
				hold_item.gml.instance_destroy(hold_item)
				
				global.pickup_item = pickup_item_type
			
			else:
			
				global.pickup_item = hold_item.type
				hold_item.break_pieces = false
				hold_item.gml.instance_destroy()
				
			
			hold_item = null
			pickup_item_type = ""
		

		var door = gml.instance_place(position.x, position.y, 'exit', self)
		if (door):
		
			position.x = door.position.x + 8
			position.y = door.position.y + 8
		
		
		# money
		global.money += global.collect
		global.xmoney += global.collect
		global.collect = 0
		
		if (global.is_damsel): sprite_index = "damsel_exit"
		elif (global.is_tunnel_man): sprite_index = "tunnel_exit"
		else: sprite_index = "p_exit"
		image_speed = 0.5
		active = false
		invincible = 999
		depth = 999
		if (global.thief_level > 0): global.thief_level -= 1
		if (global.curr_level == 1): global.curr_level += first_level_skip
		else: global.curr_level += level_skip
		Audio.stop_all_music()
		Audio.play_sound(global.snd_steps)
		if (gml.collision_point(position.x, position.y, "x_market", 0, 0)): global.gen_black_market = true
		if (gml.collision_point(position.x, position.y, "x_gold", 0, 0)): global.city_of_gold = true
		var obj = gml.collision_point(position.x, position.y, "exit", 0, 0)
		if (obj):
		
			if (obj.leads_to != ""):
			
				global.next_custom_level = obj.leads_to
			
		
		var all_monkeys = gml.get_all_instances("monkey")
		for monkey_instance in all_monkeys:
			# knock off monkeys that grabbed you
			if (monkey_instance.status == 7):
			
				monkey_instance.x_vel = randi_range(0,1)-randi_range(0,1)
				monkey_instance.y_vel = -4
				monkey_instance.status = 1
				monkey_instance.vine_counter = 20
				monkey_instance.grab_counter = 60
	
func game_over():
	# Game Over
	#
	if ((ControlScripts.check_attack_pressed() or ControlScripts.check_start_pressed()) and dead):

		if (game.money_count < global.money or game.draw_status < 3):
		
			game.draw_status = 3
			game.money_count = global.money
		
		else:
		
			# Stats!
			if (InLevel.is_real_level()): global.level_deaths[global.curr_level-1] += 1
		
			#if (gamepad.attack_pressed): gamepad.attack_pressed = false --- [FLAG] Come back and check if these causes any issues
			#if (gamepad.start_pressed): gamepad.start_pressed = false --- [FLAG] this line too
			global.prev_custom_level = ""
			if (global.test_level != ""):
			
				MiscScripts.scr_clear_globals()
				get_tree().change_scene("res://r_level_editor.tscn")
			
			elif (global.custom_level):
			
				MiscScripts.scr_clear_globals()
				global.custom_level = false
				get_tree().change_scene("res://r_load_level.tscn")
			
			else:
			
				MiscScripts.scr_clear_globals()
				if (InLevel.is_room("r_sun")): global.scores_start = 1
				if (InLevel.is_room("r_moon")): global.scores_start = 2
				if (InLevel.is_room("r_stars")): global.scores_start = 3
				get_tree().change_scene("res://r_highscores.tscn")
	
func set_in_game_status():
	in_game = true
	if (not InLevel.is_level()):

		in_game = false
	
func bomb_rope_and_whipping_handling(): #--- Also handles picking up items and attacking with items
	if (dead or stunned or not active):

		# do nothing
		pass

	elif (in_game and k_item_pressed and not whipping):
	   
		# match items
		if (hold_item):
		
			if (hold_item.sprite_index == "bomb_armed"):
			
				# do nothing
				pass
			
			elif (hold_item.sprite_index == "bomb"):
				
				hold_item.global.bombs += 1 #--- Double-check if this works
				hold_item.gml.instance_destroy(hold_item)
				
				
				if (global.rope > 0):
				
					hold_item = gml.instance_create(position.x, position.y, "rope_throw")
					hold_item.held = true
					global.rope -= 1
					whoa_timer = whoa_timer_max
				
				else:
				
					CharacterScripts.scr_hold_item(pickup_item_type)
				
			
			elif (hold_item.sprite_index == "rope_end"):
				
				hold_item.global.rope += 1
				hold_item.gml.instance_destroy(hold_item)
				
				
				CharacterScripts.scr_hold_item(pickup_item_type)
			
			elif (not hold_item.heavy and hold_item.cost == 0):
			
				if (global.bombs > 0 or global.rope > 0):
				
					pickup_item_type = hold_item.type
					if (hold_item.type == "Bow" and bow_armed):
					
						CharacterScripts.scr_fire_bow()
					
					hold_item.break_pieces = false
					hold_item.gml.instance_destroy(hold_item)
					
				
				
				if (global.bombs > 0):
				
					hold_item = gml.instance_create(position.x, position.y, "bomb")
					if (global.has_sticky_bombs): hold_item.sticky = true
					hold_item.held = true
					global.bombs -= 1
					whoa_timer = whoa_timer_max
				
				elif (global.rope > 0):
				
					hold_item = gml.instance_create(position.x, position.y, "rope_throw")
					hold_item.held = true
					global.rope -= 1
					whoa_timer = whoa_timer_max
				
			
		
		else:
		
			if (global.bombs > 0):
			
				hold_item = gml.instance_create(position.x, position.y, "bomb")
				if (global.has_sticky_bombs): hold_item.sticky = true
				hold_item.held = true
				global.bombs -= 1
				whoa_timer = whoa_timer_max
			
			elif (global.rope > 0):
			
				hold_item = gml.instance_create(position.x, position.y, "rope_throw")
				hold_item.held = true
				global.rope -= 1
				whoa_timer = whoa_timer_max
			
		

	elif (in_game and k_rope_pressed and global.rope > 0 and not whipping):
	   
		if (not k_down and col_top):
		
			# do nothing
			pass
		
		else:
		
			if (k_down):
				var obj
				if (facing == LEFT):
				
					obj = gml.instance_create(position.x-16, position.y, "rope_throw")
				
				else:
				
					obj = gml.instance_create(position.x+16, position.y, "rope_throw")
				
				
				obj.t = true
				obj.gml.move_snap(16, 1)
				if (position.x < obj.position.x):
				
					if (not gml.collision_point(position.x+8, position.y, "solid", 0, 0)):
					
						if (not  gml.collision_rectangle(obj.position.x-8, obj.position.y, obj.position.x-7, obj.position.y+16, 'solid', 0, 0)):
							position.x -= 8
						elif (not  gml.collision_rectangle(obj.position.x+7, obj.position.y, obj.position.x+8, obj.position.y+16, 'solid', 0, 0)):
							obj.position.x += 8
						else: obj.t = false
					
					else: obj.t = false
				
				elif (not gml.collision_point(position.x-8, position.y, "solid", 0, 0)):
				
					if (not  gml.collision_rectangle(obj.position.x+7, obj.position.y, obj.position.x+8, obj.position.y+16, 'solid', 0, 0)):
						obj.position.x += 8
					elif (not  gml.collision_rectangle(obj.position.x-8, obj.position.y, obj.position.x-7, obj.position.y+16, 'solid', 0, 0)):
						obj.position.x -= 8
					else: obj.t = false
				
				else: obj.t = false
						
				if (not obj.t):
				
					#/*
					#if (player1.facing == 18):
					#
						#obj = gml.instance_create(player1.position.x-4, player1.position.y+2, "rope_throw")
						#obj.x_vel = -3.2
					#
					#else:
					#
						#obj = gml.instance_create(player1.position.x+4, player1.position.y+2, "rope_throw")
						#obj.x_vel = 3.2
					#
					#obj.y_vel = 0.5
					#*/
					obj.gml.instance_destroy()
				
				else:
				
					obj.gml.instance_create(obj.position.x, obj.position.y, "rope_top")
					obj.armed = false
					obj.falling = true
					obj.x_vel = 0
					obj.y_vel = 0
					obj.global.rope -= 1
					obj.Audio.play_sound(global.snd_throw)
					
				
			
			else:
			
				var obj = gml.instance_create(position.x, position.y, "rope_throw")
				obj.armed = true
				obj.px = position.x
				obj.py = position.y
				obj.x_vel = 0
				obj.y_vel = -12
				global.rope -= 1
				Audio.play_sound(global.snd_throw)
		
		

	elif (in_game and k_bomb_pressed and global.bombs > 0 and not whipping and bow_armed):

		hold_arrow = ARROW_BOMB
		alarm_11(1)

	elif (in_game and k_bomb_pressed and global.bombs > 0 and not whipping):

		var obj = gml.instance_create(position.x, position.y, "bomb")
		if (global.has_sticky_bombs): obj.sticky = true
		obj.sprite_index = "bomb_armed"
		obj.armed = true
		obj.alarm_0(80)
		obj.image_speed = 0.2
			   
		obj.safe = true
		obj.alarm_2(10)
				
		if (facing == LEFT):
		
			obj.x_vel = -8 + x_vel
		
		elif (facing == RIGHT):
		
			obj.x_vel = 8 + x_vel
		
		obj.y_vel = -3
		
		if (k_up):
		
			obj.y_vel = -9
		
		
		if (k_down):
		
			if (platform_character_is(ON_GROUND)): obj.x_vel *= 0.1
			obj.y_vel = 3
		
		
		global.bombs -= 1
		Audio.play_sound(global.snd_throw)

	elif (hold_item == null):

		if (k_attack_pressed and state != DUCKING and state != DUCKTOHANG and not whipping and
			sprite_index != "p_exit" and sprite_index != "damsel_exit"):
		
			image_speed = 0.6
			if (global.is_tunnel_man):
			
				if (platform_character_is(ON_GROUND)):
				
					sprite_index = "tunnel_attack_l"
					image_index = 0
					whipping = true
				
			
			elif (global.is_damsel):
			
				sprite_index = "damsel_attack_l"
				image_index = 0
				whipping = true
			
			else:
			
				sprite_index = "attack_left"
				image_index = 0
				whipping = true
			
		
		elif (k_attack_pressed and k_down):
		
			# pick up item
			if (gml.collision_rectangle(position.x-8, position.y, position.x+8, position.y+8, 'item', 0, 0)):
			
				var obj = gml.instance_nearest(position.x, position.y, 'item') #---  [FLAG] might need to check this
				if (obj.can_pick_up and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
				
					hold_item = obj
					hold_item.held = true
					whoa_timer = whoa_timer_max
					pickup_item_type = hold_item.type
					
					if (hold_item.type == "Bow" and hold_item.new):
					
						hold_item.new = false
						global.arrows += 6
					
					
					if (hold_item.type == "Gold Idol" and hold_item.trigger and not InLevel.is_room("r_load_level")):
					
						global.idols_grabbed += 1
						if (global.level_type == 0):
						
							var trap_instance = gml.instance_nearest(position.x, position.y-64, 'giant_tiki_head')
							trap_instance.alarm_0(100)
							InLevel.scr_shake(100)
							hold_item.trigger = false
						
						elif (global.level_type == 1):
						
							if (global.cemetary and not global.ghost_exists):
								var view_xview
								var view_wview
								var view_hview #----------------- [FLAG] change these to match camera
								if (self.position.x > gml.room_width() / 2): gml.instance_create(view_xview[0]+view_wview[0]+8, view_yview[0]+floor(view_hview[0] / 2), "ghost")
								else: gml.instance_create(view_xview[0]-32,  view_yview[0]+floor(view_hview[0] / 2), "ghost")
								global.ghost_exists = true
							
							var all_trap_blocks = gml.get_all_instances("trap_block")
							for trap_block_instance in all_trap_blocks:
							
								var dist = gml.distance_to_object('character', trap_block_instance)
								if (dist < 90):
								
									trap_block_instance.dying = true
									#gml.instance_destroy()
								
							
						
						elif (global.level_type == 3):
						
							if (gml.instance_exists("ceiling_trap")):
							
								var all_ceiling_traps = gml.get_all_instances("ceiling_trap")
								for ceiling_trap_instance in all_ceiling_traps:
								
									ceiling_trap_instance.status = 1
									ceiling_trap_instance.y_vel = 0.5
								
								InLevel.scr_shake(20)
								var trap = gml.instance_nearest(position.x-64, position.y-64, 'door')
								trap.status = 1
								trap.y_vel = 1
								trap = gml.instance_nearest(position.x+64, position.y-64, 'door')
								trap.status = 1
								trap.y_vel = 1
							
							else:
								var all_trap_blocks = gml.get_all_instances("trap_block")
								for trap_block_instance in all_trap_blocks:
								
									var dist = gml.distance_to_object('character', trap_block_instance)
									if (dist < 90):
									
										gml.instance_destroy(trap_block_instance)
									
									trap_block_instance.Audio.play_sound(global.snd_thump)
									trap_block_instance.InLevel.scr_shake(10)
								
							
					
							hold_item.trigger = false
						
					
					elif (hold_item.type == "Damsel"):
					
						if (hold_item.status == 4): # exiting
						
							hold_item = null
							hold_item.held = false
						
						else:
						
							if (global.is_damsel): hold_item.sprite_index = "die_l_bounce"
							else: hold_item.sprite_index = "damsel_hold_l"
						
					
					elif (hold_item.cost == 0): CharacterScripts.scr_steal_item()
				
			
			elif (gml.collision_rectangle(position.x-8, position.y, position.x+8, position.y+8, 'enemy', 0, 0)):
			
				var obj = gml.instance_nearest(position.x, position.y, 'enemy')
				if (obj.status >= 98 and obj.can_pick_up):
				
					hold_item = obj
					hold_item.held = true
					whoa_timer = whoa_timer_max
					pickup_item_type = hold_item.type
				
			
		

	elif (k_attack_pressed):

		if (hold_item):
		
			CharacterScripts.scr_use_item()
		


	#/*
	#if (InLevel.is_level() and k_flare_pressed and active and not dead and not stunned):
#
		#if (global.flares > 0):
		#
			#flare = gml.instance_create(position.x, position.y, "flare")
#
			## drop any item you're already carrying
			#if (hold_item):
			#
				#if (facing == LEFT): hold_item.x_vel = -1
				#else: hold_item.x_vel = 1
				#hold_item.y_yel = -2
				#hold_item.held = false
				#hold_item = null
				#pickup_item_type = ""
			#
#
			#with flare  held = true
			#hold_item = flare
			#Audio.play_sound(global.snd_ignite)
			#global.darkness_lerp = 1
			#global.flares -= 1
#
			#if (global.flares > 1): global.message = string(global.flares) + " FLARES REMAINING."
			#elif (global.flares == 1): global.message = string(global.flares) + " FLARE REMAINING."
			#else: global.message = "NO MORE FLARES!"
			#global.message2 = ""
			#global.message_timer = 80
		#
		#else:
		#
			#global.message = "NO MORE FLARES!"
			#global.message2 = ""
			#global.message_timer = 80
		#
#
	#*/
	
func handle_shop_behavior(): #--- Purchasing and games etc. (different shop types)
	if (InLevel.is_level() and active and k_pay_pressed and not dead and not stunned):

		if (InLevel.is_in_shop(position.x, position.y) and gml.instance_exists("shopkeeper")):
			var shopkeeper #------ [FLAG] get reference to shopkeeper here
		
			var n = 0
			if (hold_item):
			
				if (hold_item.cost <= 0):
				
					# do nothing
					pass
				
				elif (hold_item.cost > global.money):
				
					global.message = "YOU HAVEN'T GOT ENOUGH MONEY!"
					global.message2 = ""
					global.message_timer = 80
					hold_item.held = false
					hold_item = null
					pickup_item_type = ""
					n = 1
				
				else:
				
					if (InLevel.is_real_level()): global.items_bought += 1
					global.money -= hold_item.cost
					CharacterScripts.scr_steal_item()
					#global.message = "THANK YOU!"
					#global.message2 = ""
					global.message_timer = 80
					# hold_item = null
				
			
			
			if ((global.black_market and global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 5) or
				(not global.black_market and shopkeeper.style == "Craps")):
			
				if (global.thief_level > 0 or global.murderer):
				
					# do nothing
					pass
				
				elif (bet == 0 and global.money >= (1000 + global.curr_level * 500)):
				
					if (InLevel.is_real_level()): global.dice_games_played += 1
					bet = 1000 + global.curr_level * 500
					global.money -= 1000 + global.curr_level * 500
					global.message = "YOU BET $" + str(1000 + global.curr_level * 500) + "!"
					global.message2 = "NOW ROLL THE DICE!"
					global.message_timer = 200
				
				elif (bet > 0):
				
					global.message = "ONE BET AT A TIME!"
					global.message2 = "PLEASE ROLL THE DICE!"
					global.message_timer = 200
				
				else:
				
					global.message = "YOU NEED $" + str(1000 + global.curr_level * 500) + " TO BET!"
					global.message2 = ""
					global.message_timer = 200
				
			
			
			if (shopkeeper.style == "Kissing" and gml.distance_to_object('damsel', self) < 16):
			
				var obj = gml.instance_nearest(position.x, position.y, 'damsel')
				if (global.thief_level > 0 or global.murderer or not obj.for_sale):
				
					# do nothing
					pass
				
				elif (n == 0 and global.money >= InLevel.get_kiss_value()):
				
					if (obj.for_sale and not obj.held):
					
						if (InLevel.is_real_level()): global.kisses_bought += 1
						obj.status = 6
						if (global.is_damsel):
						
							obj.sprite_index = "p_kiss_l"
						
						else:
						
							obj.sprite_index = "damsel_kiss_l"
						
						global.money -= InLevel.get_kiss_value()
						global.plife += 1
						if (global.is_damsel): global.message = "NOW AIN'T HE SWEET!"
						else: global.message = "NOW AIN'T SHE SWEET!"
						global.message2 = ""
						global.message_timer = 200
					
				
				else:
				
					if (n == 0): global.message = "YOU NEED $" + str(InLevel.get_kiss_value()) + "!"
					else: global.message = "YOU NEED $" + str(obj.cost) + "!"
					global.message2 = "GET OUTTA HERE, DEADBEAT!"
					global.message_timer = 200
	
func handle_bow():
	if (k_attack and bow_armed and bow_strength < 12):

		bow_strength += 0.2
		if (not hold_item):
		
			bow_armed = false
			bow_strength = 0
			if (SS.is_sound_playing(global.snd_bow_pull)): SS.stop_sound(global.snd_bow_pull)
		
		hold_arrow = ARROW_NORM


	if (k_attack_released and bow_armed):

		CharacterScripts.scr_fire_bow()

func step_function_3():
	#Hurt
	cap_negative_player_life()
	create_blood_upon_very_low_player_life()
	handle_damage_by_various_objects()
	drop_item_when_dead_or_stunned()
	handle_dead_or_stunned()

func cap_negative_player_life():
	if (global.plife < -10000): global.plife = -10000
	
func create_blood_upon_very_low_player_life():
	if (global.plife < -99 and visible):

		MiscScripts.scr_create_blood(position.x, position.y, 3)
		visible = false

func handle_damage_by_various_objects():
	if (global.plife >= -99 and visible and sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):

		kill_upon_being_crushed()
		handle_hit_by_arrow()
		handle_hit_by_rock()
		handle_hit_by_laser()
		handle_hit_by_psychic_wave()
		handle_hit_by_explosion()
		handle_hit_by_spears_left()
		handle_hit_by_smash_trap()
		handle_hit_by_ceiling_trap()
		handle_spike_collision()
	
func kill_upon_being_crushed():
	# crushed
	if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

		if (global.plife > 0):
		
			if (InLevel.is_real_level()):
			
				if (InLevel.is_room("r_olmec")): global.enemy_deaths[22] += 1
				else: global.misc_deaths[2] += 1
			
		
		global.plife -= 99
		active = false
		y_vel = -3
		Audio.play_sound(global.snd_die)
			
		MiscScripts.scr_create_blood(position.x, position.y, 3)
		
		visible = false
	
func handle_hit_by_arrow():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "arrow", 0, 0)):

		var obj = gml.instance_nearest(position.x, position.y, 'arrow')
		if (obj and abs(obj.x_vel) > 3 and not obj.safe):
		
			if (global.plife > 0):
			
				global.plife -= 2
				if (global.plife <= 0 and InLevel.is_real_level()): global.misc_deaths[6] += 1
			
			x_vel = obj.x_vel
			y_vel = -4
			
			MiscScripts.scr_create_blood(position.x, position.y, 3)
			
			gml.instance_destroy(obj)
			
			Audio.play_sound(global.snd_hurt)
			stunned = true
			stun_timer = 20
	
func handle_hit_by_rock():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "rock", 0, 0)):

		var obj = gml.instance_nearest(position.x, position.y, 'rock')
		if (obj and abs(obj.x_vel) > 4 and not obj.safe and not stunned and not dead):
		
			if (global.has_mitt and !hold_item):
			
				hold_item = rock
				hold_item.held = true
				pickup_item_type = hold_item.type
			
			else:
				if (global.plife > 0):
				
					global.plife -= 2
					if (global.plife <= 0 and InLevel.is_real_level()): global.misc_deaths[0] += 1
				
				x_vel = obj.x_vel
				y_vel = -4
				
				MiscScripts.scr_create_blood(position.x, position.y, 3)
				
				Audio.play_sound(global.snd_hurt)
				stunned = true
				stun_timer = 20
	
func handle_hit_by_laser():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "laser", 0, 0)):

		var obj = gml.instance_nearest(position.x, position.y, 'laser')
		if (obj):
		
			if (global.plife > 0):
			
				global.plife -= 3
				if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[16] += 1
			
			if (obj.position.x < position.x): x_vel = 2
			else: x_vel = -2
			y_vel = -4
			
			MiscScripts.scr_create_blood(position.x, position.y, 3)
			
			gml.instance_create(obj.position.x, obj.position.y, "laser_explode")
			gml.instance_destroy(obj)
			
			Audio.play_sound(global.snd_hurt)
			stunned = true
			stun_timer = 20
	
func handle_hit_by_psychic_wave():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "psychic_wave", 0, 0) and not stunned and not dead):

		var obj = gml.instance_nearest(position.x, position.y, 'psychic_wave')
		if (obj):
		
			if (global.plife > 0):
			
				global.plife -= 1
				if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[17] += 1
			
			if (obj.position.x < position.x): x_vel = 2
			else: x_vel = -2
			y_vel = -4
			
			Audio.play_sound(global.snd_hurt)
			stunned = true
			stun_timer = 40
	
func handle_hit_by_explosion():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "explosion", 0, 0)):

		global.plife -= 10
		if (global.plife > 0 and InLevel.is_real_level()): global.misc_deaths[1] += 1
		explosion = gml.instance_nearest(position.x, position.y, explosion)
		if (explosion.position.x < position.x): x_vel = randi_range(4,6)
		else: x_vel = -randi_range(4,6)
		y_vel = -6
		burning = 50
		stunned = true
		stun_timer = 100
			
		MiscScripts.scr_create_blood(position.x, position.y, 1)
	
func handle_hit_by_spears_left():
	var obj = gml.collision_rectangle(position.x-6, position.y-6, position.x+6,  position.y+7, "spears_left", 0, 0) #instance_nearest(position.x, position.y, spears_left) ---[FLAG] doesn't seem to be used for anything but come back and check this
	if (obj):

		if (obj.image_index >= 20 and obj.image_index < 24):
		
			if (global.plife > 0 and InLevel.is_real_level()):  global.misc_deaths[7] += 1
		
			# stunned = true
			# bounced  = false
			global.plife -= 4
			if (obj.sprite_index == "spears_left"): x_vel = -randi_range(4,6)
			else: x_vel = randi_range(4,6)
			y_vel = -6
			position.y -= 1
			# state = FALLING
			
			MiscScripts.scr_create_blood(position.x, position.y, 1)
	
func handle_hit_by_smash_trap():
	if (gml.collision_rectangle(position.x-6, position.y-6, position.x+6,  position.y+7, "smash_trap", 0, 0)):

		if (global.plife > 0 and InLevel.is_real_level()): global.misc_deaths[8] += 1

		var obj = gml.instance_nearest(position.x, position.y, 'smash_trap')
		global.plife -= 10
		if (obj.position.x+8 < position.x): x_vel = -randi_range(4,6)
		else: x_vel = randi_range(4,6)
		y_vel = -6
		if (obj):
		
			if (obj.dir == 1): y_vel = 4
		
		#RIGHT = 0
		#DOWN = 1
		#LEFT = 2
		#UP = 3
		MiscScripts.scr_create_blood(position.x, position.y, 1)
		if (hold_item):
			hold_item.held = false
			hold_item = null
	
func handle_hit_by_ceiling_trap():
	var obj = gml.collision_rectangle(position.x-2, position.y-9, position.x+2,  position.y-7, "ceiling_trap", 0, 0) #instance_nearest(position.x, position.y-8, ceiling_trap)
	if (obj):

		if (obj.status > 0):
		
			if (global.plife > 0 and InLevel.is_real_level()): global.misc_deaths[9] += 1

			global.plife -= 10
			MiscScripts.scr_create_blood(position.x, position.y, 1)
	
func handle_spike_collision():
	col_spikes = false
	if (gml.collision_rectangle(position.x-4, position.y-4, position.x+4,  position.y+8, "spikes", 0, 0)): col_spikes = true

	if (col_spikes and dead):

		#grav = 0
		if (not gml.collision_point(position.x, position.y+9, "solid", 0, 0)): position.y += 0.05
		else: my_grav = 0.6

	else: my_grav = 0.6

	if (col_spikes and y_vel > 0 and (fall_timer > 4 or stunned)):

		if (not dead):
		
			if (InLevel.is_real_level()): global.misc_deaths[4] += 1
			MiscScripts.scr_create_blood(position.x, position.y, 3)
			global.plife -= 99
			x_vel = 0
			y_vel = 0
			my_grav = 0
		

		var obj = gml.instance_place(position.x, position.y, 'spikes', self)
		if (obj):
		
			obj.sprite_index = "spikes_blood"
	

#elif (not dead): my_grav = 0.6
	
func drop_item_when_dead_or_stunned():
	if ((dead or stunned) and hold_item != null):

		hold_item.held = false
		
		hold_item.x_vel = x_vel
		hold_item.y_vel = -6
		hold_item.armed = true
		if (hold_item.type == "Damsel"):
		
			hold_item.status = 2
		
		elif (hold_item.type == "Bow"):
		
			CharacterScripts.scr_fire_bow()
		
		
		if (hold_item.type == pickup_item_type):
		
			hold_item = null
			pickup_item_type = ""
		
		else: CharacterScripts.scr_hold_item(pickup_item_type)
	
func handle_dead_or_stunned():
	if (dead or stunned):

		if (gml.instance_exists("parachute")):
		
			gml.instance_create(position.x-8, position.y-16-8, "para_used")
			var all_parachutes = gml.get_all_instances("parachute")
			for parachute_instance in all_parachutes: gml.instance_destroy(parachute_instance)
		

		if (whipping):
		
			whipping = false
			var all_whips = gml.get_all_instances("whip")
			for whip_instance in all_whips: gml.instance_destroy(whip_instance)
			
		
		
		if (global.is_damsel):
		
			if (x_vel == 0):
			
				if (dead): sprite_index = "damsel_die_l"
				elif (stunned): sprite_index = "damsel_stun_l"
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = "damsel_bounce_l"
				else: sprite_index = "damsel_fall_l"
			
			else:
			
				if (x_vel < 0): sprite_index = "damsel_die_l_l"
				else: sprite_index = "damsel_die_l_r"
			
		
		elif (global.is_tunnel_man):
		
			if (x_vel == 0):
			
				if (dead): sprite_index = "tunnel_die_l"
				elif (stunned): sprite_index = "tunnel_stun_l"
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = "tunnel_l_bounce"
				else: sprite_index = "tunnel_fall_l"
			
			else:
			
				if (x_vel < 0): sprite_index = "tunnel_die_l_l"
				else: sprite_index = "tunnel_die_l_r"
			
		
		else:
		
			if (x_vel == 0):
			
				if (dead): sprite_index = "die_l"
				elif (stunned): sprite_index = "stun_l"
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = "die_l_bounce"
				else: sprite_index = "die_l_fall"
			
			else:
			
				if (x_vel < 0): sprite_index = "die_l_l"
				else: sprite_index = "die_l_r"
			
		
		
		if (gml.collision_point(position.x, position.y, "spikes", 0, 0) and dead and y_vel != 0):
		
			if (randi_range(1,8) == 1): MiscScripts.scr_create_blood(self.position.x, self.position.y, 1) #---[FLAG] changing 'other' to self, as this appears to be referring to the player
																											#(as the other side of the collision)
		
		if (Collision.is_collision_right(1, self) or Collision.is_collision_left(1, self) or Collision.is_collision_bottom(1, self)):
		
			if (wall_hurt > 0):
			
				for i in range(0, 3):
				
					gml.instance_create(self.position.x, self.position.y, "blood") #--- same as above with changing 'other' to 'self'
				
				global.plife -= 1
				wall_hurt -= 1
				Audio.play_sound(global.snd_hurt)
			
		
		
		if (Collision.is_collision_bottom(1, self) and not bounced):
		
			bounced = true
			for i in range(0, 3):
			
				MiscScripts.scr_create_blood(self.position.x, self.position.y, 1) #--- same as above with changing 'other' to 'self'
			
			
			if (wall_hurt > 0):
			
				global.plife -= 1
				wall_hurt -= 1
	
func step_function_4():
	# DIED
	decrease_dead_counter()
	handle_ankh_revival()

func decrease_dead_counter():
	if (dead and dead_counter > 0): dead_counter -= 1
	
func handle_ankh_revival():
	if (InLevel.is_level() or InLevel.is_room("r_sun") or InLevel.is_room("r_moon") or InLevel.is_room("r_stars")):

		if (not dead and global.plife < 1):
		
			if (global.has_ankh):
			
				global.plife = 4
				if (gml.instance_exists("moai")):
					var moai = gml.instance_nearest(position.x, position.y, 'moai') #--- could also use the function for grabbing only one object if only one moai exists
					var all_moai_inside = gml.get_all_instances("moai_inside")
					for moai_inside_instance in all_moai_inside: gml.instance_destroy(moai_inside_instance)
					position.x = moai.position.x+16+8
					position.y = moai.position.y+16+8
				
				elif (InLevel.is_room("r_olmec")):
				
					position.x = 16+8
					position.y = 544+8
				
				else:
					var entrance = gml.instance_nearest(position.x, position.y, 'entrance')
					gml.instance_activate_object('entrance')
					position.x = entrance.position.x+8
					position.y = entrance.position.y+8
				
				var all_balls = gml.get_all_instances("ball")
				for ball_instance in all_balls:
					ball_instance.position.x = self.position.x #--- changing player1 to be 'self' to make things easier
					ball_instance.position.y = self.position.y
					
				var all_chains = gml.get_all_instances("chain")
				for chain_instance in all_chains:
					chain_instance.position.x = self.position.x #--- changing player1 to be 'self' to make things easier
					chain_instance.position.y = self.position.y
				
				x_vel = 0
				y_vel = 0
				blink = 60
				invincible = 60
				fall_timer = 0
				visible = true
				active = true
				dead = false
				global.has_ankh = false
				global.message = "THE ANKH SHATTERS!"
				global.message2 = "YOU HAVE BEEN REVIVED!"
				global.message_timer = 150
				Audio.play_sound(global.snd_teleport)
			
			else:
			
				global.plife = 0
				global.draw_hud = false
				var sun_room = gml.get_instance('sun_room')
				var moon_room = gml.get_instance('moon_room')
				var stars_room = gml.get_instance('stars_room')
				if (InLevel.is_room("r_sun")): global.mini1 = sun_room.points
				if (InLevel.is_room("r_moon")):
				
					global.mini2 = moon_room.baskets
					moon_room.timer = -1
					moon_room.alarm_10(30)
				
				if (InLevel.is_room("r_stars")): global.mini3 = stars_room.kills
				if (global.mini1 > 99): global.mini1 = 99
				if (global.mini2 > 99): global.mini2 = 99
				if (global.mini3 > 99): global.mini3 = 99
				
				if (InLevel.is_room("r_sun") or InLevel.is_room("r_moon") or InLevel.is_room("r_stars")): MiscScripts.scr_update_highscores(2)
				else: MiscScripts.scr_update_highscores(0)
		
				dead = true
				#active = false
				Audio.play_sound(global.snd_die)
			
		

		if (dead):
		
			Audio.stop_all_music()

func step_function_5():
	cap_invincibility()
	cap_blink()
	  
func cap_invincibility():
	if (not dead and invincible > 0):
		invincible -= 1
	
func cap_blink():
	if (blink > 0):

		blink_toggle *= -1
		blink -= 1

	else: blink_toggle = -1

	#/*
	#if (sprite_index == "slide_right"):
#
		#spark = gml.instance_create(position.x, position.y, "ground_spark")
		#with spark  position.x += random(3)
#
	#elif (sprite_index == "slide_left"):
#
		#spark = gml.instance_create(position.x, position.y, "ground_spark")
		#with spark  sprite_index = sSpark_left position.x += random(3)
#
	#*/
	
func step_function_6():
	#Collect
	set_money_value()
	modify_collect_and_money_values()
	collect_arrow()
	collect_treasure()
	collect_bomb_bag()
	collect_bomb_box()
	collect_rope_pile()
	collect_idol_and_damsel()
	increase_global_xmoney_value()
				

func set_money_value():
	money = global.money
	
func modify_collect_and_money_values():
	if (global.collect_counter == 0):

		if (global.collect > 100):
		
			global.money += 100
			global.collect -= 100
		
		else:
		
			global.money += global.collect
			global.collect -= global.collect
		

	else:

		global.collect_counter -= 1
	
func collect_arrow():
	if (hold_item):

		if (hold_item.type == "Bow"):
		
			if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "arrow", 0, 0) and not dead and not stunned):
			
				var obj = gml.instance_nearest(position.x, position.y, 'arrow')
				if (abs(obj.x_vel) < 1 and abs(obj.y_vel) < 1 and not obj.stuck):
				
					global.arrows += 1
					Audio.play_sound(global.snd_pickup)
					gml.instance_destroy(obj)
	
func collect_treasure():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "treasure", 0, 0) and not dead and not stunned):

		var gem = gml.instance_nearest(position.x, position.y, 'treasure')
		if (gem.can_collect):
		
			# global.money += gem.value
			global.collect += gem.value + ceil(gem.value / 4)*global.level_type
			global.collect_counter += 20
			if (global.collect_counter > 100): global.collect_counter = 100
			
			var coin = false
			#gml.instance_create(position.x, position.y-8, "small_collect")
			if (gem.type == "Gold Chunk"):
				global.gold += 1
				coin = true
			if (gem.type == "Gold Nugget"):
				global.nuggets += 1
				coin = true
			if (gem.type == "Gold Bar"):
				global.goldbar += 1
				coin = true
			if (gem.type == "Gold Bars"):
				global.goldbars += 1
				coin = true
			if (gem.type == "Emerald"): global.emeralds += 1
			if (gem.type == "Big Emerald"): global.bigemeralds += 1
			if (gem.type == "Sapphire"): global.sapphires += 1
			if (gem.type == "Big Sapphire"): global.bigsapphires += 1
			if (gem.type == "Ruby"): global.rubies += 1
			if (gem.type == "Big Ruby"): global.bigrubies += 1
			if (gem.type == "Diamond"): global.diamonds += 1
			if (coin): Audio.play_sound(global.snd_coin)
			else: Audio.play_sound(global.snd_gem)

			gml.instance_destroy(gem)
	
func collect_bomb_bag():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_bag", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_bag", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.bombs += 3
			var disp = gml.instance_create(obj.position.x, obj.position.y-14, "items_get")
			disp.sprite_index = "bombs_get"
			gml.instance_destroy(obj)
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 3 MORE BOMBS!"
			global.message2 = ""
			global.message_timer = 120
	
func collect_bomb_box():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_box", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_box", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.bombs += 12
			var disp = gml.instance_create(obj.position.x, obj.position.y-14, "items_get")
			disp.sprite_index = "bombs_get"
			gml.instance_destroy(obj)
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 12 MORE BOMBS!"
			global.message2 = ""
			global.message_timer = 120
	
func collect_rope_pile():
	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "rope_pile", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "rope_pile", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.rope += 3
			var disp = gml.instance_create(obj.position.x, obj.position.y-15, "items_get")
			disp.sprite_index = "rope_get"
			gml.instance_destroy(obj)
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 3 MORE ROPES!"
			global.message2 = ""
			global.message_timer = 120
	
func collect_idol_and_damsel():
	if (gml.collision_point(position.x, position.y, "exit", 0, 0)):

		if (hold_item != null):
		
			collect = false
			if (hold_item.type == "Gold Idol"):
			
				if (InLevel.is_real_level()): global.idols_converted += 1
				global.collect += hold_item.value*(global.level_type+1)
				global.collect_counter += 20
				if (global.collect_counter > 100): global.collect_counter = 100
				if (hold_item.sprite_index == "crystal_skull"): global.skulls += 1
				else: global.idols += 1
				Audio.play_sound(global.snd_coin)
				gml.instance_create(position.x, position.y-8, "big_collect")
				gml.instance_destroy(hold_item) #---[FLAG] hold_item should be set to the string of the item name
				hold_item = null
			
			elif (hold_item.type == "damsel"):
			
				if (hold_item.active and hold_item.hp > 0):
				
					if (InLevel.is_real_level()): global.damsels_saved_total += 1
					global.damsels += 1
					global.xdamsels += 1
					var door = gml.instance_place(position.x, position.y, 'exit', self)
					hold_item.position.x = door.position.x+8
					hold_item.position.y = door.position.y+8

					var hold_item_instance = gml.instance_nearest(position.x, position.y, hold_item)
					
					if (global.is_damsel): hold_item_instance.sprite_index = "p_exit"
					else: hold_item_instance.sprite_index = "damsel_exit2"
					hold_item_instance.status = 4
					hold_item_instance.held = false
					hold_item_instance.x_vel = 0
					hold_item_instance.y_vel = 0
					hold_item_instance.Audio.play_sound(global.snd_steps)
					hold_item_instance.depth = 1000
					hold_item_instance.active = false
					hold_item_instance.can_pick_up = false
					
					hold_item = null
	
func increase_global_xmoney_value():
	global.xmoney += global.money - money

func character_create_event():
	#/*
	#This script should be placed in the "Create Event" of the platform character.
	#It sets the variables needed for the platform character.
	#*/

	var debug = 1

	#constant states that the platform character may be #--- declared these at the top
	#STANDING = 10
	#RUNNING = 11
	#DUCKING = 12
	#LOOKING_UP = 13
	#CLIMBING = 14
	#JUMPING = 15
	#FALLING = 16
	#DYING = 17
	#LEFT = 18
	#RIGHT = 19
	#ON_GROUND = 20
	#IN_AIR = 21
	#ON_LADDER = 22
	#HANGING = 23
	#DUCKTOHANG = 24

	hang_count = 0
	run_held = 0

	# look #--- declared these at the top
	#UP = 101
	#DOWN = 102

	# other
	blink = 0
	blink_toggle = -1
	invincible = 0

	swimming = false

	#the keys that the platform character will use (don't edit)
	k_left = false
	k_right = false
	k_up = false
	k_down = false
	k_jump = false
	k_jump_pressed = false
	k_run = false

	k_attack = false
	k_attack_pressed = false
	var k_missile = 0 #--- doesn't appear to be used anywhere
	var k_missile_pressed = 0 #--- doesn't appear to be used anywhere

	#user variables (you can edit these)
	player = 1                # player number (player 2 uses different keyboard keys than player 1)
	state = FALLING           # the character state, must be one of the following: STANDING, RUNNING, DUCKING, LOOKING_UP, CLIMBING, JUMPING, or FALLING
	facing = RIGHT            # which direction the character is facing, must be either LEFT or RIGHT

	grav = 1                  # the gravity
	grav_norm = 1

	x_vel_limit = 16            # limits the x_vel: default 15
	y_vel_limit = 10            # limits the y_vel
	x_acc_limit = 9             # limits the x_acc
	y_acc_limit = 6             # limits the y_acc
	run_acc = 3                # the running acceleration

	initial_jump_acc = -2       # relates to how high the character will jump
	jump_time_total = 10        # how long the user must hold the jump button to get the maximum jump height

	climb_acc = 0.6            # how fast the character will climb
	climb_anim_speed = 0.4      # relates to how fast the climbing animation should go
	depart_ladder_x_vel = 4      # how fast character should be moving horizontally when he leaves the ladder
	depart_ladder_y_vel = -4     # how fast the character should be moving vertically when he leaves the ladder

	max_slope = 4              # approximately how many pixels the character can climb UPWARDS per step (a value of 5 means the character can climb up a slope of 5)
	max_down_slope = 5          # approximately how many pixels the character can climb DOWNWARDS per step (a value of 5 means the character can climb down a slope of 5)

	can_run = 1                # when the user presses the shift button, should the character be allowed to run?
	var can_fly = 0                # whether the character can do a fly jump when running at full speed #--- doesn't appear to be used anywhere
	var can_fly_jump = 0            # whether the character can do continuous fly jumps (mid-air) #--- doesn't appear to be used anywhere
	var fly_max_jumps = 5           # the maximum number of jumps the character can perform while flying: #--- doesn't appear to be used anywhere

	friction_running_x = 0.6       # friction obtained while running:
	friction_running_fast_x = 0.98  # friction obtained while holding the shift button for some time while running:
	friction_climbing_x = 0.6      # friction obtained while climbing:
	friction_climbing_y = 0.6      # friction obtained while climbing:
	var friction_ducking_x = 0.8       # friction obtained while ducking: #--- doesn't appear to be used anywhere
	var friction_flying_x = 0.99       # friction obtained while "flying": #--- doesn't appear to be used anywhere

	run_anim_speed = 0.1           #relates to the how fast the running animation should go

	# sets the collision bounds to fit the default sprites (you can edit the arguments of the script)
	Collision.set_collision_bounds(self, -5, -8, 5, 8)

	# hidden variables (don't edit)
	state_prev = state
	state_prev_prev = state_prev
	gravity_intensity = grav      #this variable describes the current force due to gravity (this variable is altered for variable jumping)
	jump_time = jump_time_total     #current time of the jump (0=start of jump, jump_time_total=end of jump)
	jump_button_released = false       #whether the jump button was released. (Stops the user from pressing the jump button many times to get extra jumps)
	ladder_timer = 0              #relates to whether the character can climb a ladder
	jumps = 0
	var fly_speed = 0                 #ranges between 0 and 100. When the fly_speed is approximately 100, the character can "fly." #--- doesn't appear to be used anywhere
	var fly_speed_timer = 0 #--- doesn't appear to be used anywhere
	var fly_acc_timer = 0 #--- doesn't appear to be used anywhere
	var fly_acc2_timer = 0 #--- doesn't appear to be used anywhere
	var fly_jumps_timer = 0 #--- doesn't appear to be used anywhere
	var fly_jump_was_pressed = 0
	k_left_pushed_steps = 0
	k_right_pushed_steps = 0

	# makes the object "active" (don't edit)
	PlatformEngine.make_active(self)

func character_step_event():
	
	#/*
	#This script should be placed in the step event for the platform character.
	#It updates the keys used by the character, moves all of the solids, moves the
	#character, sets the sprite index, and sets the animation speed for the sprite.
	#*/
	hang_count_max = 3
	check_keys()
	check_collisions()
	check_run()
	set_x_acceleration() #--- Used for running left and right
	handle_ladder_climbing()
	set_y_acceleration()
	handle_landing()
	handle_walking_off_ledge()
	handle_ceiling_bump()
	handle_wall_collision()
	#--- Jumping
	end_jump_upon_button_release()
	handle_jumping()
	handle_looking_up()
	initial_hanging_behavior()
	cap_hang_count()
	while_hanging_behavior()
	pressing_down_behavior()
	reset_to_standing_from_down()
	reset_to_standing_from_running()
	set_running_state()
	set_jumping_state()
	set_falling_state()
	handle_ladder_climbing2()
	calculate_friction()
	running_and_duck_to_hang_behavior()
	apply_parachute_and_cape_friction()
	cap_push_timer()
	limit_acceleration()
	apply_acceleration()
	nullify_acceleration_values()
	apply_friction()
	apply_ball_and_chain()
	limit_velocity()
	set_near_zero_velocity_and_acceleration_to_zero()
	slope_movement_preparation()
	handle_basic_movement()
	move_character_down_slope()
	get_character_sprite_index()
	set_prev_and_prev_prev_states()
	set_image_speed()
	
	k_jump_pressed = false

func check_keys():
	###################
	# KEYS
	###################

	k_left = ControlScripts.check_left()

	if (k_left): k_left_pushed_steps += 1
	else: k_left_pushed_steps = 0
	  
	k_left_pressed = ControlScripts.check_left_pressed()
	k_left_released = ControlScripts.check_left_released()
	  
	k_right = ControlScripts.check_right()
	  
	if (k_right): k_right_pushed_steps += 1
	else: k_right_pushed_steps = 0
	  
	k_right_pressed = ControlScripts.check_right_pressed()
	k_right_released = ControlScripts.check_right_released()
	  
	k_up = ControlScripts.check_up()
	k_down = ControlScripts.check_down()
	  
	#key "run"
	if can_run:
		k_run = false
	# k_run=run_key
	else:
		k_run=false
	  
	k_jump = ControlScripts.check_jump()
	if k_jump_pressed == true:
		pass
	else:
		k_jump_pressed = ControlScripts.check_jump_pressed()
	k_jump_released = ControlScripts.check_jump_released()
	  
	if (cant_jump > 0):

		k_jump = false
		k_jump_pressed = false
		k_jump_released = false
		cant_jump -= 1

	else:

		if (global.is_tunnel_man and
			sprite_index == 'tunnel_attack_l' and
			!hold_item):
		
			k_jump = false
			k_jump_pressed = false
			k_jump_released = false
			cant_jump -= 1
		


	k_attack = ControlScripts.check_attack()
	k_attack_pressed = ControlScripts.check_attack_pressed()
	k_attack_released = ControlScripts.check_attack_released()

	k_item_pressed = ControlScripts.check_item_pressed()

	x_prev = position.x
	y_prev = position.y

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

func check_collisions():
	#####################
	# Collisions
	#####################

	col_solid_left = false
	col_solid_right = false
	col_left = false
	col_right = false
	col_top = false
	col_bot = false
	col_ladder = false
	col_plat_bot = false
	col_plat = false
	col_water_top = false
	col_ice_bot = false
	run_key = false
	if (Collision.is_collision_moveable_solid_left(1, self)): col_solid_left = true
	if (Collision.is_collision_moveable_solid_right(1, self)): col_solid_right = true
	if (Collision.is_collision_left(1, self)): col_left = true
	if (Collision.is_collision_right(1, self)): col_right = true
	if (Collision.is_collision_top(1, self)): col_top = true
	if (Collision.is_collision_bottom(1, self)): col_bot = true
	if (Collision.is_collision_ladder(self)): col_ladder = true
	if (Collision.is_collision_platform_bottom(1, self)): col_plat_bot = true
	if (Collision.is_collision_platform(self)): col_plat = true
	if (Collision.is_collision_water_top(1, self)): col_water_top = true
	if (gml.collision_point(position.x, position.y+8, 'ice', 0, 0)): col_ice_bot = true
	
func check_run():
	if (ControlScripts.check_run()):

		run_held = 100
		run_key = true


	if (ControlScripts.check_attack() and not whipping):

		run_held += 1
		run_key = true


	if (not run_key or (not k_left and not k_right)): run_held = 0
	
func set_x_acceleration(): #--- Used for running left and right
	# allows the character to run left and right
	# if state!=DUCKING and state!=LOOKING_UP and state!=CLIMBING:
	if (state != CLIMBING and state != HANGING):

		if k_left_released and Collision.approximately_zero(x_vel): x_acc -= 0.5
		if (k_right_released and Collision.approximately_zero(x_vel)): x_acc += 0.5
		
		if (k_left and not k_right):
		
			if (col_solid_left):
			
				# x_vel = 3
				if (platform_character_is(ON_GROUND) and state != DUCKING):
				
					x_acc -= 1
					push_timer += 10
					#if (not SS_Is_sound_playing(global.snd_push)): play_sound(global.snd_push)
				
			
			elif (k_left_pushed_steps > 2) and (facing==LEFT or Collision.approximately_zero(x_vel)):
			
				x_acc -= run_acc
			
			facing = LEFT
			#if (platform_character_is(ON_GROUND) and abs(x_vel) > 0 and alarm[3] < 1): alarm[3] = floor(16/-x_vel)
		
	  
		if (k_right and not k_left):
		
			if (col_solid_right):
			
				# x_vel = 3
				if (platform_character_is(ON_GROUND) and state != DUCKING):
				
					x_acc += 1
					push_timer += 10
					#if (not SS_Is_sound_playing(global.snd_push)): play_sound(global.snd_push)
				
			
			elif (k_right_pushed_steps > 2 or col_solid_left) and (facing==RIGHT or Collision.approximately_zero(x_vel)):
			
				x_acc += run_acc
			
			facing = RIGHT
			#if (platform_character_is(ON_GROUND) and abs(x_vel) > 0 and alarm[3] < 1): alarm[3] = floor(16/x_vel)
	
func handle_ladder_climbing():
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
		#var ladder_instance = gml.collision_point(position.x, position.y, 'ladder', 0, 0) #--- adjusting this as collision_point in my implementation only returns a boolean
		var ladder_instance
		if gml.collision_point(position.x, position.y, 'ladder', 0, 0):
			ladder_instance = gml.instance_nearest(position.x, position.y, 'ladder')
		if (ladder_instance): position.x = ladder_instance.position.x + 8

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
			jump_button_released = false
			jump_time = 0
			ladder_timer = 5
		

	else:

		if (ladder_timer > 0): ladder_timer -= 1
		
func set_y_acceleration():
	if (platform_character_is(IN_AIR) and state != HANGING):

		y_acc += gravity_intensity
		
func handle_landing():
	# Player has landed
	if ((col_bot or col_plat_bot) and platform_character_is(IN_AIR) and y_vel >= 0):

		if (not col_plat or col_bot):
		
			y_vel = 0
			y_acc = 0
			state = RUNNING
			jumps = 0
		
		#play_sound(global.snd_land)

	#if ((col_bot or col_plat_bot) and not col_plat): y_vel = 0 #--- not sure why this is returning true
	if (col_bot or col_plat_bot):
		if not col_plat:
			y_vel = 0
			
func handle_walking_off_ledge():
	# Player has just walked off of the edge of a solid
	if (col_bot == false and (not col_plat_bot or col_plat) and platform_character_is(ON_GROUND)):

		state = FALLING
		y_acc += grav
		k_jumped = true
		if (global.has_gloves): hang_count = 5
		
func handle_ceiling_bump():
	if (col_top):

		if (dead or stunned): y_vel = -y_vel * 0.8
		elif (state == JUMPING): y_vel = abs(y_vel*0.3)
		
func handle_wall_collision():
	if (col_left and facing == LEFT) or (col_right and facing == RIGHT):

		if (dead or stunned): x_vel = -x_vel * 0.5
		else: x_vel = 0
		
func end_jump_upon_button_release():
	#/******************************************
#
		#JUMPING
	  #
	#*******************************************/

	if (k_jump_released and platform_character_is(IN_AIR)):

		k_jumped = true

	elif (platform_character_is(ON_GROUND)):
		
		if gml.instance_exists('cape'):
			var cape = gml.instance_nearest(position.x, position.y, 'cape')
			cape.open = false
		k_jumped = false
		
func handle_jumping():
	if (k_jump_pressed and gml.collision_point(position.x, position.y, 'web', 0, 0)):

		var obj = gml.instance_place(position.x, position.y, "web", self)
		obj.life -= 1
		y_acc += initial_jump_acc * 2
		y_vel -= 3
		x_acc += x_vel/2
		
		state = JUMPING
		jump_button_released = false
		jump_time = 0
		
		grav = grav_norm

	elif (k_jump_pressed and col_water_top):

		y_acc += initial_jump_acc * 2
		y_vel -= 3
		x_acc += x_vel/2
		
		state = JUMPING
		jump_button_released = false
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
		jump_button_released = false
		jump_time = 0
		
		grav = 0

	elif (platform_character_is(ON_GROUND) and k_jump_pressed and fall_timer == 0):

		if (x_vel > 3 or x_vel < -3):
		
			y_acc += initial_jump_acc * 2
			x_acc += x_vel * 2
		
		else:
		
			y_acc += initial_jump_acc * 2
			x_acc += x_vel/2
		
		
		if (global.has_jordans):
		
			y_acc *= 3
			y_acc_limit = 12
			grav = 0.5
		
		elif (global.has_spring_shoes): y_acc *= 1.5
		else:
		
			y_acc_limit = 6
			grav = grav_norm
		
		
		Audio.play_sound(global.snd_jump)
		
		push_timer = 0

		# the "state" gets changed to JUMPING later on in the code
		state = FALLING
		# "variable jumping" states
		jump_button_released = false
		jump_time = 0


	if (jump_time < jump_time_total): jump_time += 1
	#let the character continue to jump
	if (k_jump == false): jump_button_released = true #--- putting 'or' here as a simple fix
	if (jump_button_released): jump_time = jump_time_total

	gravity_intensity = (float(jump_time)/float(jump_time_total)) * grav #--- putting these as float to not get 0
	
func handle_looking_up():
	if (k_up and platform_character_is(ON_GROUND) and not col_ladder):

		looking = UP
		if (x_vel == 0 and x_acc == 0): state = LOOKING_UP

	else: looking = 0

	if (not k_up and state == LOOKING_UP):

		state=STANDING
		
func initial_hanging_behavior():
	#/******************************************
#
		#HANGING
	  #
	#*******************************************/

	if (not col_top):

		if (global.has_gloves and y_vel > 0):

			if (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
				(gml.collision_point(position.x+9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'solid', 0, 0))):
			
				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0
			
			elif (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
				(gml.collision_point(position.x-9, position.y-5, solid, 0, 0) or gml.collision_point(position.x-9, position.y-6, solid, 0, 0))):
			
				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0
			

		elif (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(position.x+9, position.y-5, 'tree', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'tree', 0, 0))):

			state = HANGING
			gml.move_snap(1, 8, self)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(position.x-9, position.y-5, 'tree', 0, 0) or gml.collision_point(position.x-9, position.y-6, 'tree', 0, 0))):

			state = HANGING
			gml.move_snap(1, 8, self)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(position.x+9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'solid', 0, 0)) and
			not gml.collision_point(position.x+9, position.y-9, 'solid', 0, 0) and not gml.collision_point(position.x, position.y+9, 'solid', 0, 0)):

				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0

		elif (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(position.x-9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x-9, position.y-6, 'solid', 0, 0)) and
			not gml.collision_point(position.x-9, position.y-9, 'solid', 0, 0) and not gml.collision_point(position.x, position.y+9, 'solid', 0, 0)):

				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0


		if (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and state == FALLING and
			(gml.collision_point(position.x, position.y-5, 'arrow', 0, 0) or gml.collision_point(position.x, position.y-6, 'arrow', 0, 0)) and
			not gml.collision_point(position.x, position.y-9, 'arrow', 0, 0) and not gml.collision_point(position.x, position.y+9, 'arrow', 0, 0)):

			var obj = gml.instance_nearest(position.x, position.y-5, 'arrow')
			if (obj.stuck):
			
				state = HANGING
				# gml.move_snap(1, 8)
				y_vel = 0
				y_acc = 0
				grav = 0
			


		#/*
		#if (hang_count == 0 and position.y > 16 and !platform_character_is(ON_GROUND) and state == FALLING and:
			#(gml.collision_point(position.x, position.y-5, treeBranch, 0, 0) or gml.collision_point(position.x, position.y-6, treeBranch, 0, 0)) and
			#not gml.collision_point(position.x, position.y-9, treeBranch, 0, 0) and not gml.collision_point(position.x, position.y+9, treeBranch, 0, 0))
	#
				#state = HANGING
		  ## gml.move_snap(1, 8)
				#y_vel = 0
				#y_acc = 0
				#grav = 0
	#
		#*/

func cap_hang_count():
	if (hang_count > 0): hang_count -= 1
	
func while_hanging_behavior():
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
				if (facing == RIGHT): position.x -= 2
				else: position.x += 2
			
			hang_count = hang_count_max
		
		
		if ((facing == LEFT and not Collision.is_collision_left(2, self)) or
			(facing == RIGHT and not Collision.is_collision_right(2, self))):
		
			grav = grav_norm
			state = FALLING
			y_acc -= grav
			hang_count = 4
		

	else:

		grav = grav_norm
		
func pressing_down_behavior():
	# pressing down while standing:
	if (k_down and platform_character_is(ON_GROUND) and not whipping):

		if (col_bot):
		
			state = DUCKING
		
		elif col_plat_bot:
		
			# climb down ladder if possible:, else: jump down
			fall_timer = 0
			if (not col_bot):
			
				#ladder_instance = 0 #--- Setting to zero seems to do nothing, so commenting out
				var ladder_instance = gml.instance_place(position.x, position.y+16, 'ladder', self)
				if (gml.instance_exists('ladder')):
				
					if (abs(position.x-(ladder_instance.position.x+8)) < 4):
					
						position.x = ladder_instance.position.x + 8

						x_vel = 0
						y_vel = 0
						x_acc = 0
						y_acc = 0
						state = CLIMBING
					
				
				else:
				
					position.y += 1
					state = FALLING
					y_acc += grav
				
			
			else:
			
				#the character can't move down because there is a solid in the way
				state = RUNNING
				
func reset_to_standing_from_down():
	if (not k_down and state == DUCKING):

		state = STANDING
		x_vel = 0
		x_acc = 0
func reset_to_standing_from_running():
	if (x_vel == 0 and x_acc == 0 and state == RUNNING):

		state = STANDING

func set_running_state():
	if (x_acc != 0 and state == STANDING):

		state = RUNNING

func set_jumping_state():
	if (y_vel < 0 and platform_character_is(IN_AIR) and state != HANGING):

		state = JUMPING
		
func set_falling_state():
	if (y_vel > 0 and platform_character_is(IN_AIR) and state != HANGING):

		state = FALLING
		Collision.set_collision_bounds(self, -5, -6, 5, 8)

	else: Collision.set_collision_bounds(self, -5, -8, 5, 8)
	
func handle_ladder_climbing2():
	# CLIMB LADDER
	var col_point_ladder = gml.collision_point(position.x, position.y, 'ladder', 0, 0) or gml.collision_point(position.x, position.y, 'ladder_top', 0, 0)

	if ((k_up and platform_character_is(IN_AIR) and gml.collision_point(position.x, position.y-8, 'ladder', 0, 0) and ladder_timer == 0) or
		(k_up and col_point_ladder and ladder_timer == 0) or
		(k_down and col_point_ladder and ladder_timer == 0 and platform_character_is(ON_GROUND) and gml.collision_point(position.x, position.y+9, 'ladder_top', 0, 0) and x_vel == 0)):

		#ladder = 0 #--- Setting to zero seems to do nothing, so commenting out
		var ladder_instance = gml.instance_place(position.x, position.y-8, 'ladder', self)
		#if (gml.instance_exists('ladder')):
		if ladder_instance != null: #--- changing this to more closely match the original code
		
			if (abs(position.x-(ladder_instance.position.x+8)) < 4):
			
				position.x = ladder_instance.position.x + 8
				
				if (not gml.collision_point(position.x, position.y, 'ladder', 0, 0) and not gml.collision_point(position.x, position.y, 'ladder_top', 0, 0)):
				
					global_position.y = ladder_instance.global_position.y + 14

				x_vel = 0
				y_vel = 0
				x_acc = 0
				y_acc = 0
				state = CLIMBING
			
		


	#/*
	#if (sprite_index == "duck_thang_l" or sprite_index == "damsel_dt_hl"):
#
		#ladder = 0
		#if (facing == LEFT and  gml.collision_rectangle(position.x-8, position.y, position.x, position.y+16, ladder, 0, 0) and not gml.collision_point(position.x-4, position.y+16, solid, 0, 0)):
		#
			#ladder = instance_nearest(position.x-4, position.y+16, ladder)
		#
		#elif (facing == RIGHT and  gml.collision_rectangle(position.x, position.y, position.x+8, position.y+16, ladder, 0, 0) and not gml.collision_point(position.x+4, position.y+16, solid, 0, 0)):
		#
			#ladder = instance_nearest(position.x+4, position.y+16, ladder)
		#
		#
		#if (ladder):
		#
			#position.x = ladder.position.x + 8
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
	
func calculate_friction():
	# Calculate horizontal/vertical friction
	if (state == CLIMBING):

		x_fric = friction_climbing_x
		y_fric = friction_climbing_y

	else:

		if (run_key and platform_character_is(ON_GROUND) and run_held >= 10):
		
			if (k_left): # run
			
				x_vel -= 0.1
				x_vel_limit = 6
				x_fric = friction_running_fast_x
			
			elif (k_right):
			
				x_vel += 0.1
				x_vel_limit = 6
				x_fric = friction_running_fast_x
			
		
		elif (state == DUCKING):
		
			if (x_vel<2 and x_vel>-2):
			
				x_fric = 0.2
				x_vel_limit = 3
				image_speed = 0.8
			
			elif (k_left and global.down_to_run): # run
			
				x_vel -= 0.1
				x_vel_limit = 6
				x_fric = friction_running_fast_x
			
			elif (k_right and global.down_to_run):
			
				x_vel += 0.1
				x_vel_limit = 6
				x_fric = friction_running_fast_x
			
			else:
			
				x_vel *= 0.8
				if (x_vel < 0.5): x_vel = 0
				x_fric = 0.2
				x_vel_limit = 3
				image_speed = 0.8
			
		
		else:
		
			#decrease the friction when the character is "flying"
			if (platform_character_is(IN_AIR)):
			
				if (dead or stunned): x_fric = 1.0
				else: x_fric = 0.8
			
			else:
			
				x_fric = friction_running_x
			
		
		
		# Stuck on web or underwater
		if (gml.collision_point(position.x, position.y, 'web', 0, 0)):
		
			x_fric = 0.2
			y_fric = 0.2
			fall_timer = 0
		
		elif (gml.collision_point(position.x, position.y, 'water', -1, -1)):
		
			if (gml.instance_exists(cape)): cape.open = false
		
			if (state == FALLING and y_vel > 0):
			
				y_fric = 0.5
			
			elif (not gml.collision_point(position.x, position.y-9, 'water', -1, -1)):
			
				y_fric = 1
			
			else:
			
				y_fric = 0.9
			
		
		else:
		
			swimming = false
			y_fric = 1
		


	if (col_ice_bot and state != DUCKING and not global.has_spike_shoes):

		x_fric = 0.98
		y_fric = 1

func running_and_duck_to_hang_behavior():
	# RUNNING

	if (platform_character_is(ON_GROUND)):

		if (state == RUNNING and k_left and col_left):
		
			push_timer += 1
		
		elif (state == RUNNING and k_right and col_right):
		
			push_timer += 1
		
		else:
		
			push_timer = 0
		
		
		if (platform_character_is(ON_GROUND) and not k_jump and not k_down and not run_key):
		   
			x_vel_limit = 3
		
		
		
		# ledge flip
		if (state == DUCKING and abs(x_vel) < 3 and facing == LEFT and
			gml.collision_point(position.x, position.y+9, 'solid', 0, 0) and not gml.collision_point(position.x-1, position.y+9, 'solid', 0, 0) and k_left):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				hold_item.held = false
				if (hold_item.type == "gold idol"): hold_item.position.y -= 8
				CharacterScripts.scr_drop_item(-1, -4, self)
			
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
			gml.collision_point(position.x, position.y+9, 'solid', 0, 0) and not gml.collision_point(position.x+1, position.y+9, 'solid', 0, 0) and k_right):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				# hold_item.held = false
				if (hold_item.type == "gold idol"): hold_item.position.y -= 8
				CharacterScripts.scr_drop_item(1, -4, self)
			
			
			var all_monkeys = gml.get_all_instances("monkey")
			for monkey_instance in all_monkeys:
				# knock off monkeys that grabbed you
				if (monkey_instance.status == 7):
				
					monkey_instance.x_vel = 1
					monkey_instance.y_vel = -4
					monkey_instance.status = 1
					monkey_instance.vine_counter = 20
					monkey_instance.grab_counter = 60
				
			
		


	if (state == DUCKTOHANG):

		position.x = x_prev
		##
		#animated_sprite.position.x = x_prev
		#animated_sprite.position.y = y_prev
		##
		position.y = y_prev
		x_vel = 0
		y_vel = 0
		x_acc = 0
		y_acc = 0
		grav = 0

func apply_parachute_and_cape_friction():
	# PARACHUTE AND CAPE
	if (gml.instance_exists(parachute)):

		y_fric = 0.5

	if (gml.instance_exists(cape)):

		if (cape.open): y_fric = 0.5

func cap_push_timer():
	if (push_timer > 100): push_timer = 100

func limit_acceleration():
	# limits the acceleration if it is too extreme:
	if (x_acc > x_acc_limit): x_acc = x_acc_limit
	elif (x_acc < -x_acc_limit): x_acc = -x_acc_limit
	if (y_acc > y_acc_limit): y_acc = y_acc_limit
	elif (y_acc < -y_acc_limit): y_acc = -y_acc_limit

func apply_acceleration():
	# applies the acceleration
	x_vel += x_acc
	if (dead or stunned): y_vel += 0.6
	else: y_vel += y_acc

func nullify_acceleration_values():
	# nullifies the acceleration
	x_acc = 0
	y_acc = 0

func apply_friction():
	# applies the friction to the velocity, now that the velocity has been calculated
	x_vel *= x_fric
	y_vel *= y_fric

func apply_ball_and_chain():
	# apply ball and chain
	if (gml.instance_exists('ball')):

		if (gml.distance_to_object('ball', self) >= 24):
			var ball_instance = gml.instance_nearest(position.x, position.y, 'ball') #--- adding this so we have a reference to the object
		
			if (x_vel > 0 and ball_instance.position.x < position.x and abs(ball_instance.position.x-position.x) > 24): x_vel = 0
			if (x_vel < 0 and ball_instance.position.x > position.x and abs(ball_instance.position.x-position.x) > 24): x_vel = 0
			if (y_vel > 0 and ball_instance.position.y < position.y and abs(ball_instance.position.y-position.y) > 24):
			
				if (abs(ball_instance.position.x-position.x) < 1):
				
					position.x = ball_instance.position.x
				
				elif (ball_instance.position.x < position.x and not k_right):
				
					if (x_vel > 0): x_vel *= -0.25
					elif (x_vel == 0): x_vel -= 1
				
				elif (ball_instance.position.x > position.x and not k_left):
				
					if (x_vel < 0): x_vel *= -0.25
					elif (x_vel == 0): x_vel += 1
				
				y_vel = 0
				fall_timer = 0
			
			if (y_vel < 0 and ball_instance.position.y > position.y and abs(ball_instance.position.y-position.y) > 24): y_vel = 0

func limit_velocity():
	# apply the limits since the velocity may be too extreme
	if (not dead and not stunned):

		if (x_vel > x_vel_limit): x_vel = x_vel_limit
		elif (x_vel < -x_vel_limit): x_vel = -x_vel_limit

	if (y_vel > y_vel_limit): y_vel = y_vel_limit
	elif (y_vel < -y_vel_limit): y_vel = -y_vel_limit

func set_near_zero_velocity_and_acceleration_to_zero():
	# approximates the "active" variables
	if Collision.approximately_zero(x_vel): x_vel=0
	if Collision.approximately_zero(y_vel): y_vel=0
	if Collision.approximately_zero(x_acc): x_acc=0
	if Collision.approximately_zero(y_acc): y_acc=0

func slope_movement_preparation():
	# prepares the character to move up a hill
	# we need to use the "slope_y_prev" variable later to know the "true" position.y previous value
	# keep this condition the same
	if max_slope>0 and platform_character_is(ON_GROUND) and x_vel!=0:

		slope_y_prev=position.y #----- changing for loop for now
		for y in range(position.y, slope_y_prev - max_slope - 1, -1):
			if col_top:
				break
			slope_change_in_y=slope_y_prev-position.y

	else:
		slope_change_in_y=0

func handle_basic_movement():
	# moves the character, and balances out the effects caused by other processes
	# keep this condition the same
	if max_slope*abs(x_vel)>0 and platform_character_is(ON_GROUND):

	  # we need to check if we should dampen out the speed as the character runs on upward slopes:
		x_prev=position.x
		y_prev=slope_y_prev       # we don't want to use position.y, because position.y is too high
		y_prev_high=position.y            # we'll use the higher previous variable later
		move_to(x_vel,y_vel+slope_change_in_y)
		var dist=gml.point_distance(x_prev,y_prev,position.x,position.y)# overall distance that has been traveled
	  # we should have only ran at x_vel
		if dist>abs(x_vel_integer):
		  
			# show_message(string(dist)+ " "+string(abs(x_vel_integer)))
			var excess=dist-abs(x_vel_integer)
			if(x_vel_integer<0):
				excess*=-1
			# move back since the character moved too far
			position.x=x_prev
			position.y=y_prev_high     # we need the character to be high so the character can move down
			# this time we'll move the correct distance, but we need to shorten out the x_vel a little
			# these lines can be changed for different types of slowing down when running up hills
			var ratio=abs(x_vel_integer)/dist*0.9        #can be changed
			move_to( round(x_vel_integer*ratio),round(y_vel_integer*ratio+slope_change_in_y))
	  

	else:

	  # we simply move x_vel and y_vel while in the air or on a ladder:
		move_to(x_vel,y_vel)

func move_character_down_slope():
	# move the character downhill if possible:
	# we need to multiply max_down_slope by the absolute value of x_vel since the character normally runs at an x_vel larger than 1
	if not col_bot and max_down_slope>0 and x_vel_integer!=0 and platform_character_is(ON_GROUND):

	  #the character is floating just above the slope, so move the character down
		var up_y_prev=position.y # --- Checking how this loop below is originally handled
		for y in range (0, up_y_prev + max_down_slope, 1):
			if col_bot:             # we hit a solid below:
				up_y_prev=position.y           # I know that this doesn't seem to make sense, because of the name of the variable, but it all works out correctly after we break out of this loop
				break 				  #out of this loop
		position.y=up_y_prev

func get_character_sprite_index():
	#figures out what the sprite index of the character should be
	character_sprite()

func set_prev_and_prev_prev_states():
	#sets the previous state and the previously previous state
	state_prev_prev = state_prev
	state_prev = state

func set_image_speed():
	#calculates the image_speed based on the character's velocity
	if (state == RUNNING or state == DUCKING or state == LOOKING_UP):

		if (state == RUNNING or state == LOOKING_UP): image_speed = abs(x_vel) * run_anim_speed + 0.1


	if (state == CLIMBING): image_speed = sqrt(gml.sqr(abs(x_vel))+gml.sqr(abs(y_vel))) * climb_anim_speed
	if (x_vel >= 4 or x_vel <= -4):

		image_speed = 1
		if (platform_character_is(ON_GROUND)): Collision.set_collision_bounds(self, -8, -8, 8, 8)
		else: Collision.set_collision_bounds(self, -5, -8, 5, 8)

	else: Collision.set_collision_bounds(self, -5, -8, 5, 8)
	if (whipping): image_speed = 1
	if (state == DUCKTOHANG):

		image_index = 0
		image_speed = 0.8

	#limit the image_speed at 1 so the animation always looks good
	if (image_speed > 1): image_speed = 1

func alarm_0(frames):
	if alarm_0_active == false:
		if frames > 0:
			alarm_0_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			
			if (InLevel.is_room("r_tutorial")):

			# do nothing
				pass
				
			elif (global.dark_level):

				if (global.has_crown): global.message = "THE HEDJET SHINES BRIGHTLY."
				else: global.message = "I CAN'T SEE A THING!"
				if (global.has_crown): global.message2 = ""
				else: global.message2 = "I'D BETTER USE THESE FLARES!"
				global.message_timer = 200
				alarm_1(210)

			elif (global.black_market):

				global.message = "WELCOME TO THE BLACK MARKET!"
				global.message2 = ""
				global.message_timer = 200
				alarm_1(210)

			elif (global.snake_pit):

				global.message = "I HEAR SNAKES... I HATE SNAKES!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.cemetary):

				global.message = "THE DEAD ARE RESTLESS!"
				global.message2 = ""
				global.message_timer = 200
				if (global.lake): alarm_1(210)

			elif (global.lake):

				global.message = "I CAN HEAR RUSHING WATER..."
				global.message2 = ""
				global.message_timer = 200

			elif (global.yeti_lair):

				global.message = "IT SMELLS LIKE WET FUR IN HERE!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.alien_craft):

				global.message = "THERE'S A PSYCHIC PRESENCE HERE!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.city_of_gold):

				global.message = "IT'S THE LEGENDARY CITY OF GOLD!"
				global.message2 = ""
				global.message_timer = 200
				if (global.sacrifice_pit): alarm_1(210)

			elif (global.sacrifice_pit):

				global.message = "I CAN HEAR PRAYERS TO KALI!"
				global.message2 = ""
				global.message_timer = 200

			alarm_0_active = false

func alarm_1(frames):
	if alarm_1_active == false:
		if frames > 0:
			alarm_1_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			if (InLevel.is_room("r_tutorial")):

				# do nothing
				pass

			elif (global.snake_pit):

				global.message = "I HEAR SNAKES... I HATE SNAKES!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.cemetary and global.dark_level):

				global.message = "THE DEAD ARE RESTLESS!"
				global.message2 = ""
				global.message_timer = 200
				if (global.lake): alarm_4(210)

			elif (global.lake):

				global.message = "I CAN HEAR RUSHING WATER..."
				global.message2 = ""
				global.message_timer = 200

			elif (global.yeti_lair):

				global.message = "IT SMELLS LIKE WET FUR IN HERE!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.alien_craft):

				global.message = "THERE'S A PSYCHIC PRESENCE HERE!"
				global.message2 = ""
				global.message_timer = 200

			elif (global.city_of_gold):

				global.message = "IT'S THE LEGENDARY CITY OF GOLD!"
				global.message2 = ""
				global.message_timer = 200
				if (global.sacrifice_pit): alarm_4(210)

			elif (global.sacrifice_pit):

				global.message = "I CAN HEAR PRAYERS TO KALI!"
				global.message2 = ""
				global.message_timer = 200
			
			alarm_1_active = false

func alarm_2(frames):
	if alarm_2_active == false:
		if frames > 0:
			alarm_2_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			if (climb_snd_toggle): Audio.play_sound(global.snd_climb1)
			else: Audio.play_sound(global.snd_climb2)
			climb_snd_toggle = not climb_snd_toggle
			
			alarm_2_active = false
			
func alarm_3(frames):
	if alarm_3_active == false:
		if frames > 0:
			alarm_3_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			if (walk_snd_toggle): Audio.play_sound(global.snd_step1)
			else: Audio.play_sound(global.snd_step2)
			walk_snd_toggle = not walk_snd_toggle
			
			alarm_3_active = false

func alarm_4(frames):
	if alarm_4_active == false:
		if frames > 0:
			alarm_4_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			if (global.lake):

				global.message = "YOU HEAR RUSHING WATER..."
				global.message2 = ""
				global.message_timer = 200

			elif (global.sacrifice_pit):

				global.message = "I CAN HEAR PRAYERS TO KALI!"
				global.message2 = ""
				global.message_timer = 200
			
			alarm_4_active = false

func alarm_10(frames):
	if alarm_10_active == false:
		if frames > 0:
			alarm_10_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			var obj = gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), "flare_spark")
			obj.y_vel = randi_range(1,3)
			obj.x_vel = randi_range(0,3) - randi_range(0,3)
			Audio.play_sound(global.snd_jetpack)
			
			alarm_10_active = false

func alarm_11(frames):
	if alarm_11_active == false:
		if frames > 0:
			alarm_11_active = true
			var alarm_value = frames
			var countdown_time = frames / 30
			gml.alarm_timeout(countdown_time)
			
			if (hold_arrow > 0):

				hold_arrow_toggle = not hold_arrow_toggle
				alarm_11(1)
			
			alarm_11_active = false

func platform_character_is(character_trait): #--- putting this here instead of PlatformEngine to make things easier
	#/*
	#Returns whether a GENERAL trait about a character is true.
	#Only the platform character should run this script. 
#
	#argument0 can be one of the following:
	#ON_GROUND
	#IN_AIR
	#ON_LADDER
#
	#Example of usage:
	#Event: character collides with goomba
	#Action: if platform_character_is(ON_GROUND): gml.instance_destroy()
	#*/

	#if (character_trait==ON_GROUND) and (state==RUNNING or state==STANDING or state==DUCKING or state==LOOKING_UP):
		#return 1
	#if (character_trait==IN_AIR) and (state==JUMPING or state==FALLING):
		#return 1
	#if (character_trait==ON_LADDER) and (state==CLIMBING):
		#return 1
	#return 0
	
	#--- changing this for now since 'and' and 'or' might work differently in GDScript
	if (character_trait==ON_GROUND):
		if (state==RUNNING or state==STANDING or state==DUCKING or state==LOOKING_UP):
			return 1
	if (character_trait==IN_AIR):
		if (state==JUMPING or state==FALLING):
			return 1
	if (character_trait==ON_LADDER):
		if (state==CLIMBING):
			return 1
	return 0

func character_sprite():
	#
	# character_sprite()
	#
	# Sets the sprite of the character depending on his/her status
	#

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or %ify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
		#
	#***********************************************************************************/

	if (global.is_tunnel_man and not stunned and not whipping):

		if (state == STANDING):
		
			if (not gml.collision_point(position.x-2, position.y+9, "solid", 0, 0)):
			
				image_speed = 0.6
				sprite_index = "tunnel_whoa_l"
			
			else: sprite_index = "tunnel_left"
		
		if (state == RUNNING):
		 
			if (k_up): sprite_index = "tunnel_look_run_l"
			else: sprite_index = "tunnel_run_l"
		
		if (state == DUCKING):
		
			if (x_vel == 0): sprite_index = "tunnel_duck_l"
			elif (abs(x_vel) < 3): sprite_index = "tunnel_crawl_l"
			else: sprite_index = "tunnel_run_l"
		
		if (state == LOOKING_UP):
		
			if (abs(x_vel)>0): sprite_index = "tunnel_run_l"
			else: sprite_index = "tunnel_look_l"
		
		if (state == JUMPING):
			sprite_index = "tunnel_jump_l"
		if (state == FALLING and state_prev == FALLING and state_prev_prev == FALLING):
			sprite_index = "tunnel_fall_l"
		if (state == HANGING):
			sprite_index = "tunnel_hang_l"
		if (push_timer > 20):
			sprite_index = "tunnel_push_l"
		if (state == DUCKTOHANG):
			sprite_index = "tunnel_dt_hl"
		if (state == CLIMBING):
		
			if (gml.collision_point(position.x,position.y,'rope',0,0)):
			
				if (k_down): sprite_index = "tunnel_climb3"
				else: sprite_index = "tunnel_climb2"
			
			else: sprite_index = "tunnel_climb"
		

	elif (global.is_damsel and not stunned and not whipping):

		if (state == STANDING):
		
			if (not gml.collision_point(position.x-2, position.y+9, "solid", 0, 0)):
			
				image_speed = 0.6
				sprite_index = "damsel_whoa_l"
				#/*
				#if (hold_item and whoa_timer < 1):
				#
					#hold_item.held = false
					#if (facing == LEFT): hold_item.x_vel = -2
					#else: hold_item.x_vel = 2
					#if (hold_item.type == "Damsel"): Audio.play_sound(global.snd_damsel)
					#if (hold_item.type == pickup_item_type):
					#
						#hold_item = null
						#pickup_item_type = ""
					#
					#else: CharacterScripts.scr_hold_item(pickup_item_type)
				#
				#*/
			
			else: sprite_index = "damsel_left"
		
		if (state == RUNNING):
		 
			if (k_up): sprite_index = "damsel_run_l"
			else: sprite_index = "damsel_run_l"
		
		if (state == DUCKING):
		
			if (x_vel == 0): sprite_index = "damsel_duck_l"
			elif (abs(x_vel) < 3): sprite_index = "damsel_crawl_l"
			else: sprite_index = "damsel_run_l"
		
		if (state == LOOKING_UP):
		
			if (abs(x_vel)>0): sprite_index = "damsel_run_l"
			else: sprite_index = "damsel_look_l"
		
		if (state == JUMPING):
			sprite_index = "damsel_die_lr"
		if (state == FALLING and state_prev == FALLING and state_prev_prev == FALLING):
			sprite_index = "damsel_fall_l"
		if (state == HANGING):
			sprite_index = "damsel_hang_l"
		if (push_timer > 20):
			sprite_index = "damsel_push_l"
		if (state == DUCKTOHANG):
			sprite_index = "damsel_dt_hl"
		if (state == CLIMBING):
		
			if (gml.collision_point(position.x,position.y,'rope',0,0)):
			
				if (k_down): sprite_index = "damsel_climb3"
				else: sprite_index = "damsel_climb2"
			
			else: sprite_index = "damsel_climb"
		

	elif (not stunned and not whipping):
		 
		if (state == STANDING):
		
			if (not gml.collision_point(position.x-2, position.y+9, "solid", 0, 0)):
			
				image_speed = 0.6
				sprite_index = "whoa_left"
				#/*
				#if (hold_item and whoa_timer < 1):
				#
					#hold_item.held = false
					#if (facing == LEFT): hold_item.x_vel = -2
					#else: hold_item.x_vel = 2
					#if (hold_item.type == "Damsel"): Audio.play_sound(global.snd_damsel)
					#if (hold_item.type == pickup_item_type):
					#
						#hold_item = null
						#pickup_item_type = ""
					#
					#else: CharacterScripts.scr_hold_item(pickup_item_type)
				#
				#*/
			
			else: sprite_index = 'stand_left'
		
		if (state == RUNNING):
		 
			if (k_up): sprite_index = "look_run_l"
			else: sprite_index = 'run_left'
		
		if (state == DUCKING):
		
			if (x_vel == 0): sprite_index = 'duck_left'
			elif (abs(x_vel) < 3): sprite_index = 'crawl_left'
			else: sprite_index = "run_left"
		
		if (state == LOOKING_UP):
		
			if (abs(x_vel)>0): sprite_index = "look_run_l"
			else: sprite_index = "look_left"
		
		if (state == JUMPING):
			sprite_index = 'jump_left'
		if (state == FALLING and state_prev == FALLING and state_prev_prev == FALLING):
			sprite_index = "fall_left"
		if (state == HANGING):
			sprite_index = 'hang_left'
		if (push_timer > 20):
			sprite_index = "push_left"
		if (state == CLIMBING):
		
			if (gml.collision_point(position.x,position.y,'rope',0,0)):
			
				if (k_down): sprite_index = "climb_up3"
				else: sprite_index = "climb_up2"
			
			else: sprite_index = "climb_up"
		
		if (state == DUCKTOHANG):
			sprite_index = "duck_to_hang_l"

func move_to(x_vel, y_vel):
	#/*
	#Any object that has the collision bounds set can use this script.
	#(To set the collision bounds, call the script "set_collision_bounds.")
	#If the object collides into a solid when moving the specified distance,
	#the object will stop precisely at the solid.
	#If the object collides into a "moveable solid," it will stop and push the
	#moveable solid.
	#This function also pushes moveable solids and allows the character to land on platforms.
	#Note: First the script moves the object in the x direction, then in
	#the y direction.
	#Once the functin is finished, one can use the x_vel_integer and y_vel_integer variables for
	#more precise calculations inside of the engine.
#
	#0: x distance to move
	#1: y distance to move
	#*/
	
	final_x_vel = 0
	final_y_vel = 0
	
	var mt_x_prev=position.x
	var mt_y_prev=position.y
	##change the decimal arguments to integer variables with relation to time
	var x_vel_frac=gml.frac(abs(x_vel))
	var y_vel_frac=gml.frac(abs(y_vel))
	x_vel_integer=0
	y_vel_integer=0
	if x_vel_frac!=0:
		if round(1/x_vel_frac)!=0:
			if int(time) % int(round(1/x_vel_frac))==0:
				x_vel_integer=1
			else:
				x_vel_integer=0
	if y_vel_frac!=0:
		if round(1/y_vel_frac)!=0:
			if int(time) % int(round(1/y_vel_frac))==0:
				y_vel_integer=1
			else:
				y_vel_integer=0
	x_vel_integer+=floor(abs(x_vel))
	y_vel_integer+=floor(abs(y_vel))
	if x_vel<0:
		x_vel_integer*=-1
	if y_vel<0:
		y_vel_integer*=-1
	x_vel_integer=round(x_vel_integer)
	y_vel_integer=round(y_vel_integer)
	
	#object is moving to the right
	if x_vel_integer>0:
		for x in range(position.x, mt_x_prev + x_vel_integer, 1):
			  
			var solid_id=Collision.get_id_collision_right(1, self)
			#if there is a collision with a solid:
			if solid_id!= null:
				if gml.object_get_parent(solid_id) == 'moveable_solid' and Collision.can_push_moveable_solids(self):
			  
					#we must move the moveable solid, unless there is another solid (moveable or non-moveable) in it's way
					var all_solids = gml.get_all_instances("solid")
					for solid_instance in all_solids:
						if gml.place_meeting(solid_instance.position.x+1,solid_instance.position.y,'solid'):      #there will be a collision!
							#--- is x here referring to the iterator or the node's x position? no idea. going with the position
							break
						else:
							solid_instance.position.x += 1 * get_physics_process_delta_time() * 30         #we're free to move the moveable solid
							if (not SS.is_sound_playing(global.snd_push)): Audio.play_sound(global.snd_push)

				else:
					break
					
			position.x += 1
			final_x_vel += 1
	  
	#object is moving to the left
	#if x_vel_integer<0:
	if x_vel_integer<0:
		for x in range(position.x, mt_x_prev + x_vel_integer, -1):
			var can_move = true
			
			var solid_id = Collision.get_id_collision_left(1, self) # --- [FLAG] assuming this returns a node
			#if there is a collision with a solid:
			if solid_id!=null:
			
				if gml.object_get_parent(solid_id)== 'moveable_solid' and Collision.can_push_moveable_solids(self):
			  
				#we must move the moveable solid, unless there is another solid (moveable or non-moveable) in it's way
					var all_solids = gml.get_all_instances("solid")
					for solid_instance in all_solids:
						if solid_id.gml.place_meeting(solid_id.x-1,solid_id.y,'solid'):      #there will be a collision!
							break
						else:
							solid_instance.position.x += 1 * get_physics_process_delta_time() * 30             #we're free to move the moveable solid
							if (not SS.is_sound_playing(global.snd_push)): Audio.play_sound(global.snd_push)

				else:
					break

			position.x -= 1
			final_x_vel -= 1
			#position.x += mt_x_prev + x_vel_integer - position.x
		#position.x += mt_x_prev + x_vel_integer - position.x * get_physics_process_delta_time() * 30
		
		
	#object is moving down
	if y_vel_integer>0:
		for y in range(position.y, mt_y_prev + y_vel_integer, 1):
			if Collision.is_collision_bottom(1, self):
				break
			if Collision.can_land_on_platforms(self):
				if Collision.is_collision_platform(self)==false and Collision.is_collision_platform_bottom(1, self) and k_down==0:
					break
					
			position.y += 1
			final_y_vel += 1
			
		
	  
	#object is moving up
	if y_vel_integer<0:
		for y in range(position.y, mt_y_prev + y_vel_integer, -1):
			if Collision.is_collision_top(1, self):
				break
				
			position.y -= 1
			final_y_vel -= 1

	# --- sprite position exactly matches character position if character hasn't moved within the frame
	#if test:
		#if mt_x_prev == position.x:
			#animated_sprite_node.position.x = position.x
#
		#if mt_y_prev == position.y:
			#animated_sprite_node.position.y = position.y
#---------------------------------------------------------------------------------------- Test functions
func character_size_test():
	var all_test_rects = get_tree().get_nodes_in_group('test_size')
	for test_rect in all_test_rects:
		test_rect.queue_free()
	
	if collision_bounds_offset_left_x != null:
		var visible_rect = ColorRect.new()
		get_tree().current_scene.add_child(visible_rect)
		visible_rect.global_position = Vector2(global_position.x + collision_bounds_offset_left_x, global_position.y + collision_bounds_offset_top_y)
		visible_rect.size = Vector2(abs(collision_bounds_offset_left_x - collision_bounds_offset_right_x), abs(collision_bounds_offset_bottom_y - collision_bounds_offset_top_y))
		visible_rect.color = Color(0.922, 0.518, 0.188, 0.5)
		visible_rect.add_to_group('test_size')

var timer_started = false
var time = 1
func every_second_timer():
	if timer_started == false:
		timer_started = true
		await get_tree().create_timer(1 / 30).timeout
		time += 1
		timer_started = false

func move_to_test():
	var times_per_second = 0
	for x in range(1, 31):
		#print('X: ' + str(x))
		var x_vel_test = 2.5
		var mt_x_prev=position.x
		var mt_y_prev=position.y
		##change the decimal arguments to integer variables with relation to time
		var x_vel_frac=gml.frac(abs(x_vel_test))
		' x_vel_frac=gml.frac(abs(x_vel_test)): ' + str(gml.frac(abs(x_vel_test)))
		var y_vel_frac=gml.frac(abs(y_vel))
		x_vel_integer=0
		y_vel_integer=0
		if x_vel_frac!=0:
			if round(1/x_vel_frac)!=0:
				if int(x) % int(round(1/x_vel_frac))==0:
					times_per_second += 1
					x_vel_integer=1
				else:
					x_vel_integer=0
		if y_vel_frac!=0:
			if round(1/y_vel_frac)!=0:
				if int(x) % int(round(1/y_vel_frac))==0:
					y_vel_integer=1
				else:
					y_vel_integer=0
		x_vel_integer+=floor(abs(x_vel_test))
		y_vel_integer+=floor(abs(y_vel))
	#print(times_per_second)

func end_step():
	if (hold_item):

		if (state == CLIMBING and (global.has_jetpack or global.has_cape)): hold_item.depth = 51
		else: hold_item.depth = 0


	if (state == DUCKTOHANG and sprite_index != "duck_to_hang_l" and sprite_index != "damsel_dt_hl" and sprite_index != "tunnel_dt_hl"):

		state = STANDING

func draw():
	character_draw_event()
	
func key_backspace_pressed(): #--- debug function that is commented out
	# debug

	#/*
	#Audio.stop_all_music()
	#global.tofu = true
	#global.game_start = true
	#global.curr_level = 16
	#get_tree().change_scene("res://r_olmec.tscn")
	#*/
	pass

func key_enter_pressed(): #--- debug function that is commented out
	# DEBUG

	#/*
	#global.money = 200000
	#global.kills = 120
	#global.damsels = 8
	#*/

	# global.murderer = 1
	# gml.instance_create(position.x-32, position.y, "shotgun")
	# gml.instance_create(position.x-32, position.y, "pistol")
	# gml.instance_create(position.x, position.y, "magma_man")
	# global.money += 100000
	pass

func character_draw_event():
	#/*
	#This event should be placed in the draw event of the platform character.
	#*/
	#draws the sprite
	var draw = true
	if (facing == RIGHT): animated_sprite_node.flip_h = true
	else: animated_sprite_node.flip_h = false

	#if (blink_toggle != 1):
#
		#if ((state == CLIMBING or (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit")) and global.has_jetpack and not whipping):
		#
			#draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
			##draw_sprite(sprite_index,-1,position.x,position.y)
			#draw_sprite(jetpack_back,-1,position.x,position.y)
			#draw = false
		#
		#elif (global.has_jetpack and facing == RIGHT): draw_sprite(jetpack_right,-1,position.x-4,position.y-1)
		#elif (global.has_jetpack): draw_sprite(jetpack_left,-1,position.x+4,position.y-1)
		#if (draw):
		#
			#if (red_color > 0): draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, make_color_rgb(200 + red_color,0,0), image_alpha)
			#else: draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
		#
		#if (facing == RIGHT):
		#
			#if (hold_arrow == ARROW_NORM):
			#
				#draw_sprite(arrow_right, -1, position.x+4, position.y+1)
			#
			#elif (hold_arrow == ARROW_BOMB):
			#
				#if (hold_arrowToggle): draw_sprite(bomb_arrow_right, 0, position.x+4, position.y+2)
				#else: draw_sprite(bomb_arrow_right, 1, position.x+4, position.y+2)
			#
		#
		#elif (facing == LEFT):
		#
			#if (hold_arrow == ARROW_NORM):
			#
				#draw_sprite(arrow_left, -1, position.x-4, position.y+1)
			#
			#elif (hold_arrow == ARROW_BOMB):
			#
				#if (hold_arrowToggle): draw_sprite(bomb_arrow_left, 0, position.x-4, position.y+2)
				#else: draw_sprite(bomb_arrow_left, 1, position.x-4, position.y+2)
			
		

	#/*
	#if can_run:
#
	  #x_offset=80
	  #if player=1:
		#y_offset=120
	  #else:
		#y_offset=143
	  ##draw the "fly_speed" bar, which shows how much speed the character has acquired while holding the "run" button:
	  ##draw_healthbar(view_xview[0]+224+x_offset,view_yview[0]+432+y_offset,view_xview[0]+400+x_offset,view_yview[0]+450+y_offset,fly_speed,make_color_rgb(0,64,128),c_blue,c_aqua,0,1,1)
#
	#*/


func animation_end():
	#--- 'Animation end' event
	var  obj
	
	if (sprite_index == "attack_left" or sprite_index == "damsel_attack_l" or sprite_index == "tunnel_attack_l"):

		whipping = false
		if (hold_item): hold_item.visible = true

	elif (sprite_index == "duck_to_hang_l" or sprite_index == "damsel_dt_hl" or sprite_index == "tunnel_dt_hl"):

		position.y = position.y + 16
		gml.move_snap(1, 8, self)
		x_vel = 0
		y_vel = 0
		x_acc = 0
		y_acc = 0
		grav = 0
		if (facing == LEFT):
		
			obj = gml.collision_point(position.x-8, position.y, "ladder", 0, 0) #---[FLAG] this must return an object
			if (!obj): obj = gml.collision_point(position.x-8, position.y, "ladder_top", 0, 0)
		
		else:
		
			obj = gml.collision_point(position.x+8, position.y, "ladder", 0, 0) #---[FLAG] this must return an object
			if (!obj): obj = gml.collision_point(position.x+8, position.y, "ladder_top", 0, 0)
		
		if (gml.instance_exists(obj)):
		
			state = CLIMBING
			position.x = obj.position.x + 8
		
		elif (facing == LEFT):
		
			state = HANGING
			facing = RIGHT
			position.x = position.x- 6
			position.x += 1
		
		else:
		
			state = HANGING
			facing = LEFT
			position.x = position.x + 6
		

	elif (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit"):

		if (global.collect > 0):
		
			global.money += global.collect
			global.collect = 0
		

		if (p_exit == x_start and global.game_start):
		
			global.game_start = false
			# MiscScripts.scr_clear_globals()
			if (global.curr_level == 16): global.city_of_gold = false
			
			if (global.test_level != ""):
			
				MiscScripts.scr_clear_globals()
				get_tree().change_scene("res://r_level_editor.tscn")
			
			elif (global.curr_level == 5): get_tree().change_scene("res://r_transition1x.tscn")
			elif (global.curr_level == 9): get_tree().change_scene("res://r_transition2x.tscn")
			elif (global.curr_level == 13): get_tree().change_scene("res://r_transition3x.tscn")
			elif (global.level_type == 1): get_tree().change_scene("res://r_transition2.tscn")
			elif (global.level_type == 2): get_tree().change_scene("res://r_transition3.tscn")
			elif (global.level_type == 3): get_tree().change_scene("res://r_transition4.tscn")
			elif (global.level_type == 4): get_tree().change_scene("res://r_transition4.tscn")
			else: get_tree().change_scene("res://r_transition1.tscn")
		
		elif (p_exit == x_start):
		
			global.used_shortcut = false
			global.game_start = true
			if (global.first_time):
			
				global.curr_level = 0
				global.bombs = 0
				global.rope = 2
				global.first_time = false
				get_tree().change_scene("res://r_tutorial.tscn")
			
			elif (global.level_type == 2): get_tree().change_scene("res://r_level2.tscn")
			else: get_tree().change_scene("res://r_level.tscn")
		
		elif (p_exit == x_tutorial):
		
			global.used_shortcut = false
			global.game_start = true
			global.curr_level = 0
			global.bombs = 0
			global.rope = 2
			get_tree().change_scene("res://r_tutorial.tscn")
		
		elif (p_exit == x_scores):
		
			global.game_start = false
			if (InLevel.is_room("r_title")):
				global.scores_start = 0
			elif (InLevel.is_room("r_sun")):
				global.scores_start = 1
			elif (InLevel.is_room("r_moon")):
				global.scores_start = 2
			elif (InLevel.is_room("r_stars")):
				global.scores_start = 3
			else: global.scores_start = 0
			get_tree().change_scene("res://r_highscores.tscn")
		
		elif (p_exit == x_title):
		
			global.game_start = false
			if (InLevel.is_room("r_highscores")):
				global.title_start = 1
			elif (InLevel.is_room("r_tutorial")):
			
				MiscScripts.scr_clear_globals()
				global.title_start = 3
				global.curr_level = 1
				shake_toggle = false
				global.dark_level = false
				global.snake_pit = false
				global.message_timer = 0
				global.mini1 = 0
				global.mini2 = 0
				global.mini3 = 0
				global.has_jordans = false
				global.arrows = 0
			
			get_tree().change_scene("res://r_title.tscn")
		
		elif (p_exit == x_end):
		
			global.game_start = false
			get_tree().change_scene("res://r_end.tscn")
		
		elif (p_exit == x_shortcut5):
		
			global.used_shortcut = true
			global.curr_level = 5
			global.game_start = true
			get_tree().change_scene("res://r_level.tscn")
		
		elif (p_exit == x_shortcut9):
		
			global.used_shortcut = true
			global.curr_level = 9
			global.game_start = true
			get_tree().change_scene("res://r_level2.tscn")
		
		elif (p_exit == x_shortcut13):
		
			global.used_shortcut = true
			global.curr_level = 13
			global.game_start = true
			get_tree().change_scene("res://r_level.tscn")
		
		elif (p_exit == x_sun):
		
			global.game_start = false
			get_tree().change_scene("res://r_sun.tscn")
		
		elif (p_exit == x_moon):
		
			global.game_start = false
			get_tree().change_scene("res://r_moon.tscn")
		
		elif (p_exit == x_stars):
		
			global.game_start = false
			get_tree().change_scene("res://r_stars.tscn")
		
		elif (p_exit == x_change):
		
			global.is_damsel = not global.is_damsel
			active = true
			depth = -50 #--- changing to negative
			invincible = 0
			state = STANDING
			facing = LEFT
			if (global.is_damsel):
			
				global.is_tunnel_man = false
				sprite_index = "damsel_left"
			
			else: sprite_index = "stand_left"
			global.plife = 4
			global.bombs = 4
			global.rope = 4
			x_vel = 0
		
		elif (p_exit == x_change2):
		
			global.is_tunnel_man = not global.is_tunnel_man
			if (global.is_tunnel_man): global.is_damsel = false
			active = true
			depth = -50 #--- changing to negative
			invincible = 0
			state = STANDING
			facing = RIGHT
			if (global.is_tunnel_man):
			
				global.is_damsel = false
				sprite_index = "tunnel_left"
				global.plife = 2
				global.bombs = 0
				global.rope = 0
			
			else:
			
				sprite_index = "stand_left"
				global.plife = 4
				global.bombs = 4
				global.rope = 4
			
			x_vel = 0
			# get_tree().change_scene("res://r_stars.tscn")
		
		
		global.clean_solids = true

#func _on_new_animated_sprite_2d_animation_finished():
	#_on_animated_sprite_2d_animation_finished()

##--- animations loop by default, so animation finish never triggers
#func _on_animated_sprite_2d_animation_looped():
	#_on_animated_sprite_2d_animation_finished()

func _on_animated_sprite_2d_frame_changed():
	if gml.animation_end(self, animated_sprite_node) == true:
		animation_end()
