extends Node2D

@onready var x_pos: Label = $VBoxContainer/XPos
@onready var y_pos: Label = $VBoxContainer/YPos
var object: GMObject


func _ready() -> void:
	object = get_parent()
	update_label_text()
	global_position.x = object.global_position.x
	global_position.y = object.global_position.y - 16


func _physics_process(delta: float) -> void:
	update_label_text()


func update_label_text() -> void:
	x_pos.text = "X:" + str(object.position.x)
	y_pos.text = "Y:" + str(object.position.y)
