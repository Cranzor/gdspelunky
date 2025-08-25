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
		generate_bounding_box(loaded_object)
		var scene = PackedScene.new()
		var result = scene.pack(loaded_object)
		if result == OK:
			ResourceSaver.save(scene, object)
			print("saved")


func generate_all_sprites(loaded_object: GMObject, sprite: AnimatedSprite2D):
	loaded_object.add_child(sprite)
	sprite.generate_sprites()
	sprite.owner = loaded_object
	
	if "animated_sprite_node" in loaded_object:
		loaded_object.animated_sprite_node = sprite
	else:
		print(loaded_object.object_name + " doesn't have it")
	

func generate_bounding_box(loaded_object: GMObject):
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
