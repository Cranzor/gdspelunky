extends CanvasLayer

var paused: bool = false


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("debug"):
		paused = !paused
		get_tree().paused = paused
	
		if paused:
			$Menu.show()
			%Mines.grab_focus()
		else:
			$Menu.hide()


func _on_mines_pressed() -> void:
	load_level(1, "level")


func _on_lush_pressed() -> void:
	load_level(5, "level")


func _on_ice_caves_pressed() -> void:
	load_level(9, "level2")


func _on_temple_pressed() -> void:
	load_level(13, "level")


func _on_olmec_pressed() -> void:
	load_level(16, "olmec")


func load_level(level_num: int, name: String):
	get_tree().paused = false
	global.curr_level = level_num
	global.game_start = true
	gml.room_goto(name)
