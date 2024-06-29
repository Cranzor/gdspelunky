extends Node2D

var frames_to_count_down = -1
signal timeout

func _physics_process(delta):
	if frames_to_count_down != -1:
		frames_to_count_down -= 1
	
	if frames_to_count_down == 0:
		emit_signal("timeout")

func start(frames):
	if is_stopped():
		frames_to_count_down = frames

func is_stopped():
	if frames_to_count_down == -1:
		return true
	else:
		return false
