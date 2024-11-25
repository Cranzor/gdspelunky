## This input system works by polling inputs during the process function and keeping them set to true until the next tick (physics frame) can check the input.
## Inputs are only set to false upon being checked as true. This way we can ensure that they stay false if not pressed again during process.

extends Node

var all_inputs = {}

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
