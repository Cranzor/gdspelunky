extends Node

var room_generation = RoomGeneration.new()

@export var room_name: String

func _ready() -> void:
	gml.changed_scene = false
	room_generation.generate_room(room_name)
