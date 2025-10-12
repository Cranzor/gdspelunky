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
		if View.smooth_motion: View.smooth_scroll_camera_vertically = false
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
		if not View.smooth_motion: get_tree().call_group("view", "update_camera_pos")
		get_tree().call_group("screen", "begin_step") #--- moving this here as all code in the script is relating to drawing.
													  #---not doing so can cause issues like global.message passed into draw_text being outdated (since it's updated in run_collision_with)
		get_tree().call_group("draw_object", "run_draw_event") #--- putting draw event after updating camera position fixes text jitter issues
		#update_collision()


func all_objects_step_event():
	var step_objects = get_tree().get_nodes_in_group("step_object")
	#step_objects.reverse()
	for object in step_objects:
		if gml.changed_scene == false:
			object.step()
			object.custom_collision.update_object_collision(object)

	#--- have to check if objects were added during the step events of other objects, and then run step events for those objects
	var step_objects_count: int = step_objects.size()
	var updated_step_objects: Array = get_tree().get_nodes_in_group("step_object")
	var updated_step_objects_count: int = updated_step_objects.size()
	if step_objects_count != updated_step_objects_count:
		var diff: int = updated_step_objects_count - step_objects_count
		for i: int in diff:
			var object: GMObject = updated_step_objects[updated_step_objects_count - diff]
			object.step()
			object.custom_collision.update_object_collision(object)


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


func update_collision() -> void:
	var objects = get_tree().get_nodes_in_group("gm_object")
	for object: GMObject in objects:
		object.custom_collision.update_object_collision(object)
