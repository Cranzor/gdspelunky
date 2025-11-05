extends Label

@export var action_name: StringName
@export_enum("Controller", "Keyboard") var input_type: int
var num_of_keyboard_actions: int
var num_of_controller_actions: int
enum {JOYPAD_BUTTON, JOYPAD_AXIS, KEYBOARD}
@onready var game_settings: GameSettings = load("res://settings/game_settings.gd").new()


func set_input(event: InputEvent):
	var event_type: int = get_event_type(event)
	clear_existing_input(event_type)
	print(InputMap.action_get_events(action_name))
	if input_type == 0 and (event_type == JOYPAD_BUTTON or event_type == JOYPAD_AXIS):
		InputMap.action_add_event(action_name, event)
	elif input_type == 1 and event_type == KEYBOARD:
		InputMap.action_add_event(action_name, event)


func clear_existing_input(event_type):
	var events: Array[InputEvent] = InputMap.action_get_events(action_name)
	for event in events:
		if event.as_text().begins_with("Joypad"):
			if event_type == JOYPAD_BUTTON or event_type == JOYPAD_AXIS: InputMap.action_erase_event(action_name, event)
		else:
			if event_type == KEYBOARD: InputMap.action_erase_event(action_name, event)
			

func get_event_type(event: InputEvent) -> int:
	if event is InputEventJoypadButton:
		var index: int = event.button_index
		update_game_settings(index, JOYPAD_BUTTON)
		return JOYPAD_BUTTON
	elif event is InputEventJoypadMotion:
		var index: int = event.axis
		update_game_settings(index, JOYPAD_AXIS)
		return JOYPAD_AXIS
	else:
		var index: int = event.key_label
		update_game_settings(index, KEYBOARD)
		return KEYBOARD


func update_game_settings(index: int, event_type: int) -> void:
	if event_type == JOYPAD_BUTTON:
		var game_setting_name: StringName = "controller_" + action_name 
		game_settings.set(game_setting_name, [index, JOYPAD_BUTTON])
		print(game_settings.controller_attack)
	elif event_type == JOYPAD_AXIS:
		var game_setting_name: StringName = "controller_" + action_name
		game_settings.set(game_setting_name, [index, JOYPAD_AXIS])
	else:
		var game_setting_name: StringName = "keyboard_" + action_name
		game_settings.set(game_setting_name, index)
