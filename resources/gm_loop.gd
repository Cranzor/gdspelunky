extends Node

var frame_counter = 0

func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()


func gm_loop(): #---[FLAG] consider running every event in the same order as step
	get_tree().call_group("alarm", "count_down")
	get_tree().call_group("gm_object", "run_alarm_events")
	if gml.changed_scene == false:
		autoloads_step_event()
		all_objects_step_event()
	#---
	if Input.is_action_just_pressed("debug"):
		var player1 = gml.get_instance("player1")
		gml.instance_create(player1.position.x + 32, player1.position.y, Objects.skeleton)
	#---
	get_tree().call_group("gm_object", "force_update_transform")
	get_tree().call_group("gm_object", "run_collision_with")
	get_tree().call_group("gm_object", "run_draw_event")
	get_tree().call_group("gm_object", "run_animation_end")
	get_tree().call_group("gm_object", "run_speed_position_update")
	get_tree().call_group("view", "update_camera_pos")


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
