extends Node
class_name Loader

var thread: Thread


func load_all_objects():
	thread = Thread.new()
	thread.start(load_objects_threaded)


func load_objects_threaded():
	var all_object_paths = get_all_object_paths()
	for object in all_object_paths:
		ResourceLoader.load_threaded_request(object)


func _exit_tree():
	thread.wait_to_finish()


func get_all_object_paths():
	var all_object_paths: Array
	var objects_script = "res://resources/all_objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("res://.+tscn")
	var search = regex.search_all(content)
	for result in search:
		all_object_paths.append(result.strings[0])
	return all_object_paths
