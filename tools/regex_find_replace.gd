@tool
extends EditorScript

var all_gd_files: Array
var matches: int
var test_matches: int

func _run() -> void:
	convert_scripts()

func convert_scripts() -> void:
	# putting paths for all project files with the .gd file type into all_gd_files with a recursive search
	scan_dir_for_gd_files("res://objects")
	
	for file in all_gd_files:
		var new_text: String = get_new_file_text(file) # retrieving post-conversion file content
		write_new_text_to_file(file, new_text) # actually writing new file content to the file
	print("done")


func scan_dir_for_gd_files(path) -> Array:
	var file_name: String
	var files: Array = []
	var dir: DirAccess = DirAccess.open(path)
	if not dir:
		return []
	
	dir.list_dir_begin()
	file_name = dir.get_next()
	while file_name!="":
		if dir.current_is_dir():
			var new_path: String = path + "/" + file_name
			files += scan_dir_for_gd_files(new_path)
		else:
			if file_name.get_extension() == 'gd':
				var name: String = path + "/" + file_name
				if name not in all_gd_files:
					all_gd_files.append(name)
				files.push_back(name)
		file_name = dir.get_next()
	
	dir.list_dir_end()
	return files


func get_new_file_text(file) -> String:
	# open .gd file and get its text as a string
	var content: String = get_file_content(file)
	var updated_content: String = content
	

	# file content gets updated with three different RegEx operations
	#updated_content = regex_sub(updated_content, "(gml.collision_rectangle.*?,.*?,.*?,.*?,.*?,.*?,)(.*?0)(\\).*)") # turning 0 for notme to null
	updated_content = regex_sub(updated_content, "(gml.collision_rectangle.*?,.*?,.*?,.*?,.*?,.*?,)(.*?)(\\).*)")
	#updated_content = regex_sub(updated_content, "(gml.collision_rectangle.*?,.*?,.*?,.*?,.*?,.*?,)(.*?null)(\\).*)")
	return updated_content
	
	
# retrieves the content of a file as a string
func get_file_content(file) -> String:
	var opened_file: FileAccess = FileAccess.open(file, FileAccess.READ)
	var content: String = opened_file.get_as_text()
	return content


func write_new_text_to_file(file, new_text) -> void:
	var opened_file: FileAccess = FileAccess.open(file, FileAccess.WRITE)
	opened_file.store_string(new_text)


func regex_sub(file_content, pattern):
	var regex: RegEx = RegEx.new()
	regex.compile(pattern)
	#var new_file_content = regex.sub(file_content, "$1" + " false" + "$3", true)
	var new_file_content = regex.sub(file_content, "$1" + "$2" + ", self" + "$3", true)
	print(new_file_content)
	return new_file_content
