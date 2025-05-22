extends Node2D

var frame_counter = 0


func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()


func _draw() -> void:
	if gml.changed_scene == false:
		draw_text_to_screen()


func gm_loop(): #---[FLAG] consider running every event in the same order as step
	get_tree().call_group("alarm", "count_down")
	get_tree().call_group("gm_object", "run_alarm_events")
	if gml.changed_scene == false:
		get_tree().call_group("screen", "begin_step") #--- screen is the only object with this event
		autoloads_step_event()
		all_objects_step_event()
	get_tree().call_group("gm_object", "force_update_transform")
	get_tree().call_group("gm_object", "run_collision_with")
	#get_tree().call_group("gm_object", "run_draw_event")
	get_tree().call_group("gm_object", "run_animation_end")
	get_tree().call_group("gm_object", "run_speed_position_update")
	get_tree().call_group("view", "update_camera_pos")
	get_tree().call_group("gm_object", "run_draw_event") #--- putting draw event after updating camera position fixes text jitter issues
	get_tree().call_group("gm_object", "queue_redraw")
	queue_redraw()


func all_objects_step_event():
	var all_objects = get_tree().get_first_node_in_group("objects_holder").get_children()
	all_objects.reverse()
	for object in all_objects:
		if object.has_method("step") and gml.changed_scene == false:
			object.step()


func autoloads_step_event():
	if gml.changed_scene == false:
		get_tree().call_group("gamepad", "step")
		get_tree().call_group("globals", "step")
		get_tree().call_group("screen", "step")
		get_tree().call_group("music", "step")


func draw_text_to_screen():
	for text in gml.text_to_draw:
		var font = text[0]
		var pos = text[1]
		var string = text[2]
		var color = text[3]
		var draw_to_surface = text[4]
		if draw_to_surface:
			pos += Vector2(gml.view_xview, gml.view_yview)
		
		draw_string(font, pos, string, 0, -1, 16, color)
		
	gml.text_to_draw = []
