extends Node

var room_generation = RoomGeneration.new()

@export var room_name: String

func _ready() -> void:
	global.current_room = room_name
	gml.changed_scene = false
	Music.clear_all_sounds()
	room_generation.generate_room(room_name)
