class_name Alarm
extends Node2D

var frames_to_count_down = -1
var started = false
var countdown_frames
signal timeout

func _physics_process(delta):
	if frames_to_count_down != -1:
		frames_to_count_down -= 1
	
	if frames_to_count_down == 0:
		emit_signal("timeout")
	
	#if started == true:
		#if frames_to_count_down == -1:
			#frames_to_count_down = countdown_frames

func start(frames):
	if is_stopped():
		frames_to_count_down = frames
		countdown_frames = frames
		started = true

func is_stopped():
	if frames_to_count_down == -1:
		return true
	else:
		return false
