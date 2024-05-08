extends Character

var game #--- Temporary to solve errors. Make this an autoload

var DYING
var ON_LADDER
var DOWN
var blink
var k_jump_pressed
var player

var first_level_skip
var level_skip
var s_damsel_left
var s_tunnel_left
var active = true #--- Change this back
var dead_counter
var stunned = false #--- Change this back
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
var state = 'RUNNING'
var CLIMBING
var p_dummy5
var x_vel
var y_vel = 0 #--- setting to 0 for now
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
var image_speed = 1 #--- setting to 1 for now
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
var s_attack_left
var s_damsel_attack_l
var s_whip_left
var s_slash_right
var s_mattock_hit_r
var s_slash_left
var s_mattock_hit_l
var s_whip_right
var s_machete_pre_l
var s_machete_pre_r
var s_mattock_pre_l
var s_mattock_pre_r
var s_whip_pre_l
var s_whip_pre_r
var s_chest
var s_chest_open
var s_bomb_armed
var s_crystal_skull
var s_bomb
var s_rope_end
var col_top
var s_die_l_bounce
var s_damsel_hold_l
var s_p_kiss_l
var s_damsel_kiss_l


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
var web
var initial_jump_acc
var grav_norm
var y_acc_limit
var jump_time_total
var UP
var LOOKING_UP
var friction_climbing_x
var friction_climbing_y
var friction_running_fast_x
var friction_running_x
var x_acc_limit
var max_slope
var x_vel_integer
var y_vel_integer
var max_down_slope
var state_prev_prev
var state_prev
var run_anim_speed
var climb_anim_speed
var image_index = 0 #--- This will need to be handled somehow

var rock
var s_spears_left
var s_spikes_blood
var s_damsel_die_l
var s_damsel_bounce_l
var s_damsel_fall_l
var s_damsel_die_l_l
var s_damsel_die_l_r
var s_tunnel_die_l
var s_tunnel_l_bounce
var s_tunnel_fall_l
var s_tunnel_die_l_l
var s_tunnel_die_l_r
var s_die_l
var s_die_l_fall
var s_die_l_l
var s_die_l_r

var s_bombs_get
var s_rope_get
var s_damsel_exit2

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
	#MiscScripts.scr_clear_globals() #---[FLAG] delete this
	
	character_create_event()
	
	# for debugging
	first_level_skip = 1
	level_skip = 1

	if (global.is_damsel): $AnimatedSprite2D.animation = 's_damsel_left'
	elif (global.is_tunnel_man): $AnimatedSprite2D.animation = 's_tunnel_left'

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
	var visible_rect = ColorRect.new()
	get_tree().current_scene.add_child(visible_rect)
	visible_rect.global_position = Vector2(position.x, position.y)
	#print(visible_rect.position.y)
	#print(position.y)
	visible_rect.size = Vector2(1, 1)
	visible_rect.color = Color(0.322, 0.518, 0.188, 0.5)
	
	#--- Declaring certain variables unique to this function
	var k_bomb_pressed
	var k_rope_pressed
	var in_game
	var col_spikes
	var money
	var collect
	
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
		gml.instance_destroy(self)


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

		var source = gml.instance_nearest(position.x, position.y, 'explosion')
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
	if ($AnimatedSprite2D.animation == 's_whoa_left' or $AnimatedSprite2D.animation == 's_damsel_whoa_l' or $AnimatedSprite2D.animation == 's_tunnel_whoa_l'):

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

		if (stun_timer > 0 and ($AnimatedSprite2D.animation == 's_stun_l' or $AnimatedSprite2D.animation == 's_damsel_stun_l' or $AnimatedSprite2D.animation == 's_tunnel_stun_l')):
		
			image_speed = 0.4
			stun_timer -= 1
		
		
		if (stun_timer < 1 and ($AnimatedSprite2D.animation == 's_stun_l' or $AnimatedSprite2D.animation == 's_damsel_stun_l' or $AnimatedSprite2D.animation == 's_tunnel_stun_l')):
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
		
		
		if (state != DUCKTOHANG and not stunned and not dead and $AnimatedSprite2D.animation != 's_p_exit' and $AnimatedSprite2D.animation != 's_damsel_exit' and $AnimatedSprite2D.animation != 's_tunnel_exit'):
		
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

#-------------------Start of second code segment
#Action
	if (dead):

		k_attack_pressed = ControlScripts.check_attack_pressed()


	if (global.plife > 0): k_bomb_pressed = ControlScripts.check_bomb_pressed()
	else: k_bomb_pressed = false

	if (global.plife > 0): k_rope_pressed = ControlScripts.check_rope_pressed()
	else: k_rope_pressed = false

	var k_pay_pressed = ControlScripts.check_pay_pressed()
	# k_flare_pressed = check_flare_pressed()

	if ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == LEFT and image_index > 4 and gml.instance_number('whip') == 0):

		if (hold_item):
		
			if (hold_item.type == "Machete"):
			
				var obj = gml.instance_create(position.x-16, position.y, "slash")
				obj.sprite_index = s_slash_left
				Audio.play_sound(global.snd_whip)
			
			elif (hold_item.type == "Mattock"):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_hit")
				obj.sprite_index = s_mattock_hit_l
				Audio.play_sound(global.snd_whip)
			
		
		else:
		
			if (global.is_tunnel_man):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_hit")
				obj.sprite_index = s_mattock_hit_l
				Audio.play_sound(global.snd_whip)
			
			else:
			
				var obj = gml.instance_create(position.x-16, position.y, "whip")
				obj.sprite_index = s_whip_left
				Audio.play_sound(global.snd_whip)
			
		

	elif ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == RIGHT and image_index > 4 and gml.instance_number('whip') == 0):

		if (hold_item):
		
			if (hold_item.type == "Machete"):
			
				var obj = gml.instance_create(position.x+16, position.y, "slash")
				obj.sprite_index = s_slash_right
				Audio.play_sound(global.snd_whip)
			
			elif (hold_item.type == "Mattock"):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_hit")
				obj.sprite_index = s_mattock_hit_r
				Audio.play_sound(global.snd_whip)
			
		
		else:
		
			if (global.is_tunnel_man):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_hit")
				obj.sprite_index = s_mattock_hit_r
				Audio.play_sound(global.snd_whip)
			
			else:
			
				var obj = gml.instance_create(position.x+16, position.y, "whip")
				obj.sprite_index = s_whip_right
				Audio.play_sound(global.snd_whip)
			
		


	if (hold_item):

		if (hold_item.type == "Machete"):
		
			if ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == LEFT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x+16, position.y, "machete_pre")
				obj.sprite_index = s_machete_pre_l
			
			elif ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == RIGHT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x-16, position.y, "machete_pre")
				obj.sprite_index = s_machete_pre_r
			
		
		elif (hold_item.type == "Mattock"):
		
			if ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == LEFT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x+16, position.y, "mattock_pre")
				obj.sprite_index = s_mattock_pre_l
			
			elif ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == RIGHT and image_index < 2 and gml.instance_number('machete_pre') == 0):
			
				var obj = gml.instance_create(position.x-16, position.y, "mattock_pre")
				obj.sprite_index = s_mattock_pre_r
			
		

	elif (sprite_index == s_tunnel_attack_l and image_index < 2 and gml.instance_number('mattock_pre') == 0):

		if (facing == LEFT):
		
			var obj = gml.instance_create(position.x+16, position.y, "mattock_pre")
			obj.sprite_index = s_mattock_pre_l
		
		else:
		
			var obj = gml.instance_create(position.x-16, position.y, "mattock_pre")
			obj.sprite_index = s_mattock_pre_r
		

	elif ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == LEFT and image_index < 2 and gml.instance_number('whip_pre') == 0):

		var obj = gml.instance_create(position.x+16, position.y, "whip_pre")
		obj.sprite_index = s_whip_pre_l

	elif ((sprite_index == s_attack_left or sprite_index == s_damsel_attack_l or sprite_index == s_tunnel_attack_l) and facing == RIGHT  and image_index < 2 and gml.instance_number('whip_pre') == 0):

		var obj = gml.instance_create(position.x-16, position.y, "whip_pre")
		obj.sprite_index = s_whip_pre_r


	if (not whipping):

		var all_whips = gml.get_all_instances("whip")
		for whip_instance in all_whips: gml.instance_destroy(whip_instance)
		
		var all_whip_pres = gml.get_all_instances("whip_pre")
		for whip_pre_instance in all_whip_pres: gml.instance_destroy(whip_pre_instance)


	if (hold_item > 0):

		if (hold_item.cost > 0 and InLevel.is_level()):
		
			if (global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] != 4 and global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] != 5):
			
				CharacterScripts.scr_steal_item()
				if (gml.instance_exists("shopkeeper")):
				
					InLevel.scr_shopkeeper_anger(0, position.x, position.y)
				
			
		
		elif (hold_item.cost > 0):
		
			CharacterScripts.scr_steal_item()
		


	# open chest
	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "chest", 0, 0)):

		if (InLevel.is_real_level()): global.total_chests += 1
		var chest_instance = gml.instance_place(position.x, position.y, 'chest')
		if (chest_instance.sprite_index == s_chest):
		
			chest_instance.sprite_index = s_chest_open
			if (randi_range(1,12) == 1 and global.curr_level > 0):
			
				var obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "bomb")
				obj.x_vel = randi_range(0,3) - randi_range(0,3)
				obj.y_vel = -2
				obj.sprite_index = s_bomb_armed
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
		


	# open crate
	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "crate", 0, 0)):
		var obj
		if (InLevel.is_real_level()): global.total_crates += 1
		var chest_instance = gml.instance_place(position.x, position.y, 'crate')
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
			
			hold_item = 0
			pickup_item_type = ""
			
		chest_instance.gml.instance_create(position.x, position.y, "poof")
		chest_instance.gml.instance_destroy(chest_instance)
			
		k_attack_pressed = false


	# open flare crate

	if (k_up and k_attack_pressed and gml.collision_point(position.x, position.y, "flare_crate", 0, 0)):

		var chest_instance = gml.instance_place(position.x, position.y, 'flare_crate')
		for i in range (0, 3):
		
			var obj = gml.instance_create(chest_instance.position.x, chest_instance.position.y, "flare")
			obj.x_vel = randi_range(0,3)-randi_range(0,3)
			obj.y_vel = randi_range(1,3)*-1
		
		Audio.play_sound(global.snd_pickup)
		if (chest_instance == hold_item):
		
			hold_item = 0
			pickup_item_type = ""
		
		chest_instance.gml.instance_create(position.x, position.y, "poof")
		chest_instance.gml.instance_destroy()
		
		k_attack_pressed = false


	#
	# start game
	#
	if (not dead and
		not stunned and
		not whipping and
		gml.collision_point(position.x, position.y, "x_start", 0, 0) and
		k_up and
		PlatformEngine.platform_character_is(ON_GROUND) and
		sprite_index != s_p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):

		# x_end is the child of x_start, for some reason, that's why this is here:
		if (InLevel.is_room("r_olmec") and hold_item):
		
			if (hold_item.heavy):
			
				hold_item.held = false
				hold_item = 0
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
		hold_item = 0
		pickup_item_type = ""

		var door = gml.instance_place(position.x, position.y, 'x_start')
		if (door): position.x = door.position.x + 8
		if (global.is_damsel): sprite_index = s_damsel_exit
		elif (global.is_tunnel_man): sprite_index = s_tunnel_exit
		else: sprite_index = s_p_exit
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


	#
	# exit level
	#
	if (not dead and
		not stunned and
		not whipping and
		gml.collision_point(position.x, position.y, "exit", 0, 0) and
		k_up and
		PlatformEngine.platform_character_is(ON_GROUND) and
		sprite_index != s_p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):

		hold_arrow = 0
		global.pickup_item = ""
		if (hold_item):
		
			if (hold_item.type == "Gold Idol"):
			
				if (InLevel.is_real_level()): global.idols_converted += 1
				global.money += hold_item.value*(global.level_type+1)
				if (hold_item.sprite_index == s_crystal_skull): global.skulls += 1
				else: global.idols += 1
				Audio.play_sound(global.snd_coin)
				gml.instance_create(position.x, position.y-8, "big_collect")
				hold_item.gml.instance_destroy(hold_item)
				hold_item = 0
			
			elif (hold_item.type == "Damsel"):
			
				if (hold_item.hp > 0):
				
					# global.plife += 1
					if (InLevel.is_real_level()): global.damsels_saved_total += 1
					global.damsels += 1
					global.xdamsels += 1
					var door = gml.instance_place(position.x, position.y, 'exit')
					hold_item.position.x = door.position.x+8
					hold_item.position.y = door.position.y+8
					
					if (global.is_damsel): hold_item.sprite_index = s_p_exit
					else: hold_item.sprite_index = s_damsel_exit
					hold_item.status = 4
					hold_item.held = false
					hold_item.x_vel = 0
					hold_item.y_vel = 0
					hold_item.Audio.play_sound(global.snd_steps)
					hold_item.depth = 1000
					hold_item.active = false
					
					hold_item = 0
				
				else:
				
					hold_item.status = 2
					hold_item.held = false
					hold_item = 0
					pickup_item_type = ""
				
			
			elif (hold_item.heavy):
			
				hold_item.held = false
				hold_item = 0
				pickup_item_type = ""
			
			elif (hold_item.type == "Bomb"):
			
				if (hold_item.armed):
				
					hold_item.held = false
				
				else:
				
					global.bombs += 1
					hold_item.gml.instance_destroy(hold_item)
				
				
				global.pickup_item = pickup_item_type
			
			elif (hold_item.type == "Rope"):
			
				global.rope += 1
				hold_item.gml.instance_destroy(hold_item)
				
				global.pickup_item = pickup_item_type
			
			else:
			
				global.pickup_item = hold_item.type
				hold_item.break_pieces = false
				hold_item.gml.instance_destroy()
				
			
			hold_item = 0
			pickup_item_type = ""
		

		var door = gml.instance_place(position.x, position.y, 'exit')
		if (door):
		
			position.x = door.position.x + 8
			position.y = door.position.y + 8
		
		
		# money
		global.money += global.collect
		global.xmoney += global.collect
		global.collect = 0
		
		if (global.is_damsel): sprite_index = s_damsel_exit
		elif (global.is_tunnel_man): sprite_index = s_tunnel_exit
		else: sprite_index = s_p_exit
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
			
		


	#
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
			
			


	in_game = true
	if (not InLevel.is_level()):

		in_game = false


	if (dead or stunned or not active):

		# do nothing
		pass

	elif (in_game and k_item_pressed and not whipping):
	   
		# match items
		if (hold_item):
		
			if (hold_item.sprite_index == s_bomb_armed):
			
				# do nothing
				pass
			
			elif (hold_item.sprite_index == s_bomb):
				
				hold_item.global.bombs += 1 #--- Double-check if this works
				hold_item.gml.instance_destroy(hold_item)
				
				
				if (global.rope > 0):
				
					hold_item = gml.instance_create(position.x, position.y, "rope_throw")
					hold_item.held = true
					global.rope -= 1
					whoa_timer = whoa_timer_max
				
				else:
				
					CharacterScripts.scr_hold_item(pickup_item_type)
				
			
			elif (hold_item.sprite_index == s_rope_end):
				
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
		obj.sprite_index = s_bomb_armed
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
		
			if (PlatformEngine.platform_character_is(ON_GROUND)): obj.x_vel *= 0.1
			obj.y_vel = 3
		
		
		global.bombs -= 1
		Audio.play_sound(global.snd_throw)

	elif (hold_item == 0):

		if (k_attack_pressed and state != DUCKING and state != DUCKTOHANG and not whipping and
			sprite_index != s_p_exit and sprite_index != s_damsel_exit):
		
			image_speed = 0.6
			if (global.is_tunnel_man):
			
				if (PlatformEngine.platform_character_is(ON_GROUND)):
				
					sprite_index = s_tunnel_attack_l
					image_index = 0
					whipping = true
				
			
			elif (global.is_damsel):
			
				sprite_index = s_damsel_attack_l
				image_index = 0
				whipping = true
			
			else:
			
				sprite_index = s_attack_left
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
							
								var dist = gml.distance_tobject('character', trap_block_instance.x, trap_block_instance.y)
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
								
									var dist = gml.distance_tobject('character', trap_block_instance.x, trap_block_instance.y)
									if (dist < 90):
									
										gml.instance_destroy(trap_block_instance)
									
									trap_block_instance.Audio.play_sound(global.snd_thump)
									trap_block_instance.InLevel.scr_shake(10)
								
							
					
							hold_item.trigger = false
						
					
					elif (hold_item.type == "Damsel"):
					
						if (hold_item.status == 4): # exiting
						
							hold_item = 0
							hold_item.held = false
						
						else:
						
							if (global.is_damsel): hold_item.sprite_index = s_die_l_bounce
							else: hold_item.sprite_index = s_damsel_hold_l
						
					
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
				#hold_item = 0
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
					hold_item = 0
					pickup_item_type = ""
					n = 1
				
				else:
				
					if (InLevel.is_real_level()): global.items_bought += 1
					global.money -= hold_item.cost
					CharacterScripts.scr_steal_item()
					#global.message = "THANK YOU!"
					#global.message2 = ""
					global.message_timer = 80
					# hold_item = 0
				
			
			
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
				
			
			
			if (shopkeeper.style == "Kissing" and gml.distance_tobject('damsel', position.x, position.y) < 16):
			
				var obj = gml.instance_nearest(position.x, position.y, 'damsel')
				if (global.thief_level > 0 or global.murderer or not obj.for_sale):
				
					# do nothing
					pass
				
				elif (n == 0 and global.money >= InLevel.get_kiss_value()):
				
					if (obj.for_sale and not obj.held):
					
						if (InLevel.is_real_level()): global.kisses_bought += 1
						obj.status = 6
						if (global.is_damsel):
						
							obj.sprite_index = s_p_kiss_l
						
						else:
						
							obj.sprite_index = s_damsel_kiss_l
						
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
				
			
		



	if (k_attack and bow_armed and bow_strength < 12):

		bow_strength += 0.2
		if (not hold_item):
		
			bow_armed = false
			bow_strength = 0
			if (SS.is_sound_playing(global.snd_bow_pull)): SS.stop_sound(global.snd_bow_pull)
		
		hold_arrow = ARROW_NORM


	if (k_attack_released and bow_armed):

		CharacterScripts.scr_fire_bow()

	#Hurt
	if (global.plife < -10000): global.plife = -10000

	if (global.plife < -99 and visible):

		MiscScripts.scr_create_blood(position.x, position.y, 3)
		visible = false


	if (global.plife >= -99 and visible and sprite_index != s_p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):

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


		var obj = gml.collision_rectangle(position.x-6, position.y-6, position.x+6,  position.y+7, "spears_left", 0, 0) #instance_nearest(position.x, position.y, spears_left) ---[FLAG] doesn't seem to be used for anything but come back and check this
		if (obj):

			if (obj.image_index >= 20 and obj.image_index < 24):
			
				if (global.plife > 0 and InLevel.is_real_level()):  global.misc_deaths[7] += 1
			
				# stunned = true
				# bounced  = false
				global.plife -= 4
				if (obj.sprite_index == s_spears_left): x_vel = -randi_range(4,6)
				else: x_vel = randi_range(4,6)
				y_vel = -6
				position.y -= 1
				# state = FALLING
				
				MiscScripts.scr_create_blood(position.x, position.y, 1)
			


		if (gml.collision_rectangle(position.x-6, position.y-6, position.x+6,  position.y+7, "smash_trap", 0, 0)):

			if (global.plife > 0 and InLevel.is_real_level()): global.misc_deaths[8] += 1

			obj = gml.instance_nearest(position.x, position.y, 'smash_trap')
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
				hold_item = 0


		obj = gml.collision_rectangle(position.x-2, position.y-9, position.x+2,  position.y-7, "ceiling_trap", 0, 0) #instance_nearest(position.x, position.y-8, ceiling_trap)
		if (obj):

			if (obj.status > 0):
			
				if (global.plife > 0 and InLevel.is_real_level()): global.misc_deaths[9] += 1

				global.plife -= 10
				MiscScripts.scr_create_blood(position.x, position.y, 1)
			


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
			

			obj = gml.instance_place(position.x, position.y, 'spikes')
			if (obj):
			
				obj.sprite_index = s_spikes_blood
		

	#elif (not dead): my_grav = 0.6


	if ((dead or stunned) and hold_item != 0):

		hold_item.held = false
		
		hold_item.x_vel = x_vel
		hold_item.y_vel = -6
		hold_item.armed = true
		if (hold_item.type == "Damsel"):
		
			hold_item.status = 2
		
		elif (hold_item.type == "Bow"):
		
			CharacterScripts.scr_fire_bow()
		
		
		if (hold_item.type == pickup_item_type):
		
			hold_item = 0
			pickup_item_type = ""
		
		else: CharacterScripts.scr_hold_item(pickup_item_type)


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
			
				if (dead): sprite_index = s_damsel_die_l
				elif (stunned): sprite_index = s_damsel_stun_l
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = s_damsel_bounce_l
				else: sprite_index = s_damsel_fall_l
			
			else:
			
				if (x_vel < 0): sprite_index = s_damsel_die_l_l
				else: sprite_index = s_damsel_die_l_r
			
		
		elif (global.is_tunnel_man):
		
			if (x_vel == 0):
			
				if (dead): sprite_index = s_tunnel_die_l
				elif (stunned): sprite_index = s_tunnel_stun_l
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = s_tunnel_l_bounce
				else: sprite_index = s_tunnel_fall_l
			
			else:
			
				if (x_vel < 0): sprite_index = s_tunnel_die_l_l
				else: sprite_index = s_tunnel_die_l_r
			
		
		else:
		
			if (x_vel == 0):
			
				if (dead): sprite_index = s_die_l
				elif (stunned): sprite_index = s_stun_l
			
			elif (bounced):
			
				if (y_vel < 0): sprite_index = s_die_l_bounce
				else: sprite_index = s_die_l_fall
			
			else:
			
				if (x_vel < 0): sprite_index = s_die_l_l
				else: sprite_index = s_die_l_r
			
		
		
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
			
		
		
		if (Collision._collision_bottom(1, self) and not bounced):
		
			bounced = true
			for i in range(0, 3):
			
				MiscScripts.scr_create_blood(self.position.x, self.position.y, 1) #--- same as above with changing 'other' to 'self'
			
			
			if (wall_hurt > 0):
			
				global.plife -= 1
				wall_hurt -= 1
				
	# DIED

	if (dead and dead_counter > 0): dead_counter -= 1

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

	#Fifth function
	if (not dead and invincible > 0):
		invincible -= 1
	  
	if (blink > 0):

		blink_toggle *= -1
		blink -= 1

	else: blink_toggle = -1

	#/*
	#if (sprite_index == s_slide_right):
#
		#spark = gml.instance_create(position.x, position.y, "ground_spark")
		#with spark  position.x += random(3)
#
	#elif (sprite_index == s_slide_left):
#
		#spark = gml.instance_create(position.x, position.y, "ground_spark")
		#with spark  sprite_index = sSpark_left position.x += random(3)
#
	#*/
	
	#Collect
	money = global.money

	if (global.collect_counter == 0):

		if (global.collect > 100):
		
			global.money += 100
			global.collect -= 100
		
		else: 
		
			global.money += global.collect
			global.collect -= global.collect
		

	else:

		global.collect_counter -= 1


	if (hold_item):

		if (hold_item.type == "Bow"):
		
			if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "arrow", 0, 0) and not dead and not stunned):
			
				var obj = gml.instance_nearest(position.x, position.y, 'arrow')
				if (abs(obj.x_vel) < 1 and abs(obj.y_vel) < 1 and not obj.stuck):
				
					global.arrows += 1
					Audio.play_sound(global.snd_pickup)
					gml.instance_destroy(obj) 
				
			
		


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
		


	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_bag", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_bag", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.bombs += 3
			var disp = gml.instance_create(obj.position.x, obj.position.y-14, "items_get")
			disp.sprite_index = s_bombs_get
			gml.instance_destroy(obj) 
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 3 MORE BOMBS!"
			global.message2 = ""
			global.message_timer = 120
		


	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_box", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "bomb_box", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.bombs += 12
			var disp = gml.instance_create(obj.position.x, obj.position.y-14, "items_get")
			disp.sprite_index = s_bombs_get
			gml.instance_destroy(obj) 
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 12 MORE BOMBS!"
			global.message2 = ""
			global.message_timer = 120
		


	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "rope_pile", 0, 0) and not dead and not stunned):

		var obj = gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "rope_pile", 0, 0)
		if (not obj.held and obj.cost == 0 and not gml.collision_point(obj.position.x, obj.position.y, "solid", 0, 0)):
		
			global.rope += 3
			var disp = gml.instance_create(obj.position.x, obj.position.y-15, "items_get")
			disp.sprite_index = s_rope_get
			gml.instance_destroy(obj) 
			Audio.play_sound(global.snd_pickup)
			global.message = "YOU GOT 3 MORE ROPES!"
			global.message2 = ""
			global.message_timer = 120
		


	if (gml.collision_point(position.x, position.y, "exit", 0, 0)):

		if (hold_item != 0):
		
			collect = false
			if (hold_item.type == "Gold Idol"):
			
				if (InLevel.is_real_level()): global.idols_converted += 1
				global.collect += hold_item.value*(global.level_type+1)
				global.collect_counter += 20
				if (global.collect_counter > 100): global.collect_counter = 100
				if (hold_item.sprite_index == s_crystal_skull): global.skulls += 1
				else: global.idols += 1
				Audio.play_sound(global.snd_coin)
				gml.instance_create(position.x, position.y-8, "big_collect")
				gml.instance_destroy(hold_item) #---[FLAG] hold_item should be set to the string of the item name 
				hold_item = 0
			
			elif (hold_item.type == "Damsel"):
			
				if (hold_item.active and hold_item.hp > 0):
				
					if (InLevel.is_real_level()): global.damsels_saved_total += 1
					global.damsels += 1
					global.xdamsels += 1
					var door = gml.instance_place(position.x, position.y, 'exit')
					hold_item.position.x = door.position.x+8
					hold_item.position.y = door.position.y+8

					var hold_item_instance = gml.instance_nearest(position.x, position.y, hold_item)
					
					if (global.is_damsel): hold_item_instance.sprite_index = s_p_exit
					else: hold_item_instance.sprite_index = s_damsel_exit2
					hold_item_instance.status = 4
					hold_item_instance.held = false
					hold_item_instance.x_vel = 0
					hold_item_instance.y_vel = 0
					hold_item_instance.Audio.play_sound(global.snd_steps)
					hold_item_instance.depth = 1000
					hold_item_instance.active = false
					hold_item_instance.can_pick_up = false
					
					hold_item = 0
				
			
		


	global.xmoney += global.money - money


func character_create_event():
	#/*
	#This script should be placed in the "Create Event" of the platform character.
	#It sets the variables needed for the platform character.
	#*/

	var debug = 1

	#constant states that the platform character may be
	STANDING = 10
	RUNNING = 11
	DUCKING = 12
	LOOKING_UP = 13
	CLIMBING = 14
	JUMPING = 15
	FALLING = 16
	DYING = 17
	LEFT = 18
	RIGHT = 19
	ON_GROUND = 20
	IN_AIR = 21
	ON_LADDER = 22
	HANGING = 23
	DUCKTOHANG = 24

	hang_count = 0
	run_held = 0

	# look
	UP = 101
	DOWN = 102

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
	jump_button_released = 0       #whether the jump button was released. (Stops the user from pressing the jump button many times to get extra jumps)
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
	var looking #--- Declaring here since it's only in this script. Doesn't seem to be used anywhere
	var x_fric
	var y_fric
	var slope_y_prev
	var slope_change_in_y
	var y_prev_high
	
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
			$AnimatedSprite2D.animation == 's_tunnel_attack_l' and
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
		var ladder_instance = gml.collision_point(position.x, position.y, 'ladder', 0, 0)
		if (ladder_instance): position.x = ladder_instance.x + 8

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
	if (col_bot == false and (not col_plat_bot or col_plat) and PlatformEngine.platform_character_is(ON_GROUND)):

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


	if (k_jump_pressed and gml.collision_point(position.x, position.y, 'web', 0, 0)):

		var obj = gml.instance_place(position.x, position.y, web)
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

	elif (global.has_cape and k_jump_pressed and k_jumped and PlatformEngine.platform_character_is(IN_AIR)):

		if (not cape.open): cape.open = true
		else: cape.open = false

	elif (global.has_jetpack and k_jump and k_jumped and PlatformEngine.platform_character_is(IN_AIR) and jetpack_fuel > 0):

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
		jump_button_released = 0
		jump_time = 0


	if (jump_time < jump_time_total): jump_time += 1
	#let the character continue to jump
	if (k_jump == false): jump_button_released = 1 #--- putting 'or' here as a simple fix
	if (jump_button_released): jump_time = jump_time_total

	gravity_intensity = (jump_time/jump_time_total) * grav

	if (k_up and PlatformEngine.platform_character_is(ON_GROUND) and not col_ladder):

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

			if (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_right and col_right and
				(gml.collision_point(position.x+9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'solid', 0, 0))):
			
				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0
			
			elif (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_left and col_left and
				(gml.collision_point(position.x-9, position.y-5, solid, 0, 0) or gml.collision_point(position.x-9, position.y-6, solid, 0, 0))):
			
				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0
			

		elif (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(position.x+9, position.y-5, 'tree', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'tree', 0, 0))):

			state = HANGING
			gml.move_snap(1, 8, self)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(position.x-9, position.y-5, 'tree', 0, 0) or gml.collision_point(position.x-9, position.y-6, 'tree', 0, 0))):

			state = HANGING
			gml.move_snap(1, 8, self)
			y_vel = 0
			y_acc = 0
			grav = 0

		elif (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_right and col_right and
			(gml.collision_point(position.x+9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x+9, position.y-6, 'solid', 0, 0)) and
			not gml.collision_point(position.x+9, position.y-9, 'solid', 0, 0) and not gml.collision_point(position.x, position.y+9, 'solid', 0, 0)):

				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0

		elif (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and k_left and col_left and
			(gml.collision_point(position.x-9, position.y-5, 'solid', 0, 0) or gml.collision_point(position.x-9, position.y-6, 'solid', 0, 0)) and
			not gml.collision_point(position.x-9, position.y-9, 'solid', 0, 0) and not gml.collision_point(position.x, position.y+9, 'solid', 0, 0)):

				state = HANGING
				gml.move_snap(1, 8, self)
				y_vel = 0
				y_acc = 0
				grav = 0


		if (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and state == FALLING and
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
		#if (hang_count == 0 and position.y > 16 and !PlatformEngine.platform_character_is(ON_GROUND) and state == FALLING and:
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


	# pressing down while standing:
	if (k_down and PlatformEngine.platform_character_is(ON_GROUND) and not whipping):

		if (col_bot):
		
			state = DUCKING
		
		elif col_plat_bot:
		
			# climb down ladder if possible:, else: jump down
			fall_timer = 0
			if (not col_bot):
			
				#ladder_instance = 0 #--- Setting to zero seems to do nothing, so commenting out
				var ladder_instance = gml.instance_place(position.x, position.y+16, 'ladder')
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
			
		

	if (not k_down and state == DUCKING):

		state = STANDING
		x_vel = 0
		x_acc = 0

	if (x_vel == 0 and x_acc == 0 and state == RUNNING):

		state = STANDING

	if (x_acc != 0 and state == STANDING):

		state = RUNNING

	if (y_vel < 0 and PlatformEngine.platform_character_is(IN_AIR) and state != HANGING):

		state = JUMPING

	if (y_vel > 0 and PlatformEngine.platform_character_is(IN_AIR) and state != HANGING):

		state = FALLING
		Collision.set_collision_bounds(self, -5, -6, 5, 8)

	else: Collision.set_collision_bounds(self, -5, -8, 5, 8)

	# CLIMB LADDER
	var col_point_ladder = gml.collision_point(position.x, position.y, 'ladder', 0, 0) or gml.collision_point(position.x, position.y, 'ladderTop', 0, 0)

	if ((k_up and PlatformEngine.platform_character_is(IN_AIR) and gml.collision_point(position.x, position.y-8, 'ladder', 0, 0) and ladder_timer == 0) or
		(k_up and col_point_ladder and ladder_timer == 0) or
		(k_down and col_point_ladder and ladder_timer == 0 and PlatformEngine.platform_character_is(ON_GROUND) and gml.collision_point(position.x, position.y+9, 'ladder_top', 0, 0) and x_vel == 0)):

		#ladder = 0 #--- Setting to zero seems to do nothing, so commenting out
		var ladder_instance = gml.instance_place(position.x, position.y-8, 'ladder')
		if (gml.instance_exists('ladder')):
		
			if (abs(position.x-(ladder_instance.position.x+8)) < 4):
			
				position.x = ladder_instance.position.x + 8
				if (not gml.collision_point(position.x, position.y, 'ladder', 0, 0) and
					not gml.collision_point(position.x, position.y, 'ladder_top', 0, 0)):
				
					position.y = ladder_instance.position.y + 14
				

				x_vel = 0
				y_vel = 0
				x_acc = 0
				y_acc = 0
				state = CLIMBING
			
		


	#/*
	#if (sprite_index == s_duck_thang_l or sprite_index == s_damsel_dt_hl):
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

	# Calculate horizontal/vertical friction
	if (state == CLIMBING):

		x_fric = friction_climbing_x
		y_fric = friction_climbing_y

	else:

		if (run_key and PlatformEngine.platform_character_is(ON_GROUND) and run_held >= 10):
		
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
			
			elif (k_left and global.down_trun): # run
			
				x_vel -= 0.1
				x_vel_limit = 6
				x_fric = friction_running_fast_x
			
			elif (k_right and global.down_trun):
			
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
			if (PlatformEngine.platform_character_is(IN_AIR)):
			
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


	# RUNNING

	if (PlatformEngine.platform_character_is(ON_GROUND)):

		if (state == RUNNING and k_left and col_left):
		
			push_timer += 1
		
		elif (state == RUNNING and k_right and col_right):
		
			push_timer += 1
		
		else:
		
			push_timer = 0
		
		
		if (PlatformEngine.platform_character_is(ON_GROUND) and not k_jump and not k_down and not run_key):
		   
			x_vel_limit = 3
		
		
		
		# ledge flip
		if (state == DUCKING and abs(x_vel) < 3 and facing == LEFT and
			gml.collision_point(position.x, position.y+9, solid, 0, 0) and not gml.collision_point(position.x-1, position.y+9, solid, 0, 0) and k_left):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				hold_item.held = false
				if (hold_item.type == "Gold Idol"): hold_item.position.y -= 8
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
			gml.collision_point(position.x, position.y+9, solid, 0, 0) and not gml.collision_point(position.x+1, position.y+9, solid, 0, 0) and k_right):
		
			state = DUCKTOHANG
			
			if (hold_item):
			
				# hold_item.held = false
				if (hold_item.type == "Gold Idol"): hold_item.position.y -= 8
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
		position.y = y_prev
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
	if (x_acc > x_acc_limit): x_acc = x_acc_limit
	elif (x_acc < -x_acc_limit): x_acc = -x_acc_limit
	if (y_acc > y_acc_limit): y_acc = y_acc_limit
	elif (y_acc < -y_acc_limit): y_acc = -y_acc_limit

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
	if (gml.instance_exists('ball')):

		if (gml.distance_tobject('ball', position.x, position.y) >= 24):
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
		


	# apply the limits since the velocity may be too extreme
	if (not dead and not stunned):

		if (x_vel > x_vel_limit): x_vel = x_vel_limit
		elif (x_vel < -x_vel_limit): x_vel = -x_vel_limit

	if (y_vel > y_vel_limit): y_vel = y_vel_limit
	elif (y_vel < -y_vel_limit): y_vel = -y_vel_limit
		
	# approximates the "active" variables
	if Collision.approximately_zero(x_vel): x_vel=0
	if Collision.approximately_zero(y_vel): y_vel=0
	if Collision.approximately_zero(x_acc): x_acc=0
	if Collision.approximately_zero(y_acc): y_acc=0

	# prepares the character to move up a hill
	# we need to use the "slope_y_prev" variable later to know the "true" position.y previous value
	# keep this condition the same
	if max_slope>0 and PlatformEngine.platform_character_is(ON_GROUND) and x_vel!=0:

		slope_y_prev=position.y #----- changing for loop for now
		for y in range(0, slope_y_prev - max_slope, -1):
			if col_top:
				break
		slope_change_in_y=slope_y_prev-position.y

	else:
		slope_change_in_y=0

	# moves the character, and balances out the effects caused by other processes
	# keep this condition the same
	if max_slope*abs(x_vel)>0 and PlatformEngine.platform_character_is(ON_GROUND):

	  # we need to check if we should dampen out the speed as the character runs on upward slopes:
		x_prev=position.x
		y_prev=slope_y_prev       # we don't want to use position.y, because position.y is too high
		y_prev_high=position.y            # we'll use the higher previous variable later
		PlatformEngine.move_to(x_vel,y_vel+slope_change_in_y, self)
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
			PlatformEngine.move_to( round(x_vel_integer*ratio),round(y_vel_integer*ratio+slope_change_in_y), self )
	  

	else:

	  # we simply move x_vel and y_vel while in the air or on a ladder:
		PlatformEngine.move_to(x_vel,y_vel, self)

	# move the character downhill if possible:
	# we need to multiply max_down_slope by the absolute value of x_vel since the character normally runs at an x_vel larger than 1
	if not col_bot and max_down_slope>0 and x_vel_integer!=0 and PlatformEngine.platform_character_is(ON_GROUND):

	  #the character is floating just above the slope, so move the character down
		var up_y_prev=position.y # --- Checking how this loop below is originally handled
		for y in range (0, up_y_prev + max_down_slope, 1):
			if col_bot:             # we hit a solid below:
				up_y_prev=position.y           # I know that this doesn't seem to make sense, because of the name of the variable, but it all works out correctly after we break out of this loop
				break 				  #out of this loop
		position.y=up_y_prev


	#figures out what the sprite index of the character should be
	character_sprite()

	#sets the previous state and the previously previous state
	state_prev_prev = state_prev
	state_prev = state

	#calculates the image_speed based on the character's velocity
	if (state == RUNNING or state == DUCKING or state == LOOKING_UP):

		if (state == RUNNING or state == LOOKING_UP): image_speed = abs(x_vel) * run_anim_speed + 0.1


	if (state == CLIMBING): image_speed = sqrt(gml.sqr(abs(x_vel))+gml.sqr(abs(y_vel))) * climb_anim_speed
	if (x_vel >= 4 or x_vel <= -4):

		image_speed = 1
		if (PlatformEngine.platform_character_is(ON_GROUND)): Collision.set_collision_bounds(self, -8, -8, 8, 8)
		else: Collision.set_collision_bounds(self, -5, -8, 5, 8)

	else: Collision.set_collision_bounds(self, -5, -8, 5, 8)
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

func character_sprite():
	pass
