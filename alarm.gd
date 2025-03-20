class_name Alarm
extends Node

var frames_to_count_down = -1
var started = false
signal timeout
var ready_to_emit


func _physics_process(_delta):
	if frames_to_count_down == 0:
		frames_to_count_down = -1 #---[FLAG] check this later to make sure it's right
		ready_to_emit = true
	
	if frames_to_count_down != -1:
		frames_to_count_down -= 1


func start(frames):
	frames_to_count_down = frames# - 1
	started = true


func is_stopped():
	if frames_to_count_down == -1:
		return true
	else:
		return false
