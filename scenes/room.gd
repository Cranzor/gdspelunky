extends Node

var room_generation = RoomGeneration.new()

@export var room_name: String

func _ready() -> void:
	set_seed()
	global.current_room = room_name
	gml.changed_scene = false
	var custom_collision = preload("res://collision/custom_collision.gd").new()
	custom_collision.cell_to_objects.clear() #--- clearing out collision before generating new room
	Music.reset_on_room_changed()
	room_generation.generate_room(room_name)


func set_seed() -> void:
	pass
