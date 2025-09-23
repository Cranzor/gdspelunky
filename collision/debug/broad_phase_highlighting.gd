extends Node


func highlight_color(object: GMObject, color: Color):
	object.modulate = color


func reset_color(object: GMObject):
	highlight_color(object, Color(1, 1, 1, 1))
