@tool
extends Node

@export_tool_button("Generate Sprites For All Objects", "Callable") var run_action = generate_all_sprites

func generate_all_sprites():
	var file_search = preload("res://tools/file_search.gd").new()
	var all_objects: Array[String] = file_search.get_files("res://objects/", "tscn")
	for object in all_objects:
		var sprite = preload("res://scenes/sprite.tscn").instantiate()
		var loaded_object = load(object).instantiate()
		sprite.generate_sprites(loaded_object.object_name)
		loaded_object.add_child(sprite)
		sprite.owner = loaded_object
		
