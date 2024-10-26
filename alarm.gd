class_name Alarm
extends Node

var frames_to_count_down = -1
var started = false
signal timeout

func _physics_process(_delta):
	if frames_to_count_down != -1:
		frames_to_count_down -= 1
	
	if frames_to_count_down == 0:
		emit_signal("timeout")

func start(frames):
	if is_stopped():
		frames_to_count_down = frames - 1
		started = true

func is_stopped():
	if frames_to_count_down == -1:
		return true
	else:
		return false
