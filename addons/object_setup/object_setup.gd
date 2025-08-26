@tool
extends EditorPlugin

var plugin

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	plugin = preload("res://addons/object_setup/setup_button.gd").new()
	add_inspector_plugin(plugin)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_inspector_plugin(plugin)
