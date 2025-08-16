class_name Alarm
extends Node

var frames_to_count_down = -1
var started = false
signal timeout
var ready_to_emit
@onready var parent = get_parent()


func count_down() -> void:
	if frames_to_count_down != -1:
		frames_to_count_down -= 1
	
	if frames_to_count_down == 0:
		ready_to_emit = true


func start(frames: int) -> void:
	frames_to_count_down = frames
	started = true


func is_stopped() -> bool:
	if frames_to_count_down == -1:
		return true
	else:
		return false
