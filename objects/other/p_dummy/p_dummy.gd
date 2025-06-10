extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
@onready var jetpack_draw = $JetpackDraw
var LAVA
var TRANSITION
var START
var END
var STOPPED


func alarm_0():
	alarm_1_countdown.start(100)


func alarm_1():
	var big_chest = gml.get_instance("big_chest") #---[FLAG] check to make sure there is only one instance
	big_chest.sprite_index = "big_chest_open"
	var treasure = gml.instance_create(big_chest.position.x, big_chest.position.y, Objects.big_treasure)
	treasure.y_vel = -4
	treasure.x_vel = -3
	Audio.play_sound(global.snd_click)
	alarm_2_countdown.start(20)


func alarm_2():
	status = LAVA


func alarm_3():
	var end_plat = gml.get_instance("end_plat") #---[FLAG] check to make sure there is only one instance
	gml.instance_create(end_plat.position.x, end_plat.position.y+30, Objects.lava_spray)
	global.shake = 9999
	alarm_4_countdown.start(10)


func alarm_4():
	var lava_spray = gml.get_instance("lava_spray") #---[FLAG] check to make sure there is only one instance
	if (lava_spray): lava_spray.y_acc = -0.1


func alarm_5():
	status = TRANSITION
	if (global.is_damsel): sprite_index = "damsel_run_l"
	elif (global.is_tunnel_man): sprite_index = "tunnel_run_l"
	else: sprite_index = "run_left"
	

func animation_end():
	if (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit"):

		gml.instance_destroy(self)

	#/*
	#if (false and sprite_index == "p_exit"):
#
		#global.game_start = true
		#if (global.level_type == 2): get_tree().change_scene_to_file("res://r_level2.tscn")
		#elif (global.curr_level == 2): get_tree().change_scene_to_file("res://r_olmec.tscn")
		#else: get_tree().change_scene_to_file("res://r_level.tscn")
#
	#*/


func create():
	# action_inherited
	super()

	# main_code
	# DY:  dummy actor for transitions and ending

	TRANSITION = 0
	START = 1
	END = 2
	LAVA = 3
	STOPPED = 99
	status = 0

	y_vel = 0

	if (global.is_damsel): sprite_index = "damsel_run_l"
	elif (global.is_tunnel_man): sprite_index = "tunnel_run_l"
	else: sprite_index = "run_left"

	LEFT = 0
	RIGHT = 1
	facing = RIGHT


func draw():
	if (facing == RIGHT): image_xscale = -1
	else: image_xscale = 1

	if ((sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit") and global.has_jetpack):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)
		#gml.draw_sprite("jetpack_back",-1,position.x,position.y, self) #--- commenting out draw_sprite to use JetpackDraw node
		jetpack_draw.draw_jetpack(Vector2(0, 0), "jetpack_back")

	elif (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit"):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)

	elif (global.has_jetpack):

		#gml.draw_sprite("jetpack_right",-1,position.x-4,position.y-1, self) #--- commenting out draw_sprite to use JetpackDraw node
		jetpack_draw.draw_jetpack(Vector2(-4, -1), "jetpack_right")


	if (sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)
		var hold_item
		if (global.pickup_item == "rock"): hold_item = gml.draw_sprite("rock",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "jar"): hold_item = gml.draw_sprite("jar",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "skull"): hold_item = gml.draw_sprite("skull",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "fish bone"): hold_item = gml.draw_sprite("fish_bone",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "arrow"): hold_item = gml.draw_sprite("arrow_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "rock"): hold_item = gml.draw_sprite("rock",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "machete"): hold_item = gml.draw_sprite("machete_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "mattock"): hold_item = gml.draw_sprite("mattock_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "mattock head"): hold_item = gml.draw_sprite("mattock_head",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "pistol"): hold_item = gml.draw_sprite("pistol_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "web cannon"): hold_item = gml.draw_sprite("web_cannon_r",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "teleporter"): hold_item = gml.draw_sprite("teleporter",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "shotgun"): hold_item = gml.draw_sprite("shotgun_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "bow"): hold_item = gml.draw_sprite("bow_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "flare"): hold_item = gml.draw_sprite("flare",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "sceptre"): hold_item = gml.draw_sprite("sceptre_right",-1,position.x+4,position.y+2, self)
		elif (global.pickup_item == "key"): hold_item = gml.draw_sprite("key_right",-1,position.x+4,position.y+2, self)
	

func step():
	position.y += y_vel

	if (status != STOPPED and gml.collision_point(position.x+8, position.y, "damsel_kiss", 0, 0)):

		var person = gml.instance_nearest(position.x+8, position.y, "damsel_kiss")
		if (not person.kissed):
	
			status = STOPPED
			x_vel = 0
			y_vel = 0
			if (global.is_damsel): sprite_index = "damsel_left"
			elif (global.is_tunnel_man): sprite_index = "tunnel_left"
			else: sprite_index = "stand_left"
		
			if (global.is_damsel): person.sprite_index = "p_kiss_l"
			else: person.sprite_index = "damsel_kiss_l"
		
			alarm_5_countdown.start(30)


	if (gml.instance_exists("tunnel_man")):

		var person = gml.instance_nearest(position.x+8, position.y, "tunnel_man")
		if (status != STOPPED and gml.collision_point(position.x+8, position.y, "tunnel_man", 0, 0) and person.talk == 0):
	
			status = STOPPED
			x_vel = 0
			y_vel = 0
			if (global.is_damsel): sprite_index = "damsel_left"
			elif (global.is_tunnel_man): sprite_index = "tunnel_left"
			else: sprite_index = "stand_left"
		
			person.talk = 1
		
	


	if (status == TRANSITION):

		if (position.x >= 280):
	
			if (sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):
		
				Audio.play_sound(global.snd_steps)
				if (global.is_damsel): sprite_index = "damsel_exit"
				elif (global.is_tunnel_man): sprite_index = "tunnel_exit"
				else: sprite_index = "p_exit"
		
	
		else: position.x += 2

	elif (status == END and sprite_index != "stand_left" and sprite_index != "damsel_left" and sprite_index != "tunnel_left"):

		if (position.x >= 448 + 8):
	
			# DY:  stop
			if (global.is_damsel): sprite_index = "damsel_left"
			elif (global.is_tunnel_man): sprite_index = "tunnel_left"
			else: sprite_index = "stand_left"
			alarm_0_countdown.start(20)
	
		else: position.x += 2

	elif (status == LAVA):

		alarm_3_countdown.start(50)
		status += 1

	elif (status == LAVA+1):
		var end_plat = gml.get_instance("end_plat") #---[FLAG] check to make sure there is only one instance
		gml.instance_create(end_plat.position.x+gml.rand(0,80), 192+32, Objects.burn)
