extends Label

@export var action_name: StringName
@export_enum("Controller", "Keyboard") var input_type: int
var num_of_keyboard_actions: int
var num_of_controller_actions: int
enum {JOYPAD_BUTTON, JOYPAD_AXIS, KEYBOARD}
@onready var game_settings: GameSettings = load("res://settings/game_settings.gd").new()
var controller_setting_name: StringName
var keyboard_setting_name: StringName
var controller_button_index_and_type: PackedInt32Array
var current_text: String


func _ready() -> void:
	SignalBus.connect("button_remapped", _change_button_if_current_one_is_remapped)
	controller_setting_name = "controller_" + action_name
	keyboard_setting_name = "controller_" + action_name
	controller_button_index_and_type = game_settings.get(controller_setting_name)
	current_text = ButtonNames.get_button_name(controller_button_index_and_type)
	text = current_text
	

#--- calling_from_input is to avoid recursion when switching buttons with another input
#--- for example, if attack is X and jump is A, setting attack to A will set jump to X
#--- don't want the jump script to also emit a signal, since we are done once it's remapped
func set_input(event: InputEvent, calling_from_input: bool = true): #TODO: need to check if button is valid
	var event_type: int = get_event_type(event)

	if input_type == 0 and (event_type == JOYPAD_BUTTON or event_type == JOYPAD_AXIS):
		var new_button_index_and_type: PackedInt32Array = get_button_and_index_from_event(event)
		var new_text: String = ButtonNames.get_button_name(new_button_index_and_type)
		if new_text:
			clear_existing_input(event_type)
			update_game_settings_controller(new_button_index_and_type)
			InputMap.action_add_event(action_name, event)
			if calling_from_input:
				SignalBus.emit_signal("button_remapped", new_button_index_and_type, controller_button_index_and_type)
			controller_button_index_and_type = new_button_index_and_type
			text = new_text
			print(str(action_name + " REMAPPED TO " + str(ButtonNames.get_button_name(new_button_index_and_type))))
		else:
			text = current_text
	elif input_type == 1 and event_type == KEYBOARD:
		InputMap.action_add_event(action_name, event)
	else:
		text = current_text


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
		return JOYPAD_BUTTON
	elif event is InputEventJoypadMotion:
		var index: int = event.axis
		return JOYPAD_AXIS
	else:
		var index: int = event.key_label
		return KEYBOARD


func update_game_settings_controller(button_index_and_type: PackedInt32Array) -> void:
	game_settings.set(controller_setting_name, button_index_and_type)

func update_game_settings_keyboard() -> void:
	#TODO: implement
	#game_settings.set(keyboard_setting_name, index)
	pass


func get_button_and_index_from_event(event: InputEvent):
	if event is InputEventJoypadButton:
		return PackedInt32Array([event.button_index, JOYPAD_BUTTON])
	elif event is InputEventJoypadMotion:
		return PackedInt32Array([event.axis, JOYPAD_AXIS])


func get_event_from_button_and_index(controller_button_index_and_type: PackedInt32Array):
	var button: int = controller_button_index_and_type[0]
	var type: int = controller_button_index_and_type[1]
	var event: InputEvent
	
	if type == 0:
		event = InputEventJoypadButton.new()
		event.button_index = button
	else:
		event = InputEventJoypadMotion.new()
		event.axis = button
	return event


func _change_button_if_current_one_is_remapped(remapped_controller_button_index_and_type, prior_controller_button_index_and_type):
	if remapped_controller_button_index_and_type == controller_button_index_and_type:
		var new_event: InputEvent = get_event_from_button_and_index(prior_controller_button_index_and_type)
		set_input(new_event, false)
