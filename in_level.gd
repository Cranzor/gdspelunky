extends Node

func get_kiss_value():
	pass

func is_in_shop(x, y):
	pass

func is_level():
	pass

func is_real_level():
	pass

func is_room(name):
	var current_room = str(get_tree().current_scene.name)
	if name == current_room:
		return true
	else:
		return false

func scr_shake():
	pass

func scr_shopkeeper_anger():
	pass
