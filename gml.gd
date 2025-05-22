extends Node
class_name GML_Class

var collision_handling = CollisionHandling.new()
var sprite_database = Sprites.new()
var object_database = ObjectDatabase.new()

const TEXT = preload("res://scenes/text.tscn")
const SPRITE = preload("res://scenes/sprite.tscn")
const COLLISION_RAY = preload("res://scenes/collision/collision_ray.tscn")

var collision_ray: RayCast2D = null
var shapecast: ShapeCast2D = null

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

var collision_layers = [ProjectSettings.get_setting("layer_names/2d_physics/layer_1"), ProjectSettings.get_setting("layer_names/2d_physics/layer_2"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_3"), ProjectSettings.get_setting("layer_names/2d_physics/layer_4"), ProjectSettings.get_setting("layer_names/2d_physics/layer_5"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_6"), ProjectSettings.get_setting("layer_names/2d_physics/layer_7"), ProjectSettings.get_setting("layer_names/2d_physics/layer_8"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_9"), ProjectSettings.get_setting("layer_names/2d_physics/layer_10"), ProjectSettings.get_setting("layer_names/2d_physics/layer_11"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_12"), ProjectSettings.get_setting("layer_names/2d_physics/layer_13"), ProjectSettings.get_setting("layer_names/2d_physics/layer_14"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_15"), ProjectSettings.get_setting("layer_names/2d_physics/layer_16"), ProjectSettings.get_setting("layer_names/2d_physics/layer_17"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_18"), ProjectSettings.get_setting("layer_names/2d_physics/layer_19"), ProjectSettings.get_setting("layer_names/2d_physics/layer_20"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_21"), ProjectSettings.get_setting("layer_names/2d_physics/layer_22"), ProjectSettings.get_setting("layer_names/2d_physics/layer_23"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_24"), ProjectSettings.get_setting("layer_names/2d_physics/layer_25"), ProjectSettings.get_setting("layer_names/2d_physics/layer_26"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_27"), ProjectSettings.get_setting("layer_names/2d_physics/layer_28"), ProjectSettings.get_setting("layer_names/2d_physics/layer_29"),
ProjectSettings.get_setting("layer_names/2d_physics/layer_30"), ProjectSettings.get_setting("layer_names/2d_physics/layer_31")]

var background_index #---[FLAG] have this set the background of the stage

var draw_font
var draw_color

var text_to_draw: Array

var sprites_to_draw: Array
var sprites_to_draw_current_frame: Dictionary

var sprites_to_draw_ext: Array
var sprites_to_draw_ext_current_frame: Dictionary

var draw_to_surface: bool = false

var room_speed = 30
var view_enabled = true #--- doesn't seem to be false in any instance within the game

var changed_scene: bool = false

var view2: View:
	get:
		return get_tree().get_first_node_in_group("view")

var room_height: int:
	get:
		return view2.level_boundaries.y

var room_width: int:
	get:
		return view2.level_boundaries.x
		
var view_vborder: int: #--- vertical boundary of camera. original code always has it as view_vborder[0]
	set(value):
		view2.border.y = value
		
	get:
		return view2.border.y
		
var view_hborder: int:#--- horizontal boundary of camera. original code always has it as view_hborder[0]. only used in olmec scene
	set(value):
		view2.border.x = value
		
	get:
		return view2.border.x

var view_object: GMObject:
	set(value):
		view2.object_following = value
	get:
		return view2.object_following
		
var view_yview: int:
	set(value):
		view2.set_camera_y_pos(value)
		
	get:
		return view2.get_camera_pos().y
var view_xview: int:
	set(value):
		view2.set_camera_x_pos(value)
	get:
		return view2.get_camera_pos().x

#var view_hview: int:
	#set(value):
		#view_node.offset.x = value

func string_char_at(passed_string: String, index: int):
	var length = passed_string.length()
	if index > length:
		return ""
	var adjusted_index = index - 1
	var character = passed_string[adjusted_index]
	return character

func string_delete(passed_string: String ,index,count):
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
func instance_create(x,y,obj,run_create = true): #---[FLAG] make this so that obj is forced to be type GMObject
	if obj is String:
		assert(obj is String, "String was passed into instance_create")
		obj = load(obj)
	var instance = obj.instantiate()
	instance.position = Vector2(x, y)
	var objects_holder = get_tree().get_first_node_in_group("objects_holder")
	objects_holder.add_child(instance)
	
	get_tree().call_group("gm_object", "force_update_transform")
	if run_create:
		instance.run_create_function(instance)
	
	#for objects bigger than 16x16, get height and width of sprite texture and then add that as the size
	
	#getting each location of each object spawned in. note that this only applies to stationary objects
	#set_up_object_collision(instance)
	
	return instance
	
func collision_point(x,y,obj: String,_prec,notme,calling_object: GMObject = null): #"This function tests whether at point (x,y) there is a collision with entities of object obj."
	var possible = []
	var overlap_query = PhysicsPointQueryParameters2D.new()
	overlap_query.collide_with_bodies = true
	overlap_query.position = Vector2(x, y)
	overlap_query.collision_mask = 1
	var overlaps = get_tree().get_first_node_in_group("gm_object").get_world_2d().direct_space_state.intersect_point(overlap_query, 100)
	for overlap in overlaps:
		var collider = overlap["collider"]
		var collider_groups = collider.get_groups()
		if obj in collider_groups:
			possible.append(collider)
	if possible != []:
		return possible[-1]
	return null
	
	#var collided_object = handle_collision_ray(x, y, x, y, obj, notme)
	#return collided_object

#Always adds bg elements
func tile_add(background,left,top,width,height,x,y,depth): #return value of tile as well. left: left to right value in pixels. top: top to bottom in pixels
	var tile_set_name = str(background)
	var tile_id = bg_dict[tile_set_name]
	var layer_number = tile_id
	var coords = Vector2(0, -1)
	var size = Vector2(1, 1)
	y = y / 16
	x = x / 16
	
	if left != 0:
		coords.x = left / 16
		
	if top != 0:
		coords.y = top / 16 - 1
		
	if width != 16:
		size.x = width / 16
	
	if height != 16:
		size.y = height / 16
	
	var cur_scene = get_tree()
	var bg_elements: Node2D = cur_scene.get_first_node_in_group("bg_elements")
	var tile_map_layer: TileMapLayer = bg_elements.get_child(layer_number)
	
	if depth > 4095:
		depth = 4095
	
	tile_map_layer.z_index = -depth
	
	#coords.y -= 1
	for i in range(0, size.y):
		y = y + 1
		coords.y += 1
		for j in range(0, size.x):
			tile_map_layer.set_cell(Vector2i(x + j, y - 1), tile_id, Vector2i(coords.x + j, coords.y))

func tile_layer_find(depth, x, y):
	var bg_elements: Node2D = get_tree().get_first_node_in_group("bg_elements")
	var used_cells
	for child: TileMapLayer in bg_elements.get_children():
		if child.z_index == -depth:
			used_cells = child.get_used_cells()
	
	for cell in used_cells:
		var cell_pixel_position = cell * 16
		var rect1: Rect2 = Rect2(cell_pixel_position, Vector2(16, 16))
		var rect2: Rect2 = Rect2(Vector2(x, y), Vector2(1, 1))
		var intersects = rect1.intersects(rect2)
		if intersects == true:
			return [depth, cell]
	
	return null

func tile_delete(id): #--- id[0] is depth, id[1] is cell coords
	var bg_elements: Node2D = get_tree().get_first_node_in_group("bg_elements")
	for child: TileMapLayer in bg_elements.get_children():
		if child.z_index == -id[0]:
			child.erase_cell(id[1])

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
		
func instance_place(x,y,obj: String, comparison_object: GMObject): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	var sprite: AnimatedSprite2D = comparison_object.get_node("Sprites/MainAnimations")
	var offset = sprite.offset
	var collision_shape: CollisionShape2D = comparison_object.get_node("CollisionShape2D")
	var comparison_object_collision_shape_size = collision_shape.shape.get_rect().size
	var position_with_offset = Vector2(x + offset.x, y + offset.y)
	var size_with_scale: Vector2 = Vector2(position_with_offset.x + comparison_object_collision_shape_size.x, position_with_offset.y + comparison_object_collision_shape_size.y)

	return collision_rectangle(position_with_offset.x, position_with_offset.y, size_with_scale.x, size_with_scale.y, obj, 0, true, comparison_object)

func instance_position(x, y, obj: String): #---[FLAG] this needs checked
	var intersecting = collision_point(x, y, obj, 0, 0)
	if intersecting:
		var instance = instance_nearest(x, y, obj)
		return instance
	else:
		return null

func instance_destroy(obj: GMObject): #'Destroys current instance' ---  Should probably start passing 'self' or other node reference as an argument. Go through and check
	if obj.has_method("destroy"):
		obj.destroy()
	
	#var area_2d: Area2D = obj.get_node("Sprites/MainAnimations/Area2D") #---[FLAG] should do this for main object
	#area_2d.set_collision_layer_value(1, false)
	obj.hide()
	obj.queue_free()

func collision_rectangle(x1,y1,x2,y2,obj,_prec,notme: bool, calling_object: GMObject = null): #"This function tests whether there is a collision between the (filled) rectangle with the indicated opposite corners and entities of object obj. For example, you can use this to test whether an area is free of obstacles."
	var collided_object: GMObject
	if abs(x2 - x1) == 0 or abs(y2 - y1) == 0: #--- raycast is more appropriate in this case since it's just a line
		collided_object = handle_collision_ray(x1, y1, x2, y2, obj, notme) #--- also avoids error in handle_collision_shapecast() associated with size being negative
		if check_notme(notme, collided_object, calling_object):
				return null
		return collided_object

	collided_object = handle_collision_shapecast(x1, y1, x2, y2, obj)
	if check_notme(notme, collided_object, calling_object):
			return null
	return collided_object
	
func check_notme(notme, collided_object, calling_object):
	if notme:
		if collided_object == calling_object:
			return true
		else:
			return false

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

func collision_line(x1,y1,x2,y2,obj,_prec,notme,calling_object: GMObject = null):
	var collided_object = handle_collision_ray(x1, y1, x2, y2, obj, notme)
	if check_notme(notme, collided_object, calling_object):
		return null
	return collided_object
	
	#get_tree().call_group("gm_object", "force_update_transform")
	#var possible = []
	#var overlap_query = PhysicsRayQueryParameters2D.new()
	#overlap_query.collide_with_bodies = true
	#overlap_query.from = Vector2(x1 + 0.1, y1 + 0.1)
	#overlap_query.to = Vector2(x2 - 0.1, y2 - 0.1)
	#overlap_query.hit_from_inside = true
	#var finished: bool = false
	#while finished == false:
		#var overlap = get_tree().get_first_node_in_group("gm_object").get_world_2d().direct_space_state.intersect_ray(overlap_query)
		#if overlap == {}:
			#finished = true
			#break
		#var collider = overlap["collider"]
		#var rid = overlap["rid"]
		#var exclusions: Array = overlap_query.get_exclude().duplicate()
		#exclusions.append(rid)
		#overlap_query.set_exclude(exclusions)
		#var collider_groups = collider.get_groups()
		#if obj in collider_groups:
			#possible.append(collider)
			#
	#if possible != []:
		#if check_notme(notme, possible[-1], calling_object):
			#return null
		#else:
			#return possible[-1]
	#return null

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
	var font
	
	if draw_font == "main_font":
		font = load("res://fonts/main_font.png")
		y += 8 #--- offsetting y pos by half of the font pixel height to make it correct
	elif draw_font == "small_font":
		font = load("res://fonts/small_font.png")
		y += 4 #--- offsetting y pos by half of the font pixel height to make it correct

	#-- if draw_to_surface == true, offset text by adding view position
	#--- this is a bit of a shortcut compared to the original code but the outcome should be the same
	var text_info = [font, Vector2(x, y), string, draw_color, draw_to_surface]
	text_to_draw.append(text_info)
	


func draw_sprite(sprite: String, subimg: int, x, y, node, is_object_sprite: bool = false): #--- appears to typically be used for sprites with only 1 animation frame
	if subimg == -1: #--- incrementing sprite frame by one if -1 is passed in
		if sprite not in sprites_to_draw_current_frame:
			sprites_to_draw_current_frame[sprite] = subimg
		subimg = sprites_to_draw_current_frame[sprite] + 1
		sprites_to_draw_current_frame[sprite] = subimg
	
	var folder_path = Sprites.sprite_database[sprite]["folder_path"]
	var file_path = folder_path + "/" + sprite + "_" + str(subimg) + ".png"
	if !FileAccess.file_exists(file_path): #--- resetting sprite to frame 0 if it reaches its maximum
		subimg = 0
		sprites_to_draw_current_frame[sprite] = subimg
		file_path = folder_path + "/" + sprite + "_" + str(subimg) + ".png"
	var texture = load(file_path)
	var position = Vector2(x, y)
	if texture not in node.textures: #--- this keeps the textures loaded so that they appear properly when drawing
		node.textures.append(texture)
	var sprite_info = [texture, position, draw_to_surface]
	node.sprites_to_draw.append(sprite_info)


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

func random(x): #---[FLAG] may be a float?
	return randi_range(0, x)

func rand(x1, x2):
	return randi_range(x1, x2)

func gm_round(n):
	var return_val: int
	if abs(n - int(n)) == 0.5:
		if not fmod(roundi(float(n)), 2.0) == 0:
			if n > 0:
				return_val = roundi(n) - 1.0
			else:
				return_val = roundi(n) + 1.0
		else:
			return_val = roundi(n)
	else:
		return_val = roundi(n)
	return return_val


func surface_set_target():
	draw_to_surface = true


func surface_reset_target():
	draw_to_surface = false
	

#---------------------------------------
func get_all_instances(group: String): #Replacement for 'with' keyword
	var all_instances = get_tree().get_nodes_in_group(group)
	var all_instances_non_queued: Array = []
	for instance in all_instances:
		if !instance.is_queued_for_deletion():
			all_instances_non_queued.append(instance)
	return all_instances_non_queued


func view(view_value: String):

	if view_value == 'xview':
		return view_xview
		
	elif view_value == 'yview':
		return view_yview
		
	elif view_value == 'wview':
		return 320
		
	elif view_value == 'hview':
		return 240
	
	else:
		return 0

func room_get_name():
	var room = get_tree().get_first_node_in_group("base_room")
	var room_name = room.room_name
	return room_name


func room_goto(room_name: String):
	changed_scene = true
	get_tree().call_group("gm_object", "room_end")
	view2.set_camera_pos(Vector2(0, 0))
	get_tree().change_scene_to_file("res://rooms/" + room_name + "/" + room_name + ".tscn")


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
	return null

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

func handle_collision_ray(x1, y1, x2, y2, obj, notme):
	var collision_ray: RayCast2D = get_tree().get_first_node_in_group("collision_ray")
	collision_ray.clear_exceptions()
	
	var possible = []
	
	collision_ray.position = Vector2(x1 + 0.1, y1 + 0.1) #--- no idea why this works but it fixes collision issues
	collision_ray.target_position = Vector2(abs(x2 - (x1 - 0.1)), abs(y2 - (y1 - 0.1))) #--- raycast bordering on a pixel exactly seems to register it as colliding
	collision_ray.enabled = true
	collision_ray.force_raycast_update()
	while collision_ray.is_colliding():
		collision_ray.force_update_transform()
		var object_node = collision_ray.get_collider()
		var groups = object_node.get_groups()
		if obj in groups:
			possible.append(object_node)
		collision_ray.add_exception(object_node)
		collision_ray.force_raycast_update()
	collision_ray.enabled = false

	if possible != []:
		return possible[-1] #--- grabbing the last one found makes collision_shapecast function accurately, so assuming the same here
	return null

func handle_collision_shapecast(x1, y1, x2, y2, obj):
	var shapecast: ShapeCast2D = get_tree().get_first_node_in_group("collision_shapecast")
	shapecast.clear_exceptions()

	var possible = []
	
	var size = Vector2(abs(x2 - x1), abs(y2 - y1))
	var adjusted_size = Vector2(size.x - 0.1, size.y - 0.1) #--- corners touching counts as a collision, which isn't the case in the original engine. subtracting by 0.1 corrects for this
	shapecast.position = Vector2(x1 + (size.x / 2), y1 + (size.y / 2))
	shapecast.shape.size = adjusted_size
	shapecast.enabled = true
	shapecast.force_shapecast_update()
	while shapecast.is_colliding():
		var object_node = shapecast.get_collider(0)
		var groups = object_node.get_groups()
		if obj in groups:
			possible.append(object_node)
		shapecast.add_exception(object_node)
		shapecast.force_shapecast_update()
	shapecast.enabled = false
	
	if possible != []:
		return possible[-1] #--- seems like original engine scans from top to bottom while shapecast does bottom to top, so have to account for this
	return null

#--- debug
func highlight_node(node: GMObject):
	var animated_sprite2d = node.get_node("Sprites/MainAnimations")
	var color_rect: ColorRect = ColorRect.new()
	color_rect.name = "ColorRect"
	color_rect.size = node.object_size
	color_rect.color = Color.CRIMSON
	if node.get_node("Sprites/MainAnimations/ColorRect") == null:
		animated_sprite2d.add_child(color_rect)

func color_rect(x1, y1, x2, y2):
	var color_rect_holder = get_tree().get_first_node_in_group("color_rect_holder")
	var color_rect: ColorRect = ColorRect.new()
	color_rect.position = Vector2(x1, y1)
	color_rect.size = Vector2(x2, y2)
	color_rect.color = Color("26ffff72")
	color_rect_holder.add_child(color_rect)
