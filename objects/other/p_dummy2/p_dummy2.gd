extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var GETUP
var JUMPING


func alarm_0():
	gml.instance_create(160, -32, Objects.big_treasure)
	Audio.play_sound(global.snd_t_fall)


func alarm_1():
	if (global.is_damsel): sprite_index = "damsel_left"
	elif (global.is_tunnel_man): sprite_index = "tunnel_left"
	else: sprite_index = "stand_left"


func alarm_2():
	var end3 = gml.get_instance("end3") #--- should only be one instance of end3 at a time
	end3.draw_status = 1
	end3.alarm_1_countdown.start(50)
	Audio.play_music(global.mus_victory, false)


func create():
	# action_inherited
	super()

	# main_code
	# DY:  dummy actor for ending (falling from volcano)

	DROP = 0
	STUNNED = 1
	GETUP = 2
	JUMPING = 3
	status = 0

	x_vel = 0
	y_vel = 0
	my_grav = 0.6

	LEFT = 0
	RIGHT = 1
	facing = LEFT

	if (global.is_damsel): sprite_index = "damsel_run_l"
	elif (global.is_tunnel_man): sprite_index = "tunnel_run_l"
	

func draw():
	if (facing == RIGHT): image_xscale = -1
	else: image_xscale = 1

	if ((sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit") and global.has_jetpack):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)
		gml.draw_sprite("jetpack_back",-1,position.x,position.y,self)

	elif (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit"):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)

	elif (global.has_jetpack):

		gml.draw_sprite("jetpack_right",-1,position.x-4,position.y-1,self)


	if (sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit"):

		gml.draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, self)
		var hold_item
		if (global.pickup_item == "rock"): hold_item = gml.draw_sprite("rock",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "jar"): hold_item = gml.draw_sprite("jar",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "skull"): hold_item = gml.draw_sprite("skull",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "fish bone"): hold_item = gml.draw_sprite("fish_bone",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "arrow"): hold_item = gml.draw_sprite("arrow_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "rock"): hold_item = gml.draw_sprite("rock",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "machete"): hold_item = gml.draw_sprite("machete_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "mattock"): hold_item = gml.draw_sprite("mattock_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "mattock head"): hold_item = gml.draw_sprite("mattock_head",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "pistol"): hold_item = gml.draw_sprite("pistol_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "web cannon"): hold_item = gml.draw_sprite("web_cannon_r",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "teleporter"): hold_item = gml.draw_sprite("teleporter",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "shotgun"): hold_item = gml.draw_sprite("shotgun_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "bow"): hold_item = gml.draw_sprite("bow_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "flare"): hold_item = gml.draw_sprite("flare",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "sceptre"): hold_item = gml.draw_sprite("sceptre_right",-1,position.x+4,position.y+2,self)
		elif (global.pickup_item == "key"): hold_item = gml.draw_sprite("key_right",-1,position.x+4,position.y+2,self)


func step():
	position.x += x_vel
	position.y += y_vel

	if (status == DROP):

		if (global.is_damsel): sprite_index = "damsel_fall_l"
		elif (global.is_tunnel_man): sprite_index = "tunnel_fall_l"
		else: sprite_index = "die_l_fall"
		y_vel = 6
		if (gml.collision_point(position.x, position.y+9, "desert2", 0, false)):
	
			y_vel = 0
			status += 1
			if (global.is_damsel): sprite_index = "damsel_stun_l"
			elif (global.is_tunnel_man): sprite_index = "tunnel_stun_l"
			else: sprite_index = "stun_l"
			var poof = gml.instance_create(position.x-4, position.y+6, Objects.poof)
			poof.x_vel = -0.4
			poof = gml.instance_create(position.x+4, position.y+6, Objects.poof)
			poof.x_vel = 0.4
			Audio.play_sound(global.snd_thud)
	

	elif (status == STUNNED):

		alarm_0_countdown.start(70)
		alarm_1_countdown.start(50)
		status = GETUP

	elif (status == GETUP):

		var treasure = gml.instance_nearest(position.x, position.y, "big_treasure")
		if (treasure):
	
			if (treasure.y_vel == 0):
		
				y_vel = -4
				status = JUMPING
		
	

	elif (status == JUMPING):

		if (global.is_damsel): sprite_index = "damsel_die_lr"
		elif (global.is_tunnel_man): sprite_index = "tunnel_die_lr"
		else: sprite_index = "jump_left"
		if (y_vel < 4): y_vel += 0.6
		if (gml.collision_point(position.x, position.y+6, "desert2", 0, false)):
	
			y_vel = 0
			status += 1
			alarm_2_countdown.start(50)
			if (global.is_damsel): sprite_index = "damsel_left"
			elif (global.is_tunnel_man): sprite_index = "tunnel_left"
			else: sprite_index = "stand_left"
			facing = RIGHT
			var all_menus = gml.get_all_instances("menu")
			for menu_instance in all_menus:
				menu_instance.visible = true
		
	
   

	if (gml.collision_point(position.x, position.y+6, "desert2", 0, false)):

		position.y -= 2

	if (gml.collision_point(position.x, position.y+7, "desert2", 0, false)):

		position.y -= 1
