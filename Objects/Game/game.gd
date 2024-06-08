@tool
extends Node2D

@export var object_size = Vector2(0, 0)
@export var depth = 0

var draw_status
var money_count
var damsel
var idol
var altar
var gen_clothing_shop
var gen_bomb_shop
var gen_supply_shop
var gen_rare_shop
var gen_weapon_shop
var moveable_solid_grav
var time

@onready var alarm_0_timer = $"Alarms/Alarm 0"
@onready var alarm_1_timer = $"Alarms/Alarm 1"
@onready var alarm_2_timer = $"Alarms/Alarm 2"

var physics_frame_rate = 30

func initial_setup():
	#--- set size
	object_size = Vector2(0, 0)

	#--- set depth
	depth = 0
	z_index = depth

	#_create()

func _ready():
	initial_setup()

	#Create Game
	
	draw_status = 0
	money_count = 0
	var debug
	debug = false
	global.ghost_exists = false

	damsel = false
	idol = false
	altar = false

	# Black Market
	gen_clothing_shop = false
	gen_bomb_shop = false
	gen_supply_shop = false
	gen_rare_shop = false
	gen_weapon_shop = false

	if (gml.instance_number("game") > 1): gml.instance_destroy(self)

	moveable_solid_grav = 1 # how fast moveable solids should accelerate downwards
	time = 1

	# sound_loop(snd_music_test)

	if (global.game_start): LevelGeneration.scr_init_level()


func _on_alarm_0_timeout():
	if (draw_status < 3): draw_status = 2
	if alarm_1_timer.is_stopped():
		alarm_1_timer.start(50/physics_frame_rate)


func _on_alarm_1_timeout():
	if (draw_status < 3): draw_status = 3


func _on_alarm_2_timeout():
	global.udjat_blink = not global.udjat_blink

	if (global.has_udjat_eye):

		if (global.udjat_blink):
			Audio.play_sound(global.snd_blink1)
		else:
			Audio.play_sound(global.snd_blink2)

func key_m_pressed():
	if Input.is_key_pressed(KEY_M):
		if (global.music):

			global.music = false
			Audio.stop_all_music()

		else:

			global.music = true
			if (InLevel.is_level()):
			
				if (global.level_type == 1): Audio.play_music(global.mus_lush, true)
				elif (global.level_type == 2): Audio.play_music(global.mus_ice, true)
				elif (global.level_type == 3): Audio.play_music(global.mus_temple, true)
				elif (gml.is_room("olmec")):
					
					var player1 = gml.get_instance("player1")
					if (player1.active):
						Audio.play_music(global.mus_boss, true)
				
				else: Audio.play_music(global.mus_cave, true)
			
			elif (gml.is_room("title")): Audio.play_music(global.mus_title, true)

func game_step_event():
	#/**
	 #* The game's step event.
	 #*/
	if (true): 
		game.players[0] = noone     #players (used when "with( )" structures will not work)
		game.players_length = 0
		with character

		  #necessary to reset the "viscid" movement from a moving solid
		  viscid_movement_ok=1
		  #store the characters in the game.players variable
		  game.players[game.players_length] = id
		  game.players_length+=1


		#since we are not using GM's hspeed and vspeed variables, we need to add in decimal support ourselves (so 0.25 will only move 1 pixel every 4 steps, for example)
		game.time+=1
		#we don't want the time to grow too large
		if game.time>100000000:
		  game.time=0

		#moves all of the solids so that none of them collide with the character
		with moving_solid

		  #applies the acceleration
		  x_vel+=x_acc
		  y_vel+=y_acc
		  #approximates the "active" variables
		  if approximately_zero(x_vel):
			x_vel=0
		  if approximately_zero(y_vel):
			y_vel=0
		  if approximately_zero(x_acc):
			x_acc=0
		  if approximately_zero(y_acc):
			y_acc=0
		  #moves the solid, pushes the character, carries the character, and stops if the character will be crushed by another solid:
		  mst_x_prev=position.x
		  mst_y_prev=position.y
		  #change the decimal arguments to integer variables with relation to time
		  x_velFrac=frac(abs(x_vel))
		  y_velFrac=frac(abs(y_vel))
		  x_velInteger=0
		  y_velInteger=0
		  if x_velFrac!=0:
			if round(1/x_velFrac):!=0
			   x_velInteger=(game.time % round(1/x_velFrac)=0)
		  if y_velFrac!=0:
			if round(1/y_velFrac):!=0
			  y_velInteger=(game.time % round(1/y_velFrac)=0)
		  x_velInteger+=floor(abs(x_vel))
		  y_velInteger+=floor(abs(y_vel))
		  if x_vel<0:
			x_velInteger*=-1
		  if y_vel<0:
			y_velInteger*=-1
		  x_velInteger=round(x_velInteger)
		  y_velInteger=round(y_velInteger)
		  #calculate the collision bounds of the character -- we'll need it later
		  with character
			calculate_collision_bounds()
		  solid_is_near_players = 0    #whether the solid is near either of the players
		  #determine if the solid is close to a player:
		  for(i=0i<game.players_lengthi+=1)
		  
			if is_collision_rectangle(position.x-abs(x_velInteger)-sprite_xoffset-2,position.y-abs(y_velInteger)-sprite_yoffset-2,position.x+sprite_width+abs(x_velInteger)-sprite_xoffset+2,position.y+sprite_height+abs(y_velInteger)-sprite_yoffset+2,game.players[i].lb,game.players[i].tb,game.players[i].rb,game.players[i].bb):
			
			  solid_is_near_players = 1    
			 
		break
			
		  
		  if(solid_is_near_players)
		  
			#solid is moving to the right
			if x_velInteger>0:
			
			  break_now=0    #whether we should break out of the movement loop because the character is stuck
			  for(position.x=xx<mst_x_prev+x_velIntegerx+=1)
			  
				for(i=0i<game.players_lengthi+=1)
				
				  if(viscid_top and is_collision_character_top(1,game.players[i]) and ((game.players[i]).viscid_movement_ok=1 or (game.players[i]).viscid_movement_ok=2))
				  
					with game.players[i]
					  if is_collision_right(1):=0
					  
						position.x+=1
						viscid_movement_ok=2
					  
				  
				  elif is_collision_character_right(1,game.players[i]):
				  
					with game.players[i]
					  collision=is_collision_right(1)
					if game.players[i].collision:
					
					  break_now = 1
					 
		break
					
					game.players[i].position.x+=1
				  
				
				if break_now:
				 
		break
			  
			
			#solid is moving to the left
			if x_velInteger<0:
			
			  break_now=0    #whether we should break out of the movement loop because the character is stuck
			  for(position.x=xx>mst_x_prev+x_velIntegerx-=1)
			  
				for(i=0i<game.players_lengthi+=1)
				
				  if viscid_top and is_collision_character_top(1,game.players[i]): and (game.players[i].viscid_movement_ok=1 or game.players[i].viscid_movement_ok=2)
				  
					with game.players[i]
					  if is_collision_left(1):=0
					  
						position.x-=1
						viscid_movement_ok=2
					  
				  
				  elif is_collision_character_left(1,game.players[i]):
				  
					with game.players[i]
					  collision=is_collision_left(1)
					if game.players[i].collision:
					
					  break_now = 1
					 
		break
					
					game.players[i].position.x-=1
				  
				
				if break_now:
				 
		break
			  
			
			#solid is moving down
			if y_velInteger>0:
			
			  break_now=0    #whether we should
		break out of the movement loop because the character is stuck
			  for(position.y=yy<mst_y_prev+y_velIntegery+=1)
			  
				for(i=0i<game.players_lengthi+=1)
				
				  if viscid_top and is_collision_character_top(2,game.players[i]):
				  
					#since we do not want to include the solid that is pulling the character down,
					#we must alter the position of the solid to get around this dilemma
					position.y+=5
					with game.players[i]
					  if is_collision_bottom(1):=0
						position.y+=1
					position.y-=5
				  
				  elif is_collision_character_bottom(1,game.players[i]):
				  
					with game.players[i]
					  collision=is_collision_bottom(1)
					if game.players[i].collision:
					
					  break_now = 1
					 
		break
					
					game.players[i].position.y+=1
				  
				
				if break_now:
				 
		break
			  
			
			#solid is moving up
			if y_velInteger<0:
			
			  break_now=0    #whether we should
		break out of the movement loop because the character is stuck
			  for(position.y=yy>mst_y_prev+y_velIntegery-=1)
			  
				for(i=0i<game.players_lengthi+=1)
				
				  #push the character up regardless of the viscid properties of the solid top
				  if is_collision_character_top(1,game.players[i]):
				   
					with game.players[i]
					  collision=is_collision_top(1)
					if game.players[i].collision:
					
					  break_now = 1
					 
		break
					
					game.players[i].position.y-=1
				  
				  if is_collision_character_bottom(1,game.players[i]):
				  
					#variable jumping causes the character to get stuck to the bottom of a moving solid
					#that is moving faster than 1 pixel per step upwards, so we need this code
					if game.players[i].jump_time<game.players[i].jump_timeTotal:
					
					  game.players[i].y_vel=-2
					  game.players[i].jump_time=game.players[i].jump_timeTotal
					
				  
				
				if break_now:
				 
		break
			  
			
			with character
			
			  if viscid_movement_ok=2:
				viscid_movement_ok=0
			
		  
		  else:
		  
			position.x+=x_velInteger
			position.y+=y_velInteger
		  
		  
		  #/*
			#if (place_meeting(position.x,position.y+1,item)):
			#
				#y_vel = 0
				#my_grav = 0
				##
		#break
			#
			#else:
			#
				#my_grav = 1
			#
		  #*/

		#finished moving_solid code
		#accelerates the moveable_solid objects downwards
		with moveable_solid

			if ((position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0] and:
				position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]))
			
				y_m_prev = position.y
				y_vel += my_grav
				if (y_vel > 8): y_vel = 8
				#y_vel+=game.moveable_solid_grav
				#moves the moveable solid down
				for (position.y = position.y position.y < y_m_prev + y_vel position.y += 1)
				
				#if there is a collision with a solid or the character one pixel below the moveable solid, we want it to stop:
				#is there a (precise) collision
					if (place_meeting(position.x, position.y+1, solid)) # or is_collision_character_bottom(2)):
					
						if (y_vel > my_grav): Audio.play_sound(global.snd_thud)
						y_vel = 0
					   
		break
					
					
					#scr_moveable_solid_recurse_drop()
					#/*
					#obj = 0
					#obj = gml.instance_place(position.x, position.y-1, enemy)
					#if (obj): obj.position.y += 1
					#obj = 0
					#obj = gml.instance_place(position.x, position.y-1, item)
					#if (obj): obj.position.y += 1
					#obj = 0
					#obj = gml.instance_place(position.x, position.y-1, treasure)
					#if (obj): obj.position.y += 1
					#obj = 0
					#*/
				
			

