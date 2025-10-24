extends Node

var room_generation = RoomGeneration.new()

@export var room_name: String

func _ready() -> void:
	global.current_room = room_name
	gml.changed_scene = false
	var custom_collision = preload("res://collision/custom_collision.gd").new()
	custom_collision.cell_to_objects.clear() #--- clearing out collision before generating new room
	Music.clear_all_sounds()
	room_generation.generate_room(room_name)
	$LoadObjects.start()


func _on_timer_timeout() -> void:
	var loader = preload("res://tools/load_all_objects.gd").new()
	loader.load_all_objects()
