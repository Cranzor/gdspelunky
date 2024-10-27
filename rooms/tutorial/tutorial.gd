extends Node

var brick = preload("res://objects/blocks/brick/brick.tscn")
var room_generation = RoomGeneration.new()

var room_name = "tutorial"

func _ready() -> void:
	room_generation.generate_room(room_name)
