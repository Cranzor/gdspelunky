extends Node

var room_name = "title"
var tutorial = preload("res://rooms/tutorial/tutorial.tscn")

func _ready() -> void:
	Screen.get_node("TitleScreen/Background").visible = true #--- putting this here to avoid objects being visible for one frame before background becomes visible
