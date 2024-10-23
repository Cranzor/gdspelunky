@tool
extends EditorScript

var object_string = "lamp"
var all_remaining_objects = []
var all_finished_objects = []

func _run():
	#get_all_uncompleted_objects()
	get_all_completed_objects()
	#print(all_finished_objects)
	
	#make_folder_with_scene(object_string)
	for object in all_finished_objects:
		var script_path = get_script_from_object_name(object)
		var new_content = get_post_function_deletion_script(script_path)
		#write_new_content_to_file(script_path, new_content)

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
		
func get_all_uncompleted_objects():
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("#var (.+) =")
	var search = regex.search_all(content)
	for result in search:
		all_remaining_objects.append(result.strings[1])

func get_all_completed_objects():
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("(?m)^var (.+) =")
	var search = regex.search_all(content)
	for result in search:
		all_finished_objects.append(result.strings[1])

func get_script_from_object_name(object_name):
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("var " + object_name + " = preload\\(.+")
	var search = regex.search(content)
	search = search.strings
	
	regex.compile('(res:.*)' + object_name + '\\.tscn')
	search = regex.search(search[0])
	var path = search.strings[1]
	var script_path = path + object_name + ".gd"
	return script_path

func get_post_function_deletion_script(file):
	var opened_file = FileAccess.open(file, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("func _ready\\(\\):
	object_setup\\(\\)")
	content = regex.sub(content, "")
	
	regex.compile('func _physics_process\\(delta\\):
	object_tick\\(\\)')
	content = regex.sub(content, "")
	
	regex.compile('func _process\\(delta\\):
	object_process\\(delta\\)')
	content = regex.sub(content, "")
	
	regex.compile('#--- Object functions')
	content = regex.sub(content, "")
	
	regex.compile('(extends .+)(\\s+)(func )')
	content = regex.sub(content, "$1\n\n\n$3")
	
	regex.compile('(extends .+)(\\s+)(var )')
	content = regex.sub(content, "$1\n\n$3")
	
	return content

func write_new_content_to_file(file, new_content):
	var opened_file = FileAccess.open(file, FileAccess.WRITE)
	opened_file.store_string(new_content)
