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
		self.players[0] = null     #players (used when "with( )" structures will not work)
		self.players_length = 0
		var all_characters = gml.get_all_instances("character")
		for character_instance in all_characters:

		  #necessary to reset the "viscid" movement from a moving solid
			character_instance.viscid_movement_ok=1
		  #store the characters in the self.players variable
			self.players[self.players_length] = character_instance#.id
			self.players_length+=1


		#since we are not using GM's hspeed and vspeed variables, we need to add in decimal support ourselves (so 0.25 will only move 1 pixel every 4 steps, for example)
		self.time+=1
		#we don't want the time to grow too large
		if self.time>100000000:
			self.time=0

		#moves all of the solids so that none of them collide with the character
		var all_moving_solids = gml.get_all_instances("moving_solid")
		for moving_solid_instance in all_moving_solids:

		 	 #applies the acceleration
			moving_solid_instance.x_vel+=moving_solid_instance.x_acc
			moving_solid_instance.y_vel+=moving_solid_instance.y_acc
		  	#approximates the "active" variables
			if Collision.approximately_zero(moving_solid_instance.x_vel):
				moving_solid_instance.x_vel=0
			if Collision.approximately_zero(moving_solid_instance.y_vel):
				moving_solid_instance.y_vel=0
			if Collision.approximately_zero(moving_solid_instance.x_acc):
				moving_solid_instance.x_acc=0
			if Collision.approximately_zero(moving_solid_instance.y_acc):
				moving_solid_instance.y_acc=0
	  		#moves the solid, pushes the character, carries the character, and stops if the character will be crushed by another solid:
			moving_solid_instance.mst_x_prev=moving_solid_instance.position.x
			moving_solid_instance.mst_y_prev=moving_solid_instance.position.y
	 		 #change the decimal arguments to integer variables with relation to time
			moving_solid_instance.x_vel_frac=gml.frac(abs(moving_solid_instance.x_vel))
			moving_solid_instance.y_vel_frac=gml.frac(abs(moving_solid_instance.y_vel))
			moving_solid_instance.x_vel_integer=0
			moving_solid_instance.y_vel_integer=0
			if moving_solid_instance.x_vel_frac!=0:
				if round(1/moving_solid_instance.x_vel_frac)!=0:
					if self.time % round(1/moving_solid_instance.x_vel_frac)==0:
						moving_solid_instance.x_vel_integer = 1
					else:
						moving_solid_instance.x_vel_integer = 0
			if moving_solid_instance.y_vel_frac!=0:
				if round(1/moving_solid_instance.y_vel_frac)!=0:
					if self.time % round(1/moving_solid_instance.y_vel_frac) == 0:
						moving_solid_instance.y_vel_integer = 1
					else:
						moving_solid_instance.y_vel_integer = 0
			moving_solid_instance.x_vel_integer+=floor(abs(moving_solid_instance.x_vel))
			moving_solid_instance.y_vel_integer+=floor(abs(moving_solid_instance.y_vel))
			if moving_solid_instance.x_vel<0:
				moving_solid_instance.x_vel_integer*=-1
			if moving_solid_instance.y_vel<0:
				moving_solid_instance.y_vel_integer*=-1
			moving_solid_instance.x_vel_integer=round(moving_solid_instance.x_vel_integer)
			moving_solid_instance.y_vel_integer=round(moving_solid_instance.y_vel_integer)
	 		 #calculate the collision bounds of the character -- we'll need it later
			for character_instance in all_characters:
				character_instance.calculate_collision_bounds()
			moving_solid_instance.solid_is_near_players = 0    #whether the solid is near either of the players
	  		#determine if the solid is close to a player:
			for i in range(self.players_length):
				if Collision.is_collision_rectangle(moving_solid_instance.position.x-abs(moving_solid_instance.x_vel_integer)-moving_solid_instance.sprite_xoffset-2,moving_solid_instance.position.y-abs(moving_solid_instance.y_vel_integer)-moving_solid_instance.sprite_yoffset-2,moving_solid_instance.position.x+moving_solid_instance.sprite_width+abs(moving_solid_instance.x_vel_integer)-moving_solid_instance.sprite_xoffset+2,moving_solid_instance.position.y+moving_solid_instance.sprite_height+abs(moving_solid_instance.y_vel_integer)-moving_solid_instance.sprite_yoffset+2,self.players[i].lb,self.players[i].tb,self.players[i].rb,self.players[i].bb):
					moving_solid_instance.solid_is_near_players = 1
		
	  
			if(moving_solid_instance.solid_is_near_players):
				#solid is moving to the right
				if moving_solid_instance.x_vel_integer>0:
					moving_solid_instance.break_now=0    #whether we should break out of the movement loop because the character is stuck
					for x in range(moving_solid_instance.position.x, moving_solid_instance.mst_x_prev + moving_solid_instance.x_vel_integer, 1):
		  
						for i in range(0, self.players_length):
			
							if(moving_solid_instance.viscid_top and Collision.is_collision_character_top(1,self.players[i]) and ((self.players[i]).viscid_movement_ok==1 or (self.players[i]).viscid_movement_ok==2)):
			  
								if Collision.is_collision_right(1, self.players[i])==0:
									self.players[i].position.x+=1
									self.players[i].viscid_movement_ok=2
				  
			  
							elif Collision.is_collision_character_right(1,self.players[i]):
								self.players[i].collision=Collision.is_collision_right(1, self.players[i])
								if self.players[i].collision:
									moving_solid_instance.break_now = 1
									break
				
								self.players[i].position.x+=1
			  
			
						if moving_solid_instance.break_now:
							break
		  
		
				#solid is moving to the left
				if moving_solid_instance.x_vel_integer<0:
		
					moving_solid_instance.break_now=0    #whether we should break out of the movement loop because the character is stuck
					for x in range(moving_solid_instance.position.x, moving_solid_instance.mst_x_prev + moving_solid_instance.x_vel_integer, -1):
		  
						for i in range(0, self.players_length):
			
							if moving_solid_instance.viscid_top and Collision.is_collision_character_top(1,self.players[i]) and (self.players[i].viscid_movement_ok==1 or self.players[i].viscid_movement_ok==2):
			  
								if Collision.is_collision_left(1, self.players[i])==0:
				  
									moving_solid_instance.position.x-=1
									moving_solid_instance.viscid_movement_ok=2
				  
			  
							elif Collision.is_collision_character_left(1,self.players[i]):
			  
								self.players[i].collision=Collision.is_collision_left(1, self.players[i])
								if self.players[i].collision:
									moving_solid_instance.break_now = 1
									break
				
								self.players[i].position.x-=1
			  
			
							if moving_solid_instance.break_now:
			 
								break
		  
		
				#solid is moving down
				if moving_solid_instance.y_vel_integer>0:
				
					moving_solid_instance.break_now=0    #whether we should break out of the movement loop because the character is stuck
					for y in range(moving_solid_instance.position.y, moving_solid_instance.mst_y_prev + moving_solid_instance.y_vel_integer, 1):
				  
						for i in range(0, self.players_length):
					
							if moving_solid_instance.viscid_top and Collision.is_collision_character_top(2,self.players[i]):
					  
								#since we do not want to include the solid that is pulling the character down,
								#we must alter the position of the solid to get around this dilemma
								position.y+=5
								if Collision.is_collision_bottom(1, self.players[1])==0:
									position.y+=1
								position.y-=5
					  
							elif Collision.is_collision_character_bottom(1,self.players[i]):
					  
								self.players[i].collision=Collision.is_collision_bottom(1, self.players[i])
								if self.players[i].collision:
									moving_solid_instance.break_now = 1	 
									break
						
								self.players[i].position.y+=1
					  
						if moving_solid_instance.break_now:
							break
		  
		
				#solid is moving up
				if moving_solid_instance.y_vel_integer<0:
				
					moving_solid_instance.break_now=0    #whether we should break out of the movement loop because the character is stuck
					for y in range(moving_solid_instance.position.y, moving_solid_instance.mst_y_prev + moving_solid_instance.y_vel_integer, -1):
				  
						for i in range(0, self.players_length):
					
					  		#push the character up regardless of the viscid properties of the solid top
							if Collision.is_collision_character_top(1,self.players[i]):

								self.players[i].collision=Collision.is_collision_top(1, self.players[i])
								if self.players[i].collision:
									moving_solid_instance.break_now = 1
									break
						
								self.players[i].position.y-=1
					  
							if Collision.is_collision_character_bottom(1,self.players[i]):
					  
								#variable jumping causes the character to get stuck to the bottom of a moving solid
								#that is moving faster than 1 pixel per step upwards, so we need this code
								if self.players[i].jump_time<self.players[i].jump_time_total:
						
									self.players[i].y_vel=-2
									self.players[i].jump_time=self.players[i].jump_time_total
						
						if moving_solid_instance.break_now:
							break
		  
		
				for character_instance in all_characters:
		
					if character_instance.viscid_movement_ok==2:
						character_instance.viscid_movement_ok=0
		
	  
			else:
	  
				moving_solid_instance.position.x+=moving_solid_instance.x_vel_integer
				moving_solid_instance.position.y+=moving_solid_instance.y_vel_integer
	  
	  
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
		var all_moveable_solids = gml.get_all_instances("moveable_solid")
		for moveable_solid_instance in all_moveable_solids:

			if ((moveable_solid_instance.position.x > gml.view('xview')-16 and moveable_solid_instance.position.x < gml.view('xview') + gml.view('wview')[0] and
				moveable_solid_instance.position.y > gml.view('yview')-16 and moveable_solid_instance.position.y < gml.view('yview')[0] + gml.view('hview'))):
			
				moveable_solid_instance.y_m_prev = moveable_solid_instance.position.y
				moveable_solid_instance.y_vel += moveable_solid_instance.my_grav
				if (moveable_solid_instance.y_vel > 8): moveable_solid_instance.y_vel = 8
				#y_vel+=self.moveable_solid_grav
				#moves the moveable solid down
				for y in range(moveable_solid_instance.position.y, moveable_solid_instance.y_m_prev + moveable_solid_instance.y_vel, 1):
				
				#if there is a collision with a solid or the character one pixel below the moveable solid, we want it to stop:
				#is there a (precise) collision
					if (gml.place_meeting(moveable_solid_instance.position.x, moveable_solid_instance.position.y+1, 'solid')): # or is_collision_character_bottom(2))
					
						if (moveable_solid_instance.y_vel > moveable_solid_instance.my_grav): Audio.play_sound(global.snd_thud)
						moveable_solid_instance.y_vel = 0		   
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
				
			

