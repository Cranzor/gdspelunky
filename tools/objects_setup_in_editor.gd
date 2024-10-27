@tool
extends EditorScript

#var object_database = ObjectDatabase.new()
#var gm_object = GMObject.new()

func _run() -> void:
	var node = get_editor_interface().get_selection().get_selected_nodes()[0]
	#print(node)
	print(node.get_groups())
	
	#var object_database = object_database.object_database
	#var object_entry = object_database[node.object_name]
	
	node.add_to_group("test", true)
	#gm_object.groups_setup(object_entry)
	#var scene = PackedScene.new()
	#var result = scene.pack(node)
	#if result == OK:
		#ResourceSaver.save(scene, "res://objects/enemies/snake/snake.tscn")
	print(node.get_groups())
	print("done")
