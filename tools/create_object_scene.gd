@tool
extends EditorScript

var object_string = "vine"
var all_remaining_objects = []
var all_finished_objects = []
var all_object_paths = []

func _run():
	get_all_uncompleted_objects()
	#get_all_completed_objects()
	#print(all_remaining_objects)
	
	#make_folder_with_scene(object_string)
	#for object in all_finished_objects:
		#var script_path = get_script_from_object_name(object)
		#var new_content = get_post_function_deletion_script(script_path)
		#write_new_content_to_file(script_path, new_content)
	
	#print(all_remaining_objects)
	
	#get_all_object_paths()
	#print(all_object_paths)
	
	for object in all_remaining_objects:
		##make_folder_with_scene(object)
		edit_script(object)
		
	#print("done")
	pass

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
		
		var converted_name = get_pascal_case_object_name(object_name)
		var output = []
		OS.execute("python", ["C:/Users/Jesse/Desktop/H&C2/programming/Spelunky Godot Porting Scripts/ObjectToGDScriptConverter2.py", converted_name], output)
		var script_content = output[0]
		
		var script_name = path + object_name + ".gd"
		var gd_file = FileAccess.open(script_name, FileAccess.WRITE)
		gd_file.store_string(script_content)
		
		var node2d = Node2D.new()
		node2d.name = object_name.to_pascal_case()
		var scene: PackedScene = PackedScene.new()
		var gd_script = GDScript.new()
		scene.set_script(gd_script)
		#scene.set_script(ResourceLoader.load(script_name, "", 0))
		var result = scene.pack(node2d)
		if result == OK:
			#scene.set_script(ResourceLoader.load(script_name, "", 0))
			ResourceSaver.save(scene, full_path)
		
		#var opened_scene_file = FileAccess.open(full_path, FileAccess.READ)
		#var scene_file_content = opened_scene_file.get_as_text()
		#
		#opened_scene_file = FileAccess.open(full_path, FileAccess.WRITE)
		#opened_scene_file.store_string(scene_file_content + '\n' + 'object_name = "' + object_string +'"')
		
		print("Created scene at " + full_path)

func edit_script(object_name):
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("var " + object_name + " = \\'.+")
	var search = regex.search(content)
	search = search.strings
	
	regex.compile('(res:.*)' + object_name + '\\.tscn')
	search = regex.search(search[0])
	var full_path = search.strings[0]
	var path = search.strings[1]

	var converted_name = get_pascal_case_object_name(object_name)
	var output = []
	OS.execute("python", ["C:/Users/Jesse/Desktop/H&C2/programming/Spelunky Godot Porting Scripts/ObjectToGDScriptConverter2.py", converted_name], output)
	var script_content = output[0]
	script_content.strip_edges(true, false)
		
	var script_name = path + object_name + ".gd"
	var gd_file = FileAccess.open(script_name, FileAccess.WRITE)
	gd_file.seek(0)
	gd_file.store_string(script_content)	
	
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

func get_all_object_paths():
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("res://.+tscn")
	var search = regex.search_all(content)
	for result in search:
		all_object_paths.append(result.strings[0])

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

func get_pascal_case_object_name(object_name):
	var converted_name = object_name.to_pascal_case()
	converted_name = "o" + converted_name + ".xml"
	return converted_name
