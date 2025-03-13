extends Node
class_name GML_Class

var collision_handling = CollisionHandling.new()
var sprite_database = Sprites.new()
var object_database = ObjectDatabase.new()

const TEXT = preload("res://scenes/text.tscn")
const SPRITE = preload("res://scenes/sprite.tscn")
const COLLISION_RAY = preload("res://scenes/collision/collision_ray.tscn")

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

var background_index #---[FLAG] have this set the background of the stage

var draw_font
var draw_color

var room_speed = 30
var view_enabled = true #--- doesn't seem to be false in any instance within the game

var room_height: int:
	set(value):
		pass
	get:
		return 544 #--- placeholder value

var room_width: int:
	set(value):
		pass
	get:
		return 400 #--- placeholder value
		
var view_vborder: int: #--- vertical boundary of camera. original code always has it as view_vborder[0]
	set(value):
		view_node.drag_top_margin = ((float(value) / 2) + view_node.offset.y) / 240
		view_node.drag_bottom_margin = ((float(value) / 2) + view_node.offset.y) / 240
		
	get:
		return view_node.drag_top_margin #--- can return only one as the top/bottom should always be the same
		
var view_hborder: int:#--- horizontal boundary of camera. original code always has it as view_hborder[0]. only used in olmec scene
	set(value):
		view_node.drag_right_margin = (float(value) / 2) / 320
		view_node.drag_left_margin = (float(value) / 2) / 320
	get:
		return view_node.drag_right_margin

var view_node: Camera2D:
	get:
		return get_tree().get_first_node_in_group("view")

var view_object #---[FLAG] make this attach the camera to the node it's set equal to
		
var view_yview: int:
	set(value):
		var bottom_view = view_node.get_screen_center_position().y + 120
		var player1 = gml.get_instance("player1")
		var bottom_diff = bottom_view - player1.position.y
		
		if bottom_diff < 144: #--- reason for 144 is bottom of the screen is 240, and vborder is 96. 240 - 96 = 144.
			view_node.offset.y = value #--- diff being at 144 means player y position is at the top of the border, resulting in one pixel down + one pixel up cancelling out
		
	get:
		return view_node.offset.y
var view_xview: int:
	set(value):
		view_node.offset.x = value
	get:
		return view_node.offset.x

#var view_hview: int:
	#set(value):
		#view_node.offset.x = value

func string_char_at(passed_string,index):
	var character = passed_string[index - 1]
	return character

func string_delete(passed_string,index,count):
	passed_string = passed_string.erase(index, count)
	return passed_string
	
func string_insert(substr,passed_string,index):
	passed_string = passed_string.insert(index, substr)
	return passed_string
	
func instance_exists(obj: String): #--- FLAG. if enforcing this as a string, it sometimes breaks
	var existence = get_tree().get_nodes_in_group(str(obj))
	if existence == []:
		return false
	else:
		return true

#-----------------------Have to work on
func instance_create(x,y,obj): #should return the node as this is used in scripts
	if obj is String:
		assert(obj is String, "String was passed into instance_create")
		obj = load(obj)
	var instance = obj.instantiate()
	instance.position = Vector2(x, y)
	var objects_holder = get_tree().get_first_node_in_group("objects_holder")
	objects_holder.add_child(instance)
	
	#for objects bigger than 16x16, get height and width of sprite texture and then add that as the size
	
	#getting each location of each object spawned in. note that this only applies to stationary objects
	#set_up_object_collision(instance)
	
	return instance
	
func collision_point(x,y,obj: String,_prec,_notme): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	return handle_collision_ray(x, y, x, y, obj)

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

func distance_to_object(obj: GMObject, comparison_node: GMObject): #Make this more accurate with this info https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Maths_And_Numbers/Angles_And_Distance/distance_to_object.htm
	if obj == null:
		return 50000.0 #--- returning a large number here for variables passed in that don't exist. original engine seems to just not make the function work at all if the object doesn't exist
	var distance: float = comparison_node.position.distance_to(obj.position)
	return distance
	
	
	#var x = node.position.x
	#var y = node.position.y
	#
	#if instance_exists(obj) == true:
		#var comparison_obj_vector2 = instance_nearest(x, y, obj)
		#var distance = Vector2(x, y).distance_to(Vector2(comparison_obj_vector2.position.x, comparison_obj_vector2.position.y))
		#return distance
	#else: #------------------ testing with this for now. not exactly sure how GML handles this
		#return -1

func distance_to_point(x, y, node): #--- used only once in the whole game (vampire step event)
	pass

func point_direction(x1, y1, x2, y2): #---[FLAG] may need to adjust angle to be more like GML (uses different orientation)
	var point1 = Vector2(x1, y1)
	var point2 = Vector2(x2, y2)
	
	var angle = point1.angle_to_point(point2)
	angle = radtodeg(angle)
	return -angle
		
func instance_place(x,y,obj: String, comparison_object): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	var comparison_object_collision_shape_size = comparison_object.get_node("Sprites/MainAnimations/Area2D/CollisionShape2D").shape.get_rect().size
	return handle_collision_ray(x, y, comparison_object_collision_shape_size.x, comparison_object_collision_shape_size.y, obj)

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
	return handle_collision_shapecast(x1, y1, x2, y2, obj)

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

func place_meeting(x, y, obj: String, comparison_object): #--- only used 4 times in the whole game
	var intersecting = instance_place(x, y, obj, comparison_object)
	if intersecting:
		return true
	return false
	
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
	return handle_collision_ray(x1, y1, x2, y2, obj)

func instance_activate_object(obj: String):
	pass

func instance_activate_region(left, top, width, height, inside):
	pass

func draw_set_font(font: String):
	draw_font = font

func draw_set_color(color: Color):
	draw_color = color

func draw_set_alpha(alpha):
	pass

func draw_rectangle(x1, y1, x2, y2, outline):
	pass

#--- font represents draw_set_font, and color represents draw_set_color. name is used to identify the label node
func draw_text(x, y, string: String, name: String, node):
	#--- capitalizing the full string as the fonts don't support lowercase letters
	string = string.to_upper()
	
	#--- add a holder for text if it doesn't exist
	if !node.has_node("Text"):
		var default_node = Node2D.new()
		default_node.name = "Text"
		node.add_child(default_node)

	var text_holder = node.get_node("Text")
	
	#--- create label node for string if it doesn't exist
	if !node.has_node("Text/" + name.to_pascal_case()):
		var text_node: Label = TEXT.instantiate()
		#text_node.global_position = Vector2(x, y)
		text_node.name = name.to_pascal_case()
		text_node.text = string
		text_node.add_theme_color_override("font_color", draw_color)
		
		if draw_font == "main_font":
			text_node.add_theme_font_override("font", text_node.main_font)
		elif draw_font == "small_font":
			text_node.add_theme_font_override("font", text_node.small_font)
			
		text_holder.add_child(text_node)
		
	var string_node = node.get_node("Text/" + name.to_pascal_case())
	
	#--- setting the text (in case of updates) and making the string node visible because it hides itself each frame
	string_node.global_position = Vector2(x, y)
	string_node.text = string
	string_node.text_displayed = true
	
func draw_sprite(sprite: String, subimg: int, x, y, node, is_object_sprite: bool = false): #--- appears to typically be used for sprites with only 1 animation frame
	#--- added "is_object_sprite" bool to indicate whether sprite is intended to override the main sprite or not
	var sprite_pascal_case = sprite.to_pascal_case()
	
	if is_object_sprite:
		node.sprite_index = sprite
		
		#--- image_index being passed in results in the sprite playing normally. otherwise, a specific frame is set
		var current_index = node.image_index
		if subimg != current_index:
			node.image_index = subimg

		node.animated_sprite_node.global_position = Vector2(x, y)
		node.draw_object = true
	
	else:
		if !node.has_node("HeldSprites/" + sprite_pascal_case):
			var new_sprite = SPRITE.instantiate()
			new_sprite.name = sprite.to_pascal_case()
			node.sprites_holder.add_child(new_sprite)
			node.set_animation(sprite, new_sprite)
		

		var new_sprite = node.get_node("HeldSprites/" + sprite_pascal_case)
		if new_sprite == null:
			new_sprite = node.get_node("Sprites/" + sprite_pascal_case) #---[FLAG] janky way of handling this. make this uniform
		new_sprite.global_position = Vector2(x, y)
		new_sprite.sprite_displayed = true
		
		var current_progress = new_sprite.get_frame_progress()
		new_sprite.set_frame_and_progress(subimg, current_progress)


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

func tile_layer_find(depth, x, y): #---[FLAG] have to implement this. returns the given tile
	pass

func tile_delete(id): #---[FLAG] have to implement this
	pass

func random(x): #---[FLAG] may be a float?
	return randi_range(0, x)

func rand(x1, x2):
	return randi_range(x1, x2)

func gm_round(n):
	var return_val
	if abs(n - int(n)) == 0.5:
		if not fmod(round(float(n)), 2.0) == 0:
			if n > 0:
				return_val = round(n) - 1.0
			else:
				return_val = round(n) + 1.0
		else:
			return_val = round(n)
	else:
		return_val = round(n)
	return return_val

#---------------------------------------
func get_all_instances(group: String): #Replacement for 'with' keyword
	var all_instances = get_tree().get_nodes_in_group(group)
	return all_instances


func view(view_value: String):
	var view = view_node
	#view.force_update_scroll()
	
	if view != null:
		view.force_update_scroll()
		
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

func draw_sprite_ext(sprite, subimg, x, y, xscale, yscale, rot, color, alpha, node: GMObject, is_object_sprite: bool = true):
	#--- added "is_object_sprite" bool to indicate whether sprite is intended to override the main sprite or not
	if subimg == -1:
		subimg = node.subimg

	var sprite_pascal_case = sprite.to_pascal_case()
	
	if is_object_sprite:
		node.sprite_index = sprite
		
		#--- image_index being passed in results in the sprite playing normally. otherwise, a specific frame is set
		var current_index = node.image_index
		if subimg != current_index:
			node.image_index = subimg

		node.animated_sprite_node.global_position = Vector2(x, y)
		node.animated_sprite_node.scale = Vector2(xscale, yscale)
		node.animated_sprite_node.rotation_degrees = -rot #--- appears to rotate counter-clockwise in GML
		if color != gml.c_white: #--- c_white is to display the default color
			node.animated_sprite_node.self_modulate = color
		node.animated_sprite_node.self_modulate.a = alpha
		node.draw_object = true
	
	else:
		if !node.has_node("Sprites/" + sprite_pascal_case):
			var new_sprite = SPRITE.instantiate()
			new_sprite.name = sprite.to_pascal_case()
			node.sprites_holder.add_child(new_sprite)
			node.set_animation(sprite, new_sprite)
		

		var new_sprite = node.get_node("Sprites/" + sprite_pascal_case)
		new_sprite.global_position = Vector2(x, y)
		new_sprite.scale = Vector2(xscale, yscale)
		new_sprite.rotation_degrees = -rot #--- appears to rotate counter-clockwise in GML
		new_sprite.self_modulate = color
		new_sprite.self_modulate.a = alpha
		new_sprite.sprite_displayed = true
		
		var current_progress = new_sprite.get_frame_progress()
		new_sprite.set_frame_and_progress(subimg, current_progress)

func degtorad(deg): #---[FLAG] need to test
	var angle_radians = deg * PI / 180
	return angle_radians

func radtodeg(rad): #---[FLAG] need to test
	var angle_degrees = rad * 180 / PI
	return angle_degrees
	
func arctan(x):
	var inverse_tanget = atan(x) #---[FLAG] need to test
	return inverse_tanget

func make_color_rgb(red, green, blue):
	return Color(red, green, blue)

func string_upper(string: String):
	string.replace("_", " ")
	return string.to_upper()

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
	
func generate_random_hash():
	var characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYS'
	var length = 16
	var word = "id_"
	var n_char = len(characters)
	for i in range(length):
		word += characters[randi_range(0, n_char - 1)]
	return word

func handle_collision_ray(x1, y1, x2, y2, obj):
	var collision_ray: RayCast2D = get_tree().get_first_node_in_group("collision_ray")
	var colliders = []
	collision_ray.position = Vector2(x1 + 0.1, y1 + 0.1) #--- no idea why this works but it fixes collision issues
	collision_ray.target_position = Vector2(abs(x2 - (x1 - 0.1)), abs(y2 - (y1 - 0.1))) #--- raycast bordering on a pixel exactly seems to register it as colliding
	collision_ray.enabled = true
	collision_ray.force_raycast_update()
	while collision_ray.is_colliding():
		collision_ray.force_update_transform()
		var area = collision_ray.get_collider()
		colliders.append(area)
		collision_ray.add_exception(area)
		collision_ray.force_raycast_update()
	collision_ray.enabled = false
	
	for collider in colliders:
		collision_ray.remove_exception(collider)
	
	if colliders != []:
		for collider in colliders:
			var object_node = collider.get_parent().get_parent().get_parent()
			var groups = object_node.get_groups()
			if obj in groups:
				#####---
				object_node.debug_glow(true)
				#####---
				return object_node

	return false

func handle_collision_shapecast(x1, y1, x2, y2, obj):
	var shapecast: ShapeCast2D = get_tree().get_first_node_in_group("collision_shapecast")
	var colliders = []

	var size = Vector2(abs(x2 - x1), abs(y2 - y1))
	shapecast.position = Vector2(x1 + (size.x / 2), y1 + (size.y / 2))
	shapecast.shape.size = size
	shapecast.enabled = true
	shapecast.force_shapecast_update()
	var collision_count = shapecast.get_collision_count()
	while shapecast.is_colliding():
		var area = shapecast.get_collider(0)
		colliders.append(area)
		shapecast.add_exception(area)
		shapecast.force_shapecast_update()
	shapecast.enabled = false
	
	for collider in colliders:
		shapecast.remove_exception(collider)
	
	if colliders != []:
		for collider in colliders:
			var object_node = collider.get_parent().get_parent().get_parent()
			var groups = object_node.get_groups()
			if obj in groups:
				return object_node

	return false


func highlight_node(node: GMObject):
	var animated_sprite2d = node.get_node("Sprites/MainAnimations")
	var color_rect: ColorRect = ColorRect.new()
	color_rect.name = "ColorRect"
	color_rect.size = node.object_size
	color_rect.color = Color.CRIMSON
	if node.get_node("Sprites/MainAnimations/ColorRect") == null:
		animated_sprite2d.add_child(color_rect)
