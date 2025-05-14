extends Node

var room_generation = RoomGeneration.new()

@export var room_name: String

func _ready() -> void:
	gml.changed_scene = false
	#Screen.get_node("TitleScreen/Background").visible = true #--- putting this here to avoid objects being visible for one frame before background becomes visible

	room_generation.generate_room(room_name)
