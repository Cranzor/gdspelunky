extends Node

var room_generation = RoomGeneration.new()

var room_name = "title"

func _ready() -> void:
	room_generation.generate_room(room_name)
