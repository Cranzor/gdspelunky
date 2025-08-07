extends CanvasLayer

var paused: bool = false
var dark: bool = false
var shop: bool = false


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
	if dark:
		global.debug_dark_level = true
	if shop:
		global.debug_shop = true
	get_tree().paused = false
	global.curr_level = level_num
	global.game_start = true
	gml.room_goto(name)


func _on_health_pressed() -> void:
	global.plife = 99


func _on_ropes_pressed() -> void:
	global.rope = 99


func _on_bombs_pressed() -> void:
	global.bombs = 99


func _on_item_name_text_submitted(new_text: String) -> void:
	var item_name: String = new_text.to_lower()
	var objects = Objects.new()
	var item = objects.get(item_name)
	var player1 = gml.get_instance("player1")
	gml.instance_create(player1.position.x + 16, player1.position.y - 16, item)
	await get_tree().create_timer(0.2).timeout
	$Menu.hide()
	paused = !paused
	get_tree().paused = false
	delete_line_edit_text($Menu/HBoxContainer/Max/ItemName)


func _on_item_name_text_changed(new_text: String) -> void:
	var item_name: LineEdit = $Menu/HBoxContainer/Max/ItemName
	capitalize_text(item_name, new_text)


func capitalize_text(line_edit: LineEdit, new_text: String) -> void:
	var caret_col = line_edit.caret_column
	line_edit.text = new_text.to_upper()
	line_edit.caret_column = caret_col

func delete_line_edit_text(line_edit: LineEdit):
	line_edit.text = ""

func _on_object_text_changed(new_text: String) -> void:
	var object: LineEdit = $Menu/HBoxContainer/Info/Object
	capitalize_text(object, new_text)


func _on_object_text_submitted(new_text: String) -> void:
	var all_objects: Array = gml.get_all_instances(new_text.to_lower())
	if all_objects != []:
		for object in all_objects:
			var display_info: Node2D = load("res://debug/display_info.tscn").instantiate()
			object.add_child(display_info)
	delete_line_edit_text($Menu/HBoxContainer/Info/Object)


func _on_check_box_toggled(toggled_on: bool) -> void:
	dark = toggled_on


func _on_shop_check_box_toggled(toggled_on: bool) -> void:
	shop = toggled_on


func _on_lake_pressed() -> void:
	global.lake = true
	load_level(5, "level3")
