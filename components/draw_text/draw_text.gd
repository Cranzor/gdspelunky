extends Node

const main_font: String = "res://fonts/main_font.png"
const small_font: String = "res://fonts/small_font.png"

@export var drawn_text: PackedScene
var string_counter = 0
var strings: Dictionary[String, int]


func draw_text(x, y, text: StringName, unique_identifier: StringName = ""):
	var label: Label
	
	if unique_identifier and unique_identifier not in strings:
		label = set_up_label(label, unique_identifier)
		add_child(label)
	elif unique_identifier and unique_identifier in strings:
		var child_number = strings[unique_identifier]
		label = get_child(child_number)	
	elif text not in strings:
		label = set_up_label(label, text)
		add_child(label)
	else:
		var child_number = strings[text]
		label = get_child(child_number)
	
	label.text = text
	label.global_position = Vector2(x, y)
	label.set_modulate(gml.draw_color)
	label.show()


func set_up_label(label, text):
	strings[text] = string_counter
	label = drawn_text.instantiate()
	if gml.draw_font == "small_font":
		label.theme_type_variation=&"LabelSmall"
	string_counter += 1
	return label
