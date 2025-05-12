extends Node

var frame_counter = 0

func _physics_process(delta: float) -> void:
	frame_counter += 1
	#print(frame_counter)
	gm_loop()

func gm_loop():
	get_tree().call_group("alarm", "count_down")
	get_tree().call_group("gm_object", "run_alarm_events")
	get_tree().call_group("gm_object", "step")
	get_tree().call_group("gm_object", "force_update_transform")
	get_tree().call_group("gm_object", "run_collision_with")
	get_tree().call_group("gm_object", "run_draw_event")
	get_tree().call_group("gm_object", "run_animation_end")
	get_tree().call_group("gm_object", "run_speed_position_update")
	get_tree().call_group("view", "update_camera_pos")
