extends Node

func can_land_on_platforms(node):
	#/*
	#Returns whether the current object is allowed to land on platforms.
	#Currently, only the players can land on platforms.
	#To make certain enemies able to land on platforms, edit this script.
	#*/
	
	var node_groups = node.get_groups()
	if node_groups.has('character'):
		return true
	return false

func can_push_moveable_solids(node):
	#/*
	#Returns whether the current object can push moveable solids.
	#Currently, it returns whether the current object is a player.
	#If you want certain enemies to be able to push moveable solids, edit this script.
	#*/
	var node_groups = node.get_groups()
	if node_groups.has('character'):
		return true
	return false
	
func get_id_collision_character(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_character(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_ladder(node):
	#/*
	#Returns whether the object invoking this script is colliding with a ladder.
	#return
	#0:no collision
	#1:collision
	#*/
	
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if (gml.collision_rectangle(lb+8,tb+8,rb-8,bb-8,'ladder_top',1,1,node)):# > 0): --- changing this since this works differently in Godot
		return true
	else:
		if (gml.collision_rectangle(lb+8,tb+8,rb-8,bb-8,'ladder',1,1,node)):#>0:
			return true
	
	return false
	
func is_collision_platform(node):
	#/*
	#Returns whether the object invoking this script is colliding with a jump-through platform.
	#return
	#0:no collision
	#1:collision
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_rectangle(lb,tb,rb-1,bb-1,'platform',1,1,node):#>0
		return true
	return false
	
func is_collision_solid(node):
	#/*
	#Returns whether the object invoking this script is colliding with a solid.
	#return
	#0:no collision
	#1:collision
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_rectangle(lb,tb,rb-1,bb-1,'solid',1,1,node):#>0
		return true
	return false

func set_collision_bounds(node, left_x, top_y, right_x, bottom_y):
	#/*
	#Sets the collision bounds which are relative to the origin of the sprites.
	#0:left x
	#1:top y
	#2:right x
	#3:bottom y
	#*/

#--------------------------------------------------	
	#var passed_node = node
	#var collision_shape = node.get_node("Area2D/CollisionShape2D")
	#collision_shape.position.x = 0
	#collision_shape.position.y = 0
	#
	#
	#var x1 = left_x
	#var y1 = top_y
	#var x2 = right_x
	#var y2 = bottom_y
	#
	#var convex_polygon = ConvexPolygonShape2D.new()
	#convex_polygon.points = PackedVector2Array([Vector2(x1, y1), Vector2(x1, y2), Vector2(x2, y2), Vector2(x2, y1)])
	#collision_shape.shape = convex_polygon
#----------------------------------------------------

	node.collision_bounds_offset_left_x = left_x
	node.collision_bounds_offset_top_y = top_y
	node.collision_bounds_offset_right_x = right_x
	node.collision_bounds_offset_bottom_y = bottom_y
	
#---Hidden---

func approximately_zero(number):
	#/*
	#Returns whether the argument is between -0.1 and 0.1
	#*/
	if number>-0.1 and number<0.1:
		return true
	else:
		return false

func calculate_collision_bounds(node):
	#var lb = node.global_position.x + node.collision_bounds_offset_left_x
	#var tb = node.global_position.y + node.collision_bounds_offset_top_y
	#var rb = node.global_position.x + node.collision_bounds_offset_right_x
	#var bb = node.global_position.y + node.collision_bounds_offset_bottom_y
	
	var lb = node.position.x + node.collision_bounds_offset_left_x
	var tb = node.position.y + node.collision_bounds_offset_top_y
	var rb = node.position.x + node.collision_bounds_offset_right_x
	var bb = node.position.y + node.collision_bounds_offset_bottom_y
	
	node.lb = lb
	node.tb = tb
	node.rb = rb
	node.bb = bb
	
	var all_points_exact = Vector4(lb, tb, rb, bb)
	return(all_points_exact)

func is_collision_rectangle(x1_1, y1_1, x2_1, y2_1, x1_2, y1_2, x2_2, y2_2):
	#/*
	#Returns whether there is a collision with two rectangles.
	#Note that the rectangles cannot have a negative width or height.
	#0: x1 (of the first rectangle)
	#1: y1
	#2: x2
	#3: y2
	#4: x1 (of the second rectangle)
	#5: y1
	#6: x2
	#7: y2
	#return  whether there was a collision
	#*/
	var w1=x2_1-x1_1
	var h1=y2_1-y1_1
	var w2=x2_2-x1_2
	var h2=y2_2-y1_2
	if(w2<=0 or h2<=0 or w1<=0 or h1<=0):
		return false
	w2+=x1_2
	h2+=y1_2
	w1+=x1_1
	h1+=y1_1
	return (w2<x1_2 or w2>x1_1) and (h2<y1_2 or h2>y1_1) and (w1<x1_1 or w1>x1_2) and (h1<y1_1 or h1>y1_2)

#---Horizontal---

func get_id_collision_left(number, node): #--- Only used once in PlatformEngine.move_to
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels left of the collision rectangle to check for a collision
	#with a solid object.
	#returns the ID of the solid
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var _rb = all_points_exact.z
	var bb = all_points_exact.w
	
	return gml.collision_line(gml.gm_round(lb-number),gml.gm_round(tb+5),gml.gm_round(lb-number),gml.gm_round(bb-1),'solid',1,1,node)


func get_id_collision_right(number, node): #--- Only used once in PlatformEngine.move_to
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels right of the collision rectangle to check for a collision
	#with a solid object.
	#returns the ID of the solid
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	return gml.collision_line(gml.gm_round(rb+number-1),gml.gm_round(tb+5),gml.gm_round(rb+number-1),gml.gm_round(bb-1),'solid',1,1,node)


func is_collision_character_left(number, id = null): #--- id is just the group
	#/*
	#0: Number of pixels left of the collision rectangle to check for a collision
	#with the character.
	#1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	#*/
	#the solid must be hitting the character's right side, so...

	var w=id
	if(id==null):
		w= "character"
	else: #--- have to add this due to not having id
		w = id.object_name 

	var all_characters = gml.get_all_instances(w)
	for character_instance in all_characters:
		
		var all_points_exact = calculate_collision_bounds(character_instance)
		var _lb = all_points_exact.x
		var tb = all_points_exact.y
		var rb = all_points_exact.z
		var bb = all_points_exact.w
		  #if there is a collision with temp_id on the character's right side
		if gml.collision_line(gml.gm_round(rb+number-1),gml.gm_round(tb),gml.gm_round(rb+number-1),gml.gm_round(bb-1),character_instance,1,1,character_instance):#0:
			return true
	return false
	
func is_collision_character_right(number, id = null):
	#/*
	#0: Number of pixels right of the collision rectangle to check for a collision
	#with the character.
	#1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	#*/
	#the solid must be hitting the character's left side, so...

	var w=id
	if(id==null):
		w= "character"
	else: #--- have to add this due to not having id
		w = id.object_name 

	var all_characters = gml.get_all_instances(w)
	for character_instance in all_characters:
		
		var all_points_exact = calculate_collision_bounds(character_instance)
		var lb = all_points_exact.x
		var tb = all_points_exact.y
		var _rb = all_points_exact.z
		var bb = all_points_exact.w
	  #if there is a collision with temp_id on the character's left side
		if gml.collision_line(gml.gm_round(lb-number),gml.gm_round(tb),gml.gm_round(lb-number),gml.gm_round(bb-1),'character',1,1):#>0:
			return true
	return false

@onready var debug_line: Line2D = get_tree().get_first_node_in_group("debug_line")
func is_collision_left(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels left of the collision rectangle to check for a collision
	#with a solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var _rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb-number),gml.gm_round(tb),gml.gm_round(lb-number),gml.gm_round(bb-1),'solid',1,1,node):#>0:
		#####----
		#debug_line.clear_points()
		#var x1 = (gml.gm_round(lb-number))
		#var y1 = gml.gm_round(tb)
		#var x2 = gml.gm_round(lb-number)
		#var y2 = gml.gm_round(bb-1)
		##debug_line.add_point(Vector2(x1, y1))
		##debug_line.add_point(Vector2(x2, y2))
		#debug_line.width = 1
		#debug_line.default_color = Color.RED
		#####----
		return true

	return false
	
func is_collision_moveable_solid_left(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels left of the collision rectangle to check for a collision
	#with a moveable solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var _rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb-number),gml.gm_round(tb),gml.gm_round(lb-number),gml.gm_round(bb-1),'moveable_solid',1,1,node):#>0:
		return true

	return false
	
func is_collision_moveable_solid_right(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels right of the collision rectangle to check for a collision
	#with a moveable solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var _lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(rb+number-1),gml.gm_round(tb),gml.gm_round(rb+number-1),gml.gm_round(bb-1),'moveable_solid',1,1,node):#>0:
		return true

	return false
	
func is_collision_right(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels right of the collision rectangle to check for a collision
	#with a solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var _lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(rb+number-1),gml.gm_round(tb),gml.gm_round(rb+number-1),gml.gm_round(bb-1),'solid',1,1,node):#>0:
		#####----
		#debug_line.clear_points()
		#var x1 = (gml.gm_round(rb+number-1))
		#var y1 = gml.gm_round(tb)
		#var x2 = gml.gm_round(rb+number-1)
		#var y2 = gml.gm_round(bb-1)
		#debug_line.add_point(Vector2(x1, y1))
		#debug_line.add_point(Vector2(x2, y2))
		#debug_line.width = 1
		#debug_line.default_color = Color.RED
		#####----
		return true

	return false

#---Vertical---

func get_id_collision_character_top(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_bottom(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels below the collision rectangle to check for a collision
	#with a solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var _tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb),gml.gm_round(bb+number-1),gml.gm_round(rb-1),gml.gm_round(bb+number-1),'solid',1,1,node):#>0:
		return true
		
	return false
	
func is_collision_character_bottom(number, id = null):
	#/*
	#0: Number of pixels to the bottom of the collision rectangle to check for a collision
	#with the character.
	#1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	#*/
	#the solid must be hitting the character's top side, so...
	var w=id
	if(id==null):
		w= "character"
	else: #--- have to add this due to not having id
		w = id.object_name 

	var all_characters = gml.get_all_instances(w)
	for character_instance in all_characters:
		
		var all_points_exact = calculate_collision_bounds(character_instance)
		var lb = all_points_exact.x
		var tb = all_points_exact.y
		var rb = all_points_exact.z
		var _bb = all_points_exact.w
	  #if there is a collision with temp_id on the character's top side
		if gml.collision_line(gml.gm_round(lb),gml.gm_round(tb-number),gml.gm_round(rb-1),gml.gm_round(tb-number),'character',1,1,character_instance):#>0:
			return true

	return false
	
func is_collision_character_top(number, id = null):
	#/*
	#0: Number of pixels above the collision rectangle to check for a collision
	#with the character.
	#1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	#*/
	#the solid must be hitting the character's bottom side, so...
	var w=id
	if(id==null):
		w= "character"
	else: #--- have to add this due to not having id
		w = id.object_name 

	var all_characters = gml.get_all_instances(w)
	for character_instance in all_characters:
		
		var all_points_exact = calculate_collision_bounds(character_instance)
		var lb = all_points_exact.x
		var _tb = all_points_exact.y
		var rb = all_points_exact.z
		var bb = all_points_exact.w
	  #if there is a collision with temp_id on the character's bottom side
		if gml.collision_line(gml.gm_round(lb),gml.gm_round(bb+number-1),gml.gm_round(rb-1),gml.gm_round(bb+number-1),'character',1,1,character_instance):#>0:
			return true

	return false
	
func is_collision_moving_solid_bottom(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_platform_bottom(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels below the collision rectangle to check for a collision
	#with a platform object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var _tb = all_points_exact.y
	var rb = all_points_exact.z
	var bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb),gml.gm_round(bb+number-1),gml.gm_round(rb-1),gml.gm_round(bb+number-1),'platform',1,1,node):#>0:
		return true

	return false
	
func is_collision_top(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels above the collision rectangle to check for a collision
	#with a solid object.
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var _bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb),gml.gm_round(tb-number),gml.gm_round(rb-1),gml.gm_round(tb-number),'solid',1,1,node):#>0:
		return true
	return false
	
func is_collision_water_top(number, node):
	#/*
	#An object can only use this script after calling "set_collision_bounds."
	#0: Number of pixels above the collision rectangle to check for a collision
	#with an "water".
	#*/
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.x
	var tb = all_points_exact.y
	var rb = all_points_exact.z
	var _bb = all_points_exact.w
	
	if gml.collision_line(gml.gm_round(lb),gml.gm_round(tb-number),gml.gm_round(rb-1),gml.gm_round(tb-number),'water',1,1,node):#>0:
		return true
		
	return false
