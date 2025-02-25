extends Camera2D

func _ready() -> void:
	set_camera_limits()

func _process(delta: float) -> void:
	#print(get_screen_center_position())
	#position.x = clamp(position.x, limit_left, limit_right)
	#position.y = clamp(position.y, limit_top, 80)#limit_bottom / 2)
	
	#var offset_limit = limit_bottom - 240
	#offset.y = clamp(offset.y, 0, offset_limit)
	
	var normal_view = get_screen_center_position().y - offset.y
	var past_limit = false
	var total = normal_view + offset.y + 120
	var overshoot

	if total > limit_bottom:
		past_limit = true
		var diff = total - limit_bottom
		offset.y -= diff
	
	if offset.y < 0:
		offset.y = 0
	
	#if offset.y > 0:
		#drag_bottom_margin = (48 + offset.y) / 240


func _physics_process(delta: float) -> void:
		var bottom_view = get_screen_center_position().y + 120
		var player1 = gml.get_instance("player1")
		var bottom_diff = bottom_view - player1.position.y
		
		if bottom_diff > 144: #--- reason for 144 is bottom of the screen is 240, and vborder is 96. 240 - 96 = 144.
			offset.y -= bottom_diff - 144 #diff being at 144 means player y position is at the top of the border, resulting in one pixel down + one pixel up cancelling out

func set_camera_limits() -> void:
	var rooms = Rooms.new()
	var room_extents = rooms.rooms_extents
	var current_room = gml.room_get_name()
	var camera_extents = room_extents[current_room]
	limit_left = 0
	limit_top = 0
	limit_right = camera_extents.x
	limit_bottom = camera_extents.y
	
	drag_top_margin = 0.2
	drag_bottom_margin = 0.2

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("debug"):
		#var normal_view = get_screen_center_position().y - offset.y		
		#print("----")
		#print("screen center: " + str(normal_view))
		#print("offset: " + str(offset.y))
		#print("total: " + str(normal_view + offset.y + 120))
		#print("limit bottom: " + str(limit_bottom))
		#if normal_view + offset.y + 120 > limit_bottom:
			#print("yes")
		#else:
			#print("no")
		
		#var bottom_view = get_screen_center_position().y + 120
		#var player1 = gml.get_instance("player1")
		#var diff = bottom_view - player1.position.y
		#print(diff)
		print(offset.y)
		print(drag_bottom_margin)
		
	
	if Input.is_action_pressed("debug2"):
		offset.y += 1
	
