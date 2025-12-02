extends Node
class_name LoadObjects

var all_object_paths: PackedStringArray
var size: int
var object_counter: int = 0
var object_finished_loading: bool = true
var object_loading: String


func _init() -> void:
	all_object_paths = get_all_object_paths()
	size = all_object_paths.size()


func _process(delta: float) -> void:
	if object_counter == size:
		get_parent().remove_child(self)
		queue_free()
		return
	if object_finished_loading:
		object_loading = all_object_paths[object_counter]
		if !ResourceLoader.has_cached(object_loading):
			ResourceLoader.load_threaded_request(object_loading)
			object_finished_loading = false
		else:
			object_counter += 1
	else:
		if ResourceLoader.load_threaded_get_status(object_loading) == ResourceLoader.ThreadLoadStatus.THREAD_LOAD_LOADED:
			object_finished_loading = true
			object_counter += 1


func get_all_object_paths() -> PackedStringArray:
	var all_object_paths: PackedStringArray
	var objects_script = "res://resources/all_objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("res://.+tscn")
	var search = regex.search_all(content)
	for result in search:
		var path: String = result.strings[0]
		all_object_paths.append(path)
	return all_object_paths
