extends Node2D

var frame_counter = 0

func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()


func gm_loop(): #---[FLAG] consider running every event in the same order as step
	reset_surfaces()
	get_tree().call_group("draw_sprite", "hide_draw_object")
	get_tree().call_group("alarm", "count_down")
	get_tree().call_group("active_gm_object", "run_alarm_events")
	if gml.changed_scene == false:
		#get_tree().call_group("screen", "begin_step") #--- screen is the only object with this event
		gml.in_step_event = true
		autoloads_step_event()
		all_objects_step_event()
		gml.in_step_event = false
	get_tree().call_group("active_gm_object", "force_update_transform")
	get_tree().call_group("active_gm_object", "run_collision_with")
	#get_tree().call_group("active_gm_object", "run_draw_event")
	get_tree().call_group("active_gm_object", "run_animation_end")
	get_tree().call_group("active_gm_object", "run_speed_position_update")
	get_tree().call_group("view", "update_camera_pos")
	get_tree().call_group("screen", "begin_step") #--- moving this here as all code in the script is relating to drawing.
												  #---not doing so can cause issues like global.message passed into draw_text being outdated (since it's updated in run_collision_with)
	get_tree().call_group("active_gm_object", "run_draw_event") #--- putting draw event after updating camera position fixes text jitter issues
	queue_redraws()

	if Input.is_action_just_pressed("debug"):
		var player1 = gml.get_instance("player1")
		gml.instance_create(player1.position.x, player1.position.y, Objects.bow)
		gml.instance_create(player1.position.x + 16, player1.position.y, Objects.jetpack)
		global.rope = 99

func all_objects_step_event():
	var all_objects = get_tree().get_first_node_in_group("objects_holder").get_children()
	all_objects.reverse()
	for object in all_objects:
		if object.has_method("step") and gml.changed_scene == false and object.is_in_group("active_gm_object"):
			object.step()
	
	for object in gml.new_objects_to_run_step: #--- running step for objects that were created during the step event of other objects
		if object.has_method("step") and gml.changed_scene == false:
			object.step()
	
	gml.new_objects_to_run_step.clear()


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


func queue_redraws():
	if gml.changed_scene == false:
		get_tree().call_group("active_gm_object", "queue_redraw")
	Screen.dark_surf.queue_redraw()
	Screen.circles.queue_redraw()
	queue_redraw()
