extends Node2D

var frame_counter = 0
var paused: bool = false

func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()


func gm_loop(): #---[FLAG] consider running every event in the same order as step
	if !paused:
		get_tree().call_group("draw_sprite", "hide_draw_object")
		get_tree().call_group("draw_text", "hide_labels")
		get_tree().call_group("alarm", "count_down")
		get_tree().call_group("alarm_object", "run_alarm_events")
		if gml.changed_scene == false:
			#get_tree().call_group("screen", "begin_step") #--- screen is the only object with this event
			gml.in_step_event = true
			autoloads_step_event()
			all_objects_step_event()
			gml.in_step_event = false
		get_tree().call_group("gm_object", "force_update_transform")
		get_tree().call_group("collision_with_object", "run_collision_with")
		#get_tree().call_group("active_gm_object", "run_draw_event")
		get_tree().call_group("animation_end_object", "run_animation_end")
		get_tree().call_group("gm_object", "run_speed_position_update")
		get_tree().call_group("view", "update_camera_pos")
		get_tree().call_group("screen", "begin_step") #--- moving this here as all code in the script is relating to drawing.
													  #---not doing so can cause issues like global.message passed into draw_text being outdated (since it's updated in run_collision_with)
		get_tree().call_group("draw_object", "run_draw_event") #--- putting draw event after updating camera position fixes text jitter issues

func all_objects_step_event():
	#var all_objects = get_tree().get_first_node_in_group("objects_holder").get_children()
	#all_objects.reverse()
	#for object in all_objects:
		#if object.has_method("step"):
			#print(object.object_name)
		#if object.has_method("step") and gml.changed_scene == false and object.is_in_group("gm_object"):
			#object.step()
	#
	#for object in gml.new_objects_to_run_step: #--- running step for objects that were created during the step event of other objects
		#if object.has_method("step") and gml.changed_scene == false:
			#object.step()
	#
	#gml.new_objects_to_run_step.clear()
	#print("---")
	var step_objects = get_tree().get_nodes_in_group("step_object")
	step_objects.reverse()
	for object in step_objects:
		#print(object.object_name)
		if gml.changed_scene == false:
			object.step()
	#print("--- end step")


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
