@tool
extends Node

@export_tool_button("Generate Sprites For All Objects", "Callable") var run_action = objects_setup


func objects_setup():
	var file_search = preload("res://tools/file_search.gd").new()
	var all_objects: Array[String] = file_search.get_files("res://objects/", "tscn")
	for object in all_objects:
		var sprite = preload("res://scenes/sprite.tscn").instantiate()
		var loaded_object = ResourceLoader.load(object, "", 0).instantiate()
		generate_all_sprites(loaded_object, sprite)
		generate_containing_box(loaded_object)
		groups_setup(loaded_object)
		var scene = PackedScene.new()
		var result = scene.pack(loaded_object)
		if result == OK:
			ResourceSaver.save(scene, object)
	print("finished")

func object_setup(scene_file_path: String):
	var sprite = preload("res://scenes/sprite.tscn").instantiate()
	var loaded_object = ResourceLoader.load(scene_file_path, "", 0).instantiate()
	generate_all_sprites(loaded_object, sprite)
	generate_containing_box(loaded_object)
	groups_setup(loaded_object)
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
	var default_sprite_info = sprite.sprite_info[sprite.default_animation]
	var collision_size: Vector2 = default_sprite_info.containing_box.size
	var collision_position: Vector2 = collision_size / 2 + default_sprite_info.containing_box.position
	collision_position -= default_sprite_info.origin
	var collision_shape = CollisionShape2D.new()
	var rectangle_shape = RectangleShape2D.new()
	collision_shape.shape = rectangle_shape
	collision_shape.name = "CollisionShape2D"
	collision_shape.shape.size = collision_size
	collision_shape.position = collision_position
	loaded_object.add_child(collision_shape)
	collision_shape.owner = loaded_object


func groups_setup(loaded_object: GMObject): #--- TODO: add "alarms" group
	var method_groups: Array[StringName] = ["draw", "animation_end", "step"]
	var object_database: ObjectDatabase = ObjectDatabase.new()
	var groups = object_database.object_database[loaded_object.object_name]["groups"]
	loaded_object.add_to_group("gm_object", true)
	for group in groups:
		loaded_object.add_to_group(group, true)
	for group in method_groups:
		if loaded_object.has_method(group):
			loaded_object.add_to_group(group + "_object", true)
	if loaded_object.object_name == "gamepad":
		loaded_object.remove_from_group("step_object")


#--- TODO: z-index setup
#--- TODO: alarms setup
#--- TODO: collision_with setup
#--- TODO: bounding box setup

func reset_object(scene_file_path: String):
	var loaded_object: GMObject = ResourceLoader.load(scene_file_path, "", 0).instantiate()
	remove_node(loaded_object, "Sprite")
	remove_node(loaded_object, "CollisionShape2D")
	loaded_object.animated_sprite_node = null
	for group in loaded_object.get_groups():
		loaded_object.remove_from_group(group)
	var scene = PackedScene.new()
	var result = scene.pack(loaded_object)
	if result == OK:
		ResourceSaver.save(scene, scene_file_path)

func remove_node(object: GMObject, node_path: NodePath):
	if object.has_node(node_path):
		var child = object.get_node(node_path)
		object.remove_child(child)
