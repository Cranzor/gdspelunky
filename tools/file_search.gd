@tool
extends Node


func get_files(path: String, ext: Variant = null) -> Array[String]: #--- code from here: https://gist.github.com/hiulit/772b8784436898fd7f942750ad99e33e
	var dir_access = DirAccess.open(path)
	var files: Array[String] = []

	for file_name in dir_access.get_files():
		if ext == null || file_name.get_extension() == str(ext):
			files.append(path.path_join(file_name))
	for dir in dir_access.get_directories():
		files.append_array(get_files(path.path_join(dir), ext))
	return files


func get_directories(path: String) -> PackedStringArray:
	var dirs: PackedStringArray
	var dir_access = DirAccess.open(path)
	for dir in dir_access.get_directories():
		dirs.append(path.path_join(dir))
		dirs.append_array(get_directories(path.path_join(dir))) #--- doesn't seem to make sense but also doesn't work anymore when I change it
	return dirs
