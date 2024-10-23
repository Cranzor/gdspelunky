@tool
extends EditorScript

var object_string = "lamp"
var all_remaining_objects = []

func _run():
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("#var (.+) =")
	var search = regex.search_all(content)
	for result in search:
		all_remaining_objects.append(result.strings[1])
	
	make_folder_with_scene(object_string)
	

func make_folder_with_scene(object_name):
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("var " + object_name + " = preload\\(.+")
	var search = regex.search(content)
	search = search.strings
	
	regex.compile('(res:.*)' + object_name + '\\.tscn')
	search = regex.search(search[0])
	var full_path = search.strings[0]
	var path = search.strings[1]
	#var scene_name = path + ".tscn"
	
	if !DirAccess.dir_exists_absolute(path):
		DirAccess.make_dir_recursive_absolute(path)
	
		var node2d = Node2D.new()
		node2d.name = object_name.to_pascal_case()
		var scene: PackedScene = PackedScene.new()
		var result = scene.pack(node2d)
		if result == OK:
			ResourceSaver.save(scene, full_path)
		
		print("Created scene at " + full_path)
	
