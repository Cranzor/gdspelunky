extends Camera2D

func _ready() -> void:
	set_camera_limits()

func set_camera_limits() -> void:
	var rooms = Rooms.new()
	var room_extents = rooms.rooms_extents
	var current_room = gml.room_get_name()
	var camera_extents = room_extents[current_room]
	limit_left = 0
	limit_top = 0
	limit_right = camera_extents.x
	limit_bottom = camera_extents.y
