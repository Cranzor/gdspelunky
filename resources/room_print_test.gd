@tool
extends EditorScript

var room_generation = RoomGeneration.new()
var gml_class = GML_Class.new()
var collision_grid = CollisionGrid.new()
var alarm = Alarm.new()

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	#print(collision_grid.find_grid_position(Vector2(192, 160), Vector2(16, 16)))
	#alarm.start(10)
	#dir_contents("res://")
	var classes = ProjectSettings.get_global_class_list()
	scan_dir("res://")
	
	var classes_with_file_path: Dictionary = {}
	
	for class_instance in classes:
		classes_with_file_path[class_instance['class']] = class_instance['path']
	
	print(classes_with_file_path)

	for file in all_gd_files:
		comment_out_class_name(file)

var all_gd_files: Array = []
func scan_dir(path):
	var file_name
	var files = []
	var dir = DirAccess.open(path)
	if not dir:
		print("Can't open "+path+"!")
		return
	
	dir.list_dir_begin()
	file_name = dir.get_next()
	while file_name!="":
		if dir.current_is_dir():
			var new_path = path+"/"+file_name
			#print("Found directory "+new_path+".")
			files += scan_dir(new_path)
		else:
			if file_name.get_extension() == 'gd':
				var name = path+"/"+file_name
				#print(name)
				if name not in all_gd_files:
					all_gd_files.append(name)
				files.push_back(name)
		file_name = dir.get_next()
	
	dir.list_dir_end()
	return files

func comment_out_class_name(file):
	var class_name_regex = RegEx.new()
	class_name_regex.compile("(?m)^class_name +.*")
	
	var opened_file = FileAccess.open(file, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var result = class_name_regex.search(content)
	if result:
		print(result.get_string())

#---
func dir_contents(path):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_dir():
				print("Found directory: " + file_name)
			else:
				if file_name.get_extension() == 'gd':
					print("Found file: " + file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
	
	if dir:
		var directories = dir.get_directories()
		for new_dir in directories:
			var deeper
	
	var classes = ProjectSettings.get_global_class_list()
	for entry in classes:
		print(entry["class"])
