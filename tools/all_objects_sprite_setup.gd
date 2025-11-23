@tool
extends Node

@export_tool_button("Set Up All Objects", "Callable") var run_action = objects_setup
@export_tool_button("Reset All Objects", "Callable") var run_action2 = reset_objects
var object_database = ObjectDatabase.new()


func objects_setup():
	var file_search = preload("res://tools/file_search.gd").new()
	var all_objects: Array[String] = file_search.get_files("res://objects/", "tscn")
	for object in all_objects:
		object_setup(object)
	print_rich("[color=green]Set up all objects[/color]")


func reset_objects():
	var file_search = preload("res://tools/file_search.gd").new()
	var all_objects: Array[String] = file_search.get_files("res://objects/", "tscn")
	for object in all_objects:
		reset_object(object)
	print_rich("[color=yellow]Reset all objects[/color]")


func object_setup(scene_file_path: String):
	reset_object(scene_file_path)
	var sprite = preload("res://scenes/sprite.tscn").instantiate()
	var loaded_object = ResourceLoader.load(scene_file_path, "", 0).instantiate()
	generate_all_sprites(loaded_object, sprite)
	generate_containing_box(loaded_object)
	#--groups_setup(loaded_object)
	z_index_setup(loaded_object)
	#alarms_setup(loaded_object)
	#--collision_with_setup(loaded_object)
	set_visibility(loaded_object)
	smooth_motion_setup(loaded_object)
	var scene = PackedScene.new()
	var result = scene.pack(loaded_object)
	if result == OK:
		ResourceSaver.save(scene, scene_file_path)	


func generate_all_sprites(loaded_object: GMObject, sprite: AnimatedSprite2D):
	loaded_object.add_child(sprite)
	sprite.generate_sprites()
	sprite.owner = loaded_object
	
	if "animated_sprite_node" in loaded_object:
		loaded_object.animated_sprite_node = sprite
	else:
		print(loaded_object.object_name + " doesn't have it")
	

func generate_containing_box(loaded_object: GMObject):
	var sprite = loaded_object.animated_sprite_node
	var collision_size: Vector2
	var collision_position: Vector2
	
	if sprite.default_animation:
		var default_sprite_info = sprite.sprite_info[sprite.default_animation]
		collision_size = default_sprite_info.containing_box.size
		collision_position = collision_size / 2 + default_sprite_info.containing_box.position
		collision_position -= default_sprite_info.origin

	var collision_shape = CollisionShape2D.new()
	var rectangle_shape = RectangleShape2D.new()
	collision_shape.shape = rectangle_shape
	collision_shape.name = "CollisionShape2D"
	collision_shape.shape.size = collision_size
	collision_shape.position = collision_position
	loaded_object.add_child(collision_shape)
	collision_shape.owner = loaded_object
	generate_bounding_box(loaded_object, collision_position, collision_size)


func generate_bounding_box(loaded_object: GMObject, passed_position: Vector2, passed_size: Vector2): #---TODO: have to set up signal connections on GMObject
	var area: Area2D = Area2D.new()
	area.name = "BoundingBoxArea"
	area.set_collision_layer_value(2, true)
	area.set_collision_layer_value(1, false)
	area.set_collision_mask_value(2, true)
	area.set_collision_mask_value(1, false)
	
	var collision_shape: CollisionShape2D = CollisionShape2D.new()
	var rectangle_shape: RectangleShape2D = RectangleShape2D.new()
	collision_shape.position = passed_position
	rectangle_shape.size = passed_size * 2
	collision_shape.set_shape(rectangle_shape)
	collision_shape.debug_color = Color(0.69, 0.296, 0.987, 0.1)
	collision_shape.name = "BoundingBoxCollision"
	
	loaded_object.add_child(area)
	area.owner = loaded_object
	area.add_child(collision_shape)
	collision_shape.owner = loaded_object


func groups_setup(loaded_object: GMObject): #--- TODO: add "alarms" group
	var method_groups: Array[StringName] = ["draw", "animation_end", "step"]
	var groups = object_database.object_database[loaded_object.object_name]["groups"]
	loaded_object.add_to_group("gm_object", true)
	for group in groups:
		loaded_object.add_to_group(group, true)
	for group in method_groups:
		if loaded_object.has_method(group):
			loaded_object.add_to_group(group + "_object", true)
	if loaded_object.object_name == "gamepad":
		loaded_object.remove_from_group("step_object")


func z_index_setup(loaded_object: GMObject):
	var depth = object_database.object_database[loaded_object.object_name]["depth"]
	loaded_object.z_index = clampi(-depth, RenderingServer.CANVAS_ITEM_Z_MIN + 1, RenderingServer.CANVAS_ITEM_Z_MAX) #--- adding 1 to minimum to ensure background elements are always behind
	if loaded_object.object_name == "screen": #--- default values are 0. putting these higher to ensure that they draw above everything else
		loaded_object.z_index = 2
	elif loaded_object.object_name == "game":
		loaded_object.z_index = 1


func alarms_setup(loaded_object: GMObject): #---TODO: do this last. change alarms from nodes to resources
	var events: Array = object_database.object_database[loaded_object.object_name]["events"]
	var alarms: Array = ['alarm_0', 'alarm_1', 'alarm_2', 'alarm_3', 'alarm_4', 'alarm_5', 'alarm_6', 'alarm_7', 'alarm_8', 'alarm_9', 'alarm_10', 'alarm_11']
	
	for event: String in events:
		if event in alarms:
			#if !loaded_object.is_in_group("alarm_object"):
				#loaded_object.add_to_group("alarm_object")
			var new_alarm: Node = load("res://scenes/alarm.tscn").instantiate()
			print(new_alarm)
			new_alarm.add_to_group("alarm")
			loaded_object.alarms[event] = new_alarm
			new_alarm.owner = loaded_object


func collision_with_setup(loaded_object: GMObject):
	var events: Array = object_database.object_database[loaded_object.object_name]["events"]
	
	for event: String in events:
		var string_beginning = "collision_with_"
		if event.begins_with(string_beginning):
			loaded_object.collision_with2.append(event)
			

func set_visibility(loaded_object: GMObject):
	var visibility = object_database.object_database[loaded_object.object_name]["visible"]
	if visibility == false:
		loaded_object.hide()


func smooth_motion_setup(loaded_object: GMObject):
	var static_object = object_database.object_database[loaded_object.object_name]["static"]

	if not static_object:
		var smooth_motion = ResourceLoader.load("res://components/smooth_motion.tscn", "", 0).instantiate()
		smooth_motion.name = "SmoothMotion"
		loaded_object.add_child(smooth_motion)
		smooth_motion.owner = loaded_object


func reset_object(scene_file_path: String):
	var loaded_object: GMObject = ResourceLoader.load(scene_file_path, "", 0).instantiate()
	remove_node(loaded_object, "Sprite")
	remove_node(loaded_object, "CollisionShape2D")
	remove_node(loaded_object, "BoundingBoxArea")
	remove_node(loaded_object, "SmoothMotion")
	loaded_object.animated_sprite_node = null
	for group in loaded_object.get_groups():
		loaded_object.remove_from_group(group)
	loaded_object.z_index = 0
	loaded_object.alarms = {}
	loaded_object.collision_with2.clear()
	var scene = PackedScene.new()
	var result = scene.pack(loaded_object)
	if result == OK:
		ResourceSaver.save(scene, scene_file_path)


func remove_node(object: GMObject, node_path: NodePath):
	if object.has_node(node_path):
		var child = object.get_node(node_path)
		object.remove_child(child)
