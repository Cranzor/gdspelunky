extends Node
class_name GML_Class

var collision_handling = CollisionHandling.new()
var sprite_database = Sprites.new()
var object_database = ObjectDatabase.new()

#For tile_add
@export_dir var bg_folder
@export var bg_holder_path: String
var bg_dict = {'background_clouds': 0 , 'background_night' : 1, 'bg_alien_ship' : 2, 'bg_alien_ship2' : 3, 'bg_alien_ship3' : 4, 'bg_cave' : 5, 'bg_cave_top' : 6,
	'bg_cave_top2' : 7, 'bg_cave_top3' : 8, 'bg_cave_top4' : 9, 'bg_clouds' : 10, 'bg_dice_sign' : 11, 'bg_extras' : 12, 'bg_extras_ice' : 13, 'bg_extras_lush' : 14,
	'bg_extras_temple' : 15, 'bg_hmm' : 16, 'bg_kali_body' : 17, 'bg_kali_heads' : 18, 'bg_lady_xoc' : 19, 'bg_sky' : 20, 'bg_statues' : 21, 'bg_temp' : 22, 'bg_temple' : 23,
	'bg_tiki' : 24, 'bg_tiki_arms' : 25, 'bg_title' : 26, 'bg_trees' : 27, 'bg_wanted' : 28}

var c_aqua = Color(0, 255, 255)
var c_black = Color(0, 0, 0)
var c_blue = Color(0, 0, 255)
var c_dkgray = Color(64, 64, 64)
var c_fuchsia = Color(255, 0, 255)
var c_gray = Color(128, 128, 128)
var c_green = Color(0, 128, 0)
var c_lime = Color(0, 255, 0)
var c_ltgray = Color(192, 192, 192)
var c_maroon = Color(128, 0, 0)
var c_navy = Color(0, 0, 128)
var c_olive = Color(128, 128, 0)
var c_orange = Color(255, 160, 64)
var c_purple = Color(128, 0, 128)
var c_red = Color(255, 0, 0)
var c_silver = Color(192, 192, 192) #--- same as light gray?
var c_teal = Color(0, 128, 128)
var c_white = Color(255, 255, 255)
var c_yellow = Color(255, 255, 0)

var room_speed = 30
var view_enabled = true #--- doesn't seem to be false in any instance within the game

func string_char_at(passed_string,index):
	var character = passed_string[index - 1]
	return character

func string_delete(passed_string,index,count):
	passed_string = passed_string.erase(index, count)
	return passed_string
	
func string_insert(substr,passed_string,index):
	passed_string = passed_string.insert(index, substr)
	return passed_string
	
func instance_exists(obj): #--- FLAG. if enforcing this as a string, it sometimes breaks
	var existence = get_tree().get_nodes_in_group(str(obj))
	if existence == []:
		return false
	else:
		return true

#-----------------------Have to work on
func instance_create(x,y,obj): #should return the node as this is used in scripts
	if obj is String:
		obj = load(obj)
	var instance = obj.instantiate()
	instance.position.x = x
	instance.position.y = y
	var objects_holder = get_tree().get_first_node_in_group("objects_holder")
	objects_holder.add_child(instance)
	#instance.position.x = x
	#instance.position.y = y
	
	#for objects bigger than 16x16, get height and width of sprite texture and then add that as the size
	
	#getting each location of each object spawned in. note that this only applies to stationary objects
	#set_up_object_collision(instance)
	
	return instance
	
func collision_point(x,y,obj: String,_prec,_notme): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	var intersecting = false
	var rect = Rect2(Vector2(x, y), Vector2(1, 1))
	
	var nodes_to_check = collision_handling.get_nodes_to_check(obj, rect)
	intersecting = collision_handling.check_collision_group(nodes_to_check, rect)
	
	return intersecting	

#Always adds bg elements
func tile_add(background,left,top,width,height,x,y,depth): #return value of tile as well. left: left to right value in pixels. top: top to bottom in pixels
	var tile_set_name = str(background)
	var tile_id = bg_dict[tile_set_name]
	var layer_number = tile_id
	var coords = Vector2(0, -1)
	var size = Vector2(1, 1)
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
	var bg_elements: TileMap = cur_scene.get_first_node_in_group("bg_elements")
	
	if depth > 4095:
		depth = 4095
	
	bg_elements.set_layer_z_index(layer_number, -depth)
	
	#coords.y -= 1
	for i in range(0, size.y):
		y = y + 1
		coords.y += 1
		for j in range(0, size.x):
			bg_elements.set_cell(layer_number, Vector2i(x + j, y - 1), tile_id, Vector2i(coords.x + j, coords.y))

func distance_to_object(obj: String, node): #Make this more accurate with this info https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Maths_And_Numbers/Angles_And_Distance/distance_to_object.htm
	var x = node.position.x
	var y = node.position.y
	
	if instance_exists(obj) == true:
		var comparison_obj_vector2 = instance_nearest(x, y, obj)
		var distance = Vector2(x, y).distance_to(Vector2(comparison_obj_vector2.position.x, comparison_obj_vector2.position.y))
		return distance
	else: #------------------ testing with this for now. not exactly sure how GML handles this
		return -1

func point_direction(x1, y1, x2, y2): #---[FLAG] have to implement
	pass
		
func instance_place(x,y,obj: String, comparison_object): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	#--- think this function actually accounts for precise checking
	var bounding_box: Vector2
	var position_with_offset: Vector2
	
	var comparison_current_sprite = comparison_object.sprite_index
	var offset = sprite_database.sprite_database[comparison_current_sprite]["origin"]
	
	if sprite_database.sprite_database[comparison_current_sprite]["mask"]["shape"] == "RECTANGLE":
		bounding_box = sprite_database.sprite_database[comparison_current_sprite]["mask"]["collision_rectangles"][1]
		#position_with_offset = collision_handling.get_position_with_offset_applied(Vector2(x, y), offset - sprite_database.sprite_database[obj]["mask"]["collision_rectangles"][0])
		position_with_offset = collision_handling.get_position_with_offset_applied(Vector2(x, y), offset - sprite_database.sprite_database[comparison_current_sprite]["mask"]["collision_rectangles"][0])
	
	var comparison_rect: Rect2 = Rect2(position_with_offset, bounding_box)
	
	var returned_node = null
	var nodes_to_check = collision_handling.get_nodes_to_check(obj, comparison_rect)

	for node in nodes_to_check:
		var intersecting: bool = collision_handling.check_individual_collision(node, comparison_rect)
		if intersecting == true:
			returned_node = node
			return returned_node
			
	return null

func instance_position(x, y, obj: String): #---[FLAG] this needs checked
	var intersecting = collision_point(x, y, obj, 0, 0)
	if intersecting:
		var instance = instance_nearest(x, y, obj)
		return instance
	else:
		return null

func instance_destroy(obj): #'Destroys current instance' ---  Should probably start passing 'self' or other node reference as an argument. Go through and check
	if obj.has_method("destroy"):
		obj.destroy()
	
	obj.queue_free()

func collision_rectangle(x1,y1,x2,y2,obj,_prec,_notme): #"This function tests whether there is a collision between the (filled) rectangle with the indicated opposite corners and entities of object obj. For example, you can use this to test whether an area is free of obstacles."
	var intersecting = false
	var rect = Rect2(Vector2(x1, y1), Vector2(abs(x2 - x1), abs(y2 - y1)))
	
	var nodes_to_check = collision_handling.get_nodes_to_check(obj, rect)
	intersecting = collision_handling.check_collision_group(nodes_to_check, rect)
	
	return intersecting	

func point_distance(x1,y1,x2,y2): #"Returns the distance between point (x1,y1) and point (x2,y2)."
	var distance = Vector2(x1, y1).distance_to(Vector2(x2, y2))
	return distance

func instance_nearest(x,y,obj: String): #"Returns the id of the instance of type obj nearest to (x,y). obj can be an object or the keyword all."
	#var tester_rect = Rect2(Vector2(x, y), Vector2(1, 1)) --- appears to be unnecessary
	var nodes_to_check = collision_handling.get_all_nodes_in_group(obj)
	var closest_distance
	var closest_node
	
	if nodes_to_check == null:
		return null
	
	for node in nodes_to_check:
		if closest_distance == null:
			closest_node = node
		
		var current_distance = point_distance(x, y, node.position.x, node.position.y)
		if closest_distance == null or current_distance < closest_distance:
			closest_distance = current_distance
			closest_node = node
	return closest_node
	
	
func frac(number):
	return number - floor(number)

func object_get_parent(ind):
	return ind.parent

func place_meeting(x,y,_obj): #--- only used 4 times in the whole game --- [FLAG] need to actually implement this
	var intersecting = false
	var rect = Rect2(Vector2(x, y), Vector2(16, 16)) #---[FLAG] grab the size later so this can be different size
	
	#if instanced_object_locations.has(obj):
		#for entry in instanced_object_locations[obj]:
			#var location = entry[0]
			#var obj_rect = Rect2(location, Vector2(16, 16))
			#
			#intersecting = rect.intersects(obj_rect)
			#if intersecting == true:
				##print('obj_rect:' + str(obj_rect))
				##print('rect: ' + str(rect))
				#break
	
	return intersecting
	
func move_snap(hsnap,vsnap, obj):
	if hsnap != 1:
		var new_x_target = get_nearest_multiple(obj.position.x, hsnap)
		obj.position.x = new_x_target
	
	if vsnap != 1:
		var new_y_target = get_nearest_multiple(obj.position.y, vsnap)
		obj.position.y = new_y_target

func sqr(number):
	return number * number
	
func instance_number(obj: String):
	var all_instances = collision_handling.get_all_nodes_in_group(obj)
	var number_of_instances = all_instances.size()
	return number_of_instances

func collision_line(x1,y1,x2,y2,obj,_prec,_notme):
	var intersecting = false
	var vertical_rect: Rect2
	var tester_rect = Rect2(Vector2(x1, y1), Vector2(x2, y2))
	
	var nodes_to_check = collision_handling.get_nodes_to_check(obj, tester_rect)
	
	if nodes_to_check != null:
		if x1 == x2:
			vertical_rect = Rect2(Vector2(x1, y1), Vector2(1, abs(y2-y1) + 1))

		else:
			vertical_rect = Rect2(Vector2(x1, y1), Vector2(abs(x2 - x1) + 1, 1))
		
		#if x1 == 595 and y1 == 187:
			#print("hi")
		intersecting = collision_handling.check_collision_group(nodes_to_check, vertical_rect)
		return intersecting
		
	else:
		return false

func instance_activate_object(obj: String):
	pass
	
func sprite_index(sprite_name: String, node):
	var sprite = node.find_child("AnimatedSprite2D")
	sprite.play(sprite_name)

func get_sprite_index(node):
	pass

func draw_text(x, y, string, font: String, color: Color): #--- added font and color values here
	pass

func string_length(passed_string: String):
	return passed_string.length()
	
func keyboard_check_pressed(key):
	var check = Input.is_key_pressed(key) #--- fix this
	return check

func highscore_value(place: int):
	return 0 #--- [FLAG] temporary value
	
func instance_deactivate_region(left, top, width, height, inside, notme):
	pass
	
func room_restart():
	get_tree().reload_current_scene()
	
func instance_activate_all():
	pass

func instance_deactivate_all(notme):
	pass

func game_end():
	Screen.game_end()
	get_tree().quit()
	
func animation_end(object, animated_sprite):
	#var number_of_frames = animated_sprite.sprite_frames.get_frame_count(animated_sprite.animation)
	#var current_index = animated_sprite.get_frame()
	
	#if current_index == number_of_frames - 1:
	
	if animated_sprite.frame == 0:
		return true
	else:
		return false

func tile_layer_find(depth, x, y): #---[FLAG] have to implement this. returns the given tile
	pass

func tile_delete(id): #---[FLAG] have to implement this
	pass

func random(x):
	pass

func rand(x1, x2):
	return randi_range(x1, x2)

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
	
	if view != null:
		
		if view_value == 'xview':
			return round(view.get_screen_center_position().x - 160)
			
		elif view_value == 'yview':
			return round(view.get_screen_center_position().y - 120)
			
		elif view_value == 'wview':
			return 320
			
		elif view_value == 'hview':
			return 240
	
	else:
		return 0

func room_get_name():
	var root = get_tree().get_current_scene()
	var room_name = root.room_name
	return room_name

func draw_sprite_ext(node, sprite, subimg, x, y, xscale, yscale, rot, color, alpha):
	node.sprite_index = sprite
	node.image_index = subimg
	node.animated_sprite_node.position = Vector2(x, y)
	node.animated_sprite_node.scale = Vector2(xscale, yscale)
	node.animated_sprite_node.rotation_degrees = -rot #--- appears to rotate counter-clockwise in GML
	node.animated_sprite_node.self_modulate = color
	node.animated_sprite_node.self_modulate.a = alpha

func degtorad(deg): #---[FLAG] need to test
	var angle_radians = deg * PI / 180
	return angle_radians

func radtodeg(rad): #---[FLAG] need to test
	var angle_degrees = rad * 180 / PI
	return angle_degrees
	
func arctan(x):
	var inverse_tanget = atan(x) #---[FLAG] need to test
	return inverse_tanget
	
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

func get_nearest_multiple(number, target_number): #--- Adapted from here: https://www.geeksforgeeks.org/multiple-of-x-closest-to-n/
	if target_number > number:
		return target_number
	var z = int(target_number/2)
	number = number + z
	number = number - (int(number) % int(target_number))
	return number

func alarm_frames(frame_number):
	frame_number = float(frame_number)
	var frame_rate = 30.0
	var time_truncated = int(frame_number/frame_rate * 100)/100.0
	print("here")
	print(time_truncated)
	return time_truncated
	
func generate_random_hash():
	var characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYS'
	var length = 16
	var word = "id_"
	var n_char = len(characters)
	for i in range(length):
		word += characters[randi_range(0, n_char - 1)]
	return word
