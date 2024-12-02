## This input system works by polling inputs during the process function and keeping them set to true until the next tick (physics frame) can check the input.
## Inputs are only set to false upon being checked as true. This way we can ensure that they stay false if not pressed again during process.

extends Node

var all_inputs = {}

var keyboard_in_use = true

const XBOX_BUTTON_INDEX_WITH_BUTTON_NAME: Dictionary = {
	0 : "A",
	1 : "B",
	2 : "X",
	3 : "Y",
	4 : "SELECT",
	5 : "HOME",
	6 : "START",
	7 : "L3",
	8 : "R3",
	9 : "LB",
	10 : "RB",
	11 : "UP",
	12 : "DOWN",
	13 : "LEFT",
	14 : "RIGHT",
}

var actions_with_keyboard_keys = {
	"attack" : "",
	"bomb" : "",
	"flare" : "",
	"item" : "",
	"jump" : "",
	"pay" : "",
	"rope" : "",
	"run" : "",
	"start" : "",
	"left" : "",
	"right" : "",
	"up" : "",
}

func _process(delta: float) -> void:
	if Input.is_action_pressed("start") == true:
		all_inputs["start"] = true
	
	if Input.is_action_pressed("left") == true:
		all_inputs["left"] = true

	if Input.is_action_pressed("right") == true:
		all_inputs["right"] = true

	if Input.is_action_pressed("up") == true:
		all_inputs["up"] = true

	if Input.is_action_pressed("down") == true:
		all_inputs["down"] = true

	if Input.is_action_pressed("jump") == true:
		all_inputs["jump"] = true

	if Input.is_action_pressed("attack") == true:
		all_inputs["attack"] = true

	if Input.is_action_pressed("item") == true:
		all_inputs["item"] = true

	if Input.is_action_pressed("run") == true:
		all_inputs["run"] = true

	if Input.is_action_pressed("bomb") == true:
		all_inputs["bomb"] = true

	if Input.is_action_pressed("rope") == true:
		all_inputs["rope"] = true

	if Input.is_action_pressed("flare") == true:
		all_inputs["flare"] = true

	if Input.is_action_pressed("pay") == true:
		all_inputs["pay"] = true
		
	if Input.is_key_pressed(KEY_ENTER):
		all_inputs["enter"] = true
	
	if Input.is_key_pressed(KEY_ESCAPE):
		all_inputs["escape"] = true


func check_input(input):
	if all_inputs.has(input):
		if all_inputs[input] == true:
			all_inputs[input] = false
			return true

	return false

# switches between keyboard and gamepad modes globally
func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		keyboard_in_use = true
	elif event is InputEventJoypadButton:
		keyboard_in_use = false

func get_keyboard_key_from_action(action):
	if actions_with_keyboard_keys[action] == "":
		var events = str(InputMap.action_get_events(action))
		var regex = RegEx.new()
		regex.compile("InputEventKey: keycode=\\d+ \\((.+)\\)")
		var result = regex.search(events)
		var key = result.get_string(1)
		actions_with_keyboard_keys[action] = key
		return key.to_upper()
	else:
		return actions_with_keyboard_keys[action]

func get_gamepad_button_from_action(action):
	var events = str(InputMap.action_get_events(action))
	var regex = RegEx.new()
	regex.compile("InputEventJoypadButton: button_index=(\\d+)")
	var result = regex.search(events)
	var index = int(result.get_string(1))
	var button = XBOX_BUTTON_INDEX_WITH_BUTTON_NAME[index]
	return button
