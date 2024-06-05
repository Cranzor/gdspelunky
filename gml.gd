extends Node

var collision_point_node = preload("res://CollisionPoint.tscn")
var collision_rectangle_node = preload("res://CollisionRectangle.tscn")

var instanced_object_locations = {}

#For tile_add
@export_dir var bg_folder
@export var bg_holder_path: String
var bg_dict = {'background_clouds': 0 , 'background_night' : 1, 'bg_alien_ship' : 2, 'bg_alien_ship2' : 3, 'bg_alien_ship3' : 4, 'bg_cave' : 5, 'bg_cave_top' : 6,
	'bg_cave_top2' : 7, 'bg_cave_top3' : 8, 'bg_cave_top4' : 9, 'bg_clouds' : 10, 'bg_dice_sign' : 11, 'bg_extras' : 12, 'bg_extras_ice' : 13, 'bg_extras_lush' : 14,
	'bg_extras_temple' : 15, 'bg_hmm' : 16, 'bg_kali_body' : 17, 'bg_kali_heads' : 18, 'bg_lady_xoc' : 19, 'bg_sky' : 20, 'bg_statues' : 21, 'bg_temp' : 22, 'bg_temple' : 23,
	'bg_tiki' : 24, 'bg_tiki_arms' : 25, 'bg_title' : 26, 'bg_trees' : 27, 'bg_wanted' : 28}


func string_char_at(str,index):
	var char = str[index - 1]
	return char

func string_delete(str,index,count):
	str = str.erase(index, count)
	return str
	
func string_insert(substr,str,index):
	str = str.insert(index, substr)
	return str
	
func instance_exists(obj): #--- FLAG. if enforcing this as a string, it sometimes breaks
	var existence = get_tree().get_nodes_in_group(str(obj))
	if existence == []:
		return false
	else:
		return true

#-----------------------Have to work on
func instance_create(x,y,obj): #should return the node as this is used in scripts
	var instance = obj.instantiate()
	var objects_holder = get_tree().get_first_node_in_group("objects_holder")
	objects_holder.add_child(instance)
	instance.global_position.x = x
	instance.global_position.y = y
	
	#for objects bigger than 16x16, get height and width of sprite texture and then add that as the size
	
	#getting each location of each object spawned in. note that this only applies to stationary objects
	var obj_groups = instance.get_groups()
	
	if !obj_groups.is_empty():
		for group in obj_groups:
			var location = Vector2(x, y) #--- -16 seems to fix collision for some reason? might need to change later. [FLAG] important. seems to be an issue here
			var default_size = Vector2(16, 16)
			
			var node_info: Array = [location, default_size, instance]
			if !instanced_object_locations.has(group):
				instanced_object_locations[str(group)] = [node_info]
			else:
				instanced_object_locations[group].append(node_info)
			#print(instanced_object_locations[group])
	return instance

func collision_point(x,y,obj: String,prec,notme): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	var intersecting = false
	var rect = Rect2(Vector2(x, y), Vector2(1, 1))
	#var visible_rect = ColorRect.new()
	#visible_rect.position = Vector2(x, y)
	#visible_rect.size = Vector2(1, 1)
	#visible_rect.color = Color(0.922, 0.518, 0.188, 0.5)
	#get_tree().current_scene.add_child(visible_rect)
	
	if instanced_object_locations.has(obj):
		for entry in instanced_object_locations[obj]:
			var location = entry[0]
			var obj_rect = Rect2(location, Vector2(16, 16))
			#var visible_obj_rect = ColorRect.new()
			#visible_obj_rect.position = location
			#visible_obj_rect.size = Vector2(location.x + 16, location.y + 16)
			#visible_obj_rect.color = Color(0.922, 0.518, 0.188, 0.2)
			#get_tree().current_scene.add_child(visible_obj_rect)
			intersecting = rect.intersects(obj_rect)
			if intersecting == true:
				#var visible_obj_rect = ColorRect.new()
				#visible_obj_rect.global_position = location
				#visible_obj_rect.size = Vector2(1, 1)
				#print(location)
				#visible_obj_rect.color = Color(0.922, 0.518, 0.188, 0.2)
				#get_tree().current_scene.add_child(visible_obj_rect)
				#get_tree().paused = true
				break
	
	return intersecting

#Always adds bg elements
func tile_add(background,left,top,width,height,x,y,depth): #return value of tile as well. left: left to right value in pixels. top: top to bottom in pixels
	var tile_set_name = str(background)
	var tile_id = bg_dict[tile_set_name]
	var coords = Vector2(0, -1)
	var size = Vector2(1, 1)
	var coords_array = []
	y = y / 16
	x = x / 16
	
	if left == 0:
		pass
	else:
		coords.x = left / 16
		
	if top == 0:
		pass
	else:
		coords.y = top / 16 - 1
		
	if width == 16:
		pass
	else:
		size.x = width / 16
	
	if height == 16:
		pass
	else:
		size.y = height / 16
	
	var cur_scene = get_tree()
	var bg_elements = cur_scene.get_first_node_in_group("bg_elements")
	
	#coords.y -= 1
	for i in range(0, size.y):
		y = y + 1
		coords.y += 1
		for j in range(0, size.x):
			bg_elements.set_cell(0, Vector2i(x + j, y - 1), tile_id, Vector2i(coords.x + j, coords.y))

func distance_tobject(obj: String, x, y): #Make this more accurate with this info https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Maths_And_Numbers/Angles_And_Distance/distance_to_object.htm
	if instance_exists(obj) == true:
		var comparison_obj_vector2 = instance_nearest(x, y, obj)
		var distance = Vector2(x, y).distance_to(Vector2(comparison_obj_vector2.position.x, comparison_obj_vector2.position.y))
		return distance
	else: #------------------ testing with this for now. not exactly sure how GML handles this
		return -1
		
		#var distance =
		
func instance_place(x,y,obj: String): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	#Should return node that is overlapped
	pass
	
func instance_destroy(obj): #'Destroys current instance' ---  Should probably start passing 'self' or other node reference as an argument. Go through and check
	if obj.has_method("destroy"):
		obj.destroy()
	
	if obj.is_in_group("solid"):
		obj.solid_destroy()
		
	obj.queue_free()

func collision_rectangle(x1,y1,x2,y2,obj,prec,notme): #"This function tests whether there is a collision between the (filled) rectangle with the indicated opposite corners and entities of object obj. For example, you can use this to test whether an area is free of obstacles."
	var intersecting = false
	var rect = Rect2(Vector2(x1, y1), Vector2(abs(x2 - x1), abs(y2 - y1)))
	#print(x1)
	#var visible_rect = ColorRect.new()
	#visible_rect.position = Vector2(x, y)
	#visible_rect.size = Vector2(x2 - x, y2 - y)
	#visible_rect.color = Color(0.922, 0.518, 0.188, 0.784)
	#get_tree().current_scene.add_child(visible_rect)
	
	if instanced_object_locations.has(obj):
		for entry in instanced_object_locations[obj]:
			var location = entry[0]
			var obj_rect = Rect2(location, Vector2(16, 16))
			
			#var visible_obj_rect = ColorRect.new()
			#visible_obj_rect.position = location
			#visible_obj_rect.size = Vector2(16, 16)
			#visible_obj_rect.color = Color(0.922, 0.518, 0.188, 0.784)
			
			intersecting = rect.intersects(obj_rect)
			if intersecting == true:
				break
	
	return intersecting

func point_distance(x1,y1,x2,y2): #"Returns the distance between point (x1,y1) and point (x2,y2)."
	var distance = Vector2(x1, y1).distance_to(Vector2(x2, y2))
	return distance

func instance_nearest(x,y,obj: String): #"Returns the id of the instance of type obj nearest to (x,y). obj can be an object or the keyword all."
	if instanced_object_locations.has(obj):
		var closest_point = null
		var closest_node
		
		for entry in instanced_object_locations[obj]:
			var location = entry[0]
			var distance = point_distance(x, y, location.x, location.y)
			if closest_point == null or distance < closest_point:
				closest_point = distance
				closest_node = entry[2]
		
		return closest_node
	
	return null
	
func frac(number):
	return number - floor(number)

func object_get_parent(ind):
	return ind.parent

func place_meeting(x,y,obj):
	var intersecting = false
	var rect = Rect2(Vector2(x, y), Vector2(16, 16)) #---[FLAG] grab the size later so this can be different size
	
	if instanced_object_locations.has(obj):
		for entry in instanced_object_locations[obj]:
			var location = entry[0]
			var obj_rect = Rect2(location, Vector2(16, 16))
			
			intersecting = rect.intersects(obj_rect)
			if intersecting == true:
				#print('obj_rect:' + str(obj_rect))
				#print('rect: ' + str(rect))
				break
	
	return intersecting
	
func move_snap(hsnap,vsnap, obj):
	pass

func sqr(number):
	return number * number
	
func instance_number(obj: String):
	pass

func collision_line(x1,y1,x2,y2,obj,prec,notme):
	var intersecting = false
	var all_points = []	
	
	#--- Bresenham’s Line Generation Algorithm: https://www.geeksforgeeks.org/bresenhams-line-generation-algorithm/
	var m_new = 2 * (y2 - y1)
	var slope_error_new = m_new - (x2 - x1)
	var y = y1
	if x1 == x2:
		for y_point in range(y1, y2 + 1):
			var point = Vector2(x1, y_point)
			all_points.append(point)
	else:
		for x in range(x1, x2+1):
			var point = Vector2(x, y)
			all_points.append(point)
			slope_error_new = slope_error_new + m_new
			
			if (slope_error_new >= 0): 
				y = y+1
				slope_error_new = slope_error_new - 2 * (x2 - x1) 

	if instanced_object_locations.has(obj):
		for point in all_points:
			if intersecting == false:
				var point_rect = Rect2(Vector2(point.x, point.y), Vector2(1, 1))
				#var visible_rect2 = ColorRect.new()
				#get_tree().current_scene.add_child(visible_rect2)
				#visible_rect2.global_position = Vector2(point.x, point.y)
				#visible_rect2.size = Vector2(1, 1)
				#visible_rect2.color = Color(0.922, 0.518, 0.188, 0.5)
				
				for entry in instanced_object_locations[obj]:
					var location = entry[0]
					var obj_rect = Rect2(location, Vector2(16, 16))
					
					intersecting = point_rect.intersects(obj_rect)
					#-------------------
					#print(location)
					#if location == Vector2(510, 160):
						#print('hi')
					#-------------------
					if intersecting == true:
						#var visible_rect = ColorRect.new()
						#get_tree().current_scene.add_child(visible_rect)
						#visible_rect.global_position = Vector2(location.x, location.y)
						#visible_rect.size = Vector2(16, 16)
						#visible_rect.color = Color(0.322, 0.518, 0.188, 0.5)
						#visible_rect.add_to_group('test_size')
						
						break
	
	return intersecting

func instance_activate_object(obj: String):
	pass
	
func sprite_index(sprite_name: String, node):
	var sprite = node.get_node('AnimatedSprite2D')
	sprite.play(sprite_name)

func get_sprite_index(node):
	pass

#---------------------------------------
func background_index(background: String): #Changing this to a function
	pass

func get_all_instances(group: String): #Replacement for 'with' keyword
	var all_instances = get_tree().get_nodes_in_group(group)
	return all_instances

func room_height(): #Changing this to function. Return the height of current scene
	return 544 #-------------------------- temporary

func room_width():
	pass

func view(view_value: String):
	var view = get_tree().get_first_node_in_group("view")
	
	if view_value == 'xview':
		pass
		
	elif view_value == 'yview':
		pass
		
	elif view_value == 'wview':
		pass
		
	elif view_value == 'hview':
		pass

func room_get_name():
	pass

#------------------------
func singleton_test():
	var bg_holder_list = get_tree().get_nodes_in_group('BgHolder')
	var bg_holder = bg_holder_list[0]
	var tile_map = TileMap.new()
	bg_holder.add_child(tile_map)
	bg_holder


#-------Support functions
func get_instance(obj: String): #Support function for when GML handles this by itself. Only should be used for objects that exist once per level
	if instance_exists(obj):
		var instance = get_tree().get_first_node_in_group(str(obj))
		return instance

func update_obj_list_collision(node):
	var obj_groups = node.get_groups()
	
	if !obj_groups.is_empty():
		for group in obj_groups:
			for entry in instanced_object_locations[group]:
				if entry[2] == node:
					print(group)
					print("hi")
			
			#var node_info: Array = [location, default_size, instance]
			#if !instanced_object_locations.has(group):
				#instanced_object_locations[str(group)] = [node_info]
			#else:
				#instanced_object_locations[group].append(node_info)
