extends Control

@export var focus_to_grab: NodePath
var previous_menu_screen: VBoxContainer

func display_menu_screen() -> void:
	show()
	if focus_to_grab: get_node(focus_to_grab).grab_focus()
