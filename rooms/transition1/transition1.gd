extends Node

var room_generation = RoomGeneration.new()

var room_name = "transition1"

func _ready() -> void:
	Screen.get_node("TitleScreen/Background").visible = true #--- putting this here to avoid objects being visible for one frame before background becomes visible
	room_generation.generate_room(room_name)
