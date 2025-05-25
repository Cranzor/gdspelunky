extends Node2D

var frame_counter = 0

func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()


func gm_loop(): #---[FLAG] consider running every event in the same order as step
	reset_surfaces()
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
	if gml.changed_scene == false:
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


func reset_surfaces():
	gml.surfaces_to_draw["screen"] = false
	gml.surfaces_to_draw["p_surf"] = false
	gml.surfaces_to_draw["dark_surf"] = false
