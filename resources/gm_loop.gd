extends Node

func _physics_process(delta: float) -> void:
	gm_loop()

func gm_loop():
	get_tree().call_group("gm_object", "run_alarm_events")
	get_tree().call_group("gm_object", "step")
	get_tree().call_group("gm_object", "force_update_transform")
	get_tree().call_group("gm_object", "run_collision_with2")
	get_tree().call_group("gm_object", "run_draw_event")
	get_tree().call_group("gm_object", "run_animation_end")
	get_tree().call_group("gm_object", "run_speed_position_update")
