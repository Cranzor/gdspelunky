extends Node
class_name ButtonNames

const joy_button_names: Dictionary[int, Array] = {
	JOY_BUTTON_A : ["A"],
	JOY_BUTTON_B : ["B"],
	JOY_BUTTON_X : ["X"],
	JOY_BUTTON_Y : ["Y"],
	JOY_BUTTON_BACK : ["SELECT"],
	JOY_BUTTON_START : ["START"],
	JOY_BUTTON_LEFT_STICK : ["L3"],
	JOY_BUTTON_RIGHT_STICK : ["R3"],
	JOY_BUTTON_LEFT_SHOULDER : ["LB"],
	JOY_BUTTON_RIGHT_SHOULDER : ["RB"],
	JOY_BUTTON_DPAD_UP : ["D-PAD UP"],
	JOY_BUTTON_DPAD_DOWN : ["D-PAD DOWN"],
	JOY_BUTTON_DPAD_LEFT : ["D-PAD LEFT"],
	JOY_BUTTON_DPAD_RIGHT : ["D-PAD RIGHT"],
}

const joy_axis_names: Dictionary[int, Array] = {
	JOY_AXIS_TRIGGER_LEFT : ["L2"],
	JOY_AXIS_TRIGGER_RIGHT : ["R2"]
}


static func get_button_name(button_index_and_type: PackedInt32Array) -> StringName:
	var index: int = button_index_and_type[0]
	var type: int = button_index_and_type[1]
	if type == 0:
		return joy_button_names[index][0]
	else:
		return joy_axis_names[index][0]
