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
	
func instance_exists(obj):
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
	instance.position.x = x
	instance.position.y = y
	
	#getting each location of each object spawned in. note that this only applies to stationary objects
	var obj_groups = instance.get_groups()
	
	if !obj_groups.is_empty():
		for group in obj_groups:
			if !instanced_object_locations.has(group):
				instanced_object_locations[str(group)] = [Vector2(x, y)]#.append(Vector2(x, y))
			else:
				instanced_object_locations[group].append(Vector2(x, y))
	
	print(instanced_object_locations)
	
	return instance

func collision_point(x,y,obj: String,prec,notme): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	#var collision_point_area = collision_point_node.instantiate()
	#get_tree().current_scene.add_child(collision_point_area)
	var collision_point_area = get_tree().get_first_node_in_group('collision_point')
	var collision_shape = collision_point_area.get_child(0)
	
	collision_point_area.position = Vector2(x, y)
	#await get_tree().create_timer(0.1).timeout
	await get_tree().physics_frame

	var areas = collision_point_area.get_overlapping_areas()
	
	var group_names = []
	for area in areas:
		var node = area.get_parent()
		var groups = node.get_groups()
		group_names.append(groups)
	
	#collision_point_area.queue_free()
	
	print(group_names)
	
	if !group_names.is_empty():
		for group in group_names[0]:
			if obj == group:
				return true
	return false

func collision_rectangle_test(x,y,x2, y2, obj: String, passed_rect: Rect2,notme): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	var rect = Rect2(Vector2(x, y), Vector2(x2 - x, y2 - y))
	var visible_rect = ColorRect.new()
	visible_rect.position = Vector2(x, y)
	visible_rect.size = Vector2(x2 - x, y2 - y)
	visible_rect.color = Color(0.922, 0.518, 0.188, 0.784)
	get_tree().current_scene.add_child(visible_rect)
	
	var intersecting = rect.intersects(passed_rect)
	print(intersecting)

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
		var comparison_obj = get_tree().get_first_node_in_group(obj)
		var distance = Vector2(x, y).distance_to(Vector2(comparison_obj.position.x, comparison_obj.position.y))
		return distance
	else: #------------------ testing with this for now. not exactly sure how GML handles this
		return -1
		
		#var distance =
		
func instance_place(x,y,obj): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	pass
	
func instance_destroy(): #'Destroys current instance' ---  Should probably start passing 'self' or other node reference as an argument. Go through and check
	pass

func collision_rectangle(x1,y1,x2,y2,obj,prec,notme): #"This function tests whether there is a collision between the (filled) rectangle with the indicated opposite corners and entities of object obj. For example, you can use this to test whether an area is free of obstacles."
	var collision_rectangle = collision_rectangle_node.instantiate()
	get_tree().current_scene.add_child(collision_rectangle)
	var collision_shape = collision_rectangle.get_child(0)
	
	var convex_polygon = ConvexPolygonShape2D.new()
	convex_polygon.points = PackedVector2Array([Vector2(x1, y1), Vector2(x1, y2), Vector2(x2, y2), Vector2(x2, y1)])
	collision_shape.shape = convex_polygon
	
	#await get_tree().create_timer(0.05).timeout
	await get_tree().physics_frame
	await get_tree().process_frame
	
	var areas = collision_rectangle.get_overlapping_areas()

	var group_names = []
	for area in areas:
		var node = area.get_parent()
		var groups = node.get_groups()
		group_names.append(groups)
	
	print(group_names)
	
	collision_rectangle.queue_free()
	
	if !group_names.is_empty():
		for group in group_names[0]:
			if obj == group:
				return true
	return false

func point_distance(x1,y1,x2,y2): #"Returns the distance between point (x1,y1) and point (x2,y2)."
	var distance = Vector2(x1, y1).distance_to(Vector2(x2, y2))
	return distance

func instance_nearest(x,y,obj: String): #"Returns the id of the instance of type obj nearest to (x,y). obj can be an object or the keyword all."
	pass
	
func frac(number):
	return number - floor(number)

func object_get_parent(ind):
	pass

func place_meeting(x,y,obj):
	pass

#---------------------------------------
func background_index(background: String): #Changing this to a function
	pass

func get_all_instances(group: String): #Replacement for 'with' keyword
	var all_instances = get_tree().get_nodes_in_group(group)
	return all_instances

func room_height(): #Changing this to function. Return the height of current scene
	return 544 #-------------------------- temporary

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
