extends Node

func character_create_event(): #--- Put this directly inside of Player1 _ready function instead
	pass
	
func character_draw_event(): #--- Put this directly inside of Player1 draw function instead
	pass
	
func character_sprite(node): # --- Put this directly inside Player1 script
	pass
	
func character_step_event(): # --- Put this directly inside Player1 script
	pass
	
func game_step_event(): # --- Put inside Game object
	pass
	
func make_active(node):
	#/*
	#Makes the object "active." An "active" object is one that has the variables
	#x_vel, y_vel, x_acc, and y_acc.
	#*/
	node.x_vel=0
	node.y_vel=0
	node.x_acc=0
	node.y_acc=0

var frame = 1
var yes_counter = 0

var game = null
func move_to(x_vel, y_vel, node: GMObject):
	if game == null:
		game = gml.get_instance("game")
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
	
	node.final_x_vel = 0
	node.final_y_vel = 0
	
	var mt_x_prev=node.position.x
	var mt_y_prev=node.position.y
	##change the decimal arguments to integer variables with relation to time
	var x_vel_frac=gml.frac(abs(x_vel))
	var y_vel_frac=gml.frac(abs(y_vel))
	node.x_vel_integer=0
	node.y_vel_integer=0
	if x_vel_frac!=0:
		if gml.gm_round(1/x_vel_frac)!=0:
			if int(game.time) % int(gml.gm_round(1/x_vel_frac))==0:
				node.x_vel_integer=1
			else:
				node.x_vel_integer=0
	if y_vel_frac!=0:
		if gml.gm_round(1/y_vel_frac)!=0:
			if int(game.time) % int(gml.gm_round(1/y_vel_frac))==0:
				node.y_vel_integer=1
			else:
				node.y_vel_integer=0
	node.x_vel_integer+=floor(abs(x_vel))
	node.y_vel_integer+=floor(abs(y_vel))
	if x_vel<0:
		node.x_vel_integer*=-1
	if y_vel<0:
		node.y_vel_integer*=-1
	node.x_vel_integer=gml.gm_round(node.x_vel_integer)
	node.y_vel_integer=gml.gm_round(node.y_vel_integer)
	
	#object is moving to the right
	if node.x_vel_integer>0:
		for x in range(node.position.x, mt_x_prev + node.x_vel_integer, 1):
			  
			var solid_id=Collision.get_id_collision_right(1, node)
			#if there is a collision with a solid:
			if solid_id!= null:
				if gml.object_get_parent(solid_id) == 'moveable_solid' and Collision.can_push_moveable_solids(node):
			  
					#we must move the moveable solid, unless there is another solid (moveable or non-moveable) in it's way
					var all_solids = gml.get_all_instances("solid")
					for solid_instance in all_solids:
						if gml.place_meeting(solid_instance.position.x+1,solid_instance.position.y,'solid', solid_instance):      #there will be a collision!
							#--- is x here referring to the iterator or the node's x position? no idea. going with the position
							break
						else:
							solid_instance.position.x += 1 * get_physics_process_delta_time() * 30         #we're free to move the moveable solid
							if (not SS.is_sound_playing(global.snd_push)): Audio.play_sound(global.snd_push)

				else:
					break
					
			node.position.x += 1
			node.final_x_vel += 1
	  
	#object is moving to the left
	#if x_vel_integer<0:
	if node.x_vel_integer<0:
		for x in range(node.position.x, mt_x_prev + node.x_vel_integer, -1):
			var can_move = true
			
			var solid_id = Collision.get_id_collision_left(1, node) # --- [FLAG] assuming this returns a node
			#if there is a collision with a solid:
			if solid_id!=null:
			
				if gml.object_get_parent(solid_id)== 'moveable_solid' and Collision.can_push_moveable_solids(node):
			  
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

			node.position.x -= 1
			node.final_x_vel -= 1
			#position.x += mt_x_prev + x_vel_integer - position.x
		#position.x += mt_x_prev + x_vel_integer - position.x * get_physics_process_delta_time() * 30
		
		
	#object is moving down
	if node.y_vel_integer>0:
		for y in range(node.position.y, mt_y_prev + node.y_vel_integer, 1):
			if Collision.is_collision_bottom(1, node):
				break
			if Collision.can_land_on_platforms(node):
				if Collision.is_collision_platform(node)==false and Collision.is_collision_platform_bottom(1, node) and node.k_down==false: #--- changed 0 to false
					break
					
			node.position.y += 1
			node.final_y_vel += 1
			
		
	  
	#object is moving up
	if node.y_vel_integer<0:
		for y in range(node.position.y, mt_y_prev + node.y_vel_integer, -1):
			if Collision.is_collision_top(1, node):
				break
				
			node.position.y -= 1
			node.final_y_vel -= 1

#--- platform_character_is() is inside player1 script

func scr_moveable_solid_recurse_drop(node):
	var obj
	obj = gml.instance_place(node.position.x, node.position.y-1, "moveable_solid", node)
	if (obj):
		scr_moveable_solid_recurse_drop(obj)
		obj.y += 0.05
