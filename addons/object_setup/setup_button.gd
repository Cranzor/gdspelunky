extends EditorInspectorPlugin

func _can_handle(object: Object) -> bool:
	if object is GMObject:
		return true
	return false

func _parse_begin(object: Object) -> void:
	var button = Button.new()
	button.text = "Set Up Object"
	button.pressed.connect(object_setup)
	
	var button2 = Button.new()
	button2.text = "Reset Object"
	button2.pressed.connect(object_reset)
	
	var hbox_container = HBoxContainer.new()
	hbox_container.add_child(button)
	hbox_container.add_child(button2)
	var center_container = CenterContainer.new()
	center_container.add_child(hbox_container)
	
	add_custom_control(center_container)

func object_setup():
	var selection = EditorInterface.get_selection()
	var selected_object = selection.get_selected_nodes()[0]
	var object_name = selected_object.object_name
	var setup = load("res://tools/all_objects_sprite_setup.gd").new()
	setup.object_setup(selected_object.scene_file_path)
	EditorInterface.reload_scene_from_path(selected_object.scene_file_path)
	print_rich("[color=green]Finished setting up [b]" + object_name + "[/b]")

func object_reset():
	var selection = EditorInterface.get_selection()
	var selected_object = selection.get_selected_nodes()[0]
	var object_name = selected_object.object_name
	var setup = load("res://tools/all_objects_sprite_setup.gd").new()
	setup.reset_object(selected_object.scene_file_path)
	EditorInterface.reload_scene_from_path(selected_object.scene_file_path)
	print_rich("[color=yellow][b]" + object_name + "[/b] has been reset")
