extends Control

@onready var resume_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ResumeGame
@onready var end_adventure: Button = $PauseScreen/MarginContainer2/VBoxContainer/EndAdventure
@onready var exit_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ExitGame
@onready var background: ColorRect = $Background
@onready var pause_screen: VBoxContainer = $PauseScreen
@onready var settings: VBoxContainer = $Settings
@onready var graphics: VBoxContainer = $Graphics
@onready var audio: VBoxContainer = $Audio
@onready var gameplay: VBoxContainer = $Gameplay
@onready var controller_config: VBoxContainer = $ControllerConfig
@onready var keyboard_config: VBoxContainer = $KeyboardConfig
@onready var viewport: Viewport = get_viewport()
@onready var arrow_left: TextureRect = %ArrowLeft
@onready var arrow_right: TextureRect = %ArrowRight
@onready var money: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer/Money
@onready var kills: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer/Kills
@onready var saves: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer/Saves
@onready var level: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer2/Level
@onready var depth: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer2/Depth
@onready var time: Label = $PauseScreen/MarginContainer/HBoxContainer/VBoxContainer2/Time
var current_menu_screen: VBoxContainer

var room: StringName


func _ready() -> void:
	SignalBus.connect("menu_screen_change_requested", _handle_menu_screen_change)
	room = gml.room_get_name()
	end_adventure.hide()
	exit_game.connect("pressed", _exit_game_pressed)


func _input(event: InputEvent) -> void:
	if visible:
		if Input.is_action_just_pressed("ui_back"):
			if current_menu_screen.previous_menu_screen:
				_handle_menu_screen_change(current_menu_screen, current_menu_screen.previous_menu_screen, false)
			else:
				SignalBus.emit_signal("game_unpaused")
				viewport.set_input_as_handled()


func set_default_focus():
	resume_game.grab_focus()


func _exit_game_pressed():
	gml.game_end()


func set_initial_pause_visibility() -> void:
	self.show()
	background.show()
	pause_screen.show()
	settings.hide()
	graphics.hide()
	audio.hide()
	gameplay.hide()
	controller_config.hide()
	keyboard_config.hide()


func _handle_menu_screen_change(requesting_screen, next_screen, set_prev_screen: bool = true) -> void:
	next_screen.display_menu_screen()
	requesting_screen.hide()
	current_menu_screen = next_screen
	if set_prev_screen:
		next_screen.previous_menu_screen = requesting_screen
	
	arrow_left.hide()
	arrow_right.hide()


func update_game_status_text() -> void:
	if InLevel.is_level(): end_adventure.show() #--- only shows "end adventure" option when in a level
	var status_lines: Array[Label] = [money, kills, saves, level, depth, time]
	
	var player1 = gml.get_instance("player1")
	
	var py: float = player1.position.y
	
	if (InLevel.is_level()):
		var n = 128-24
		if (global.curr_level < 1): level.text = "TUTORIAL CAVE"
		elif (InLevel.is_room("load_level")): level.text = global.custom_level_name + " BY " + global.custom_level_author
		else: level.text = "LEVEL " + str(global.curr_level)
		depth.text = str(174.8*(global.curr_level-1)+(py+8)*0.34) + " FEET"
		money.text = "$" + str(global.money)
		kills.text = "KILLS: " + str(global.kills)
		var s = global.xtime
		s = floor(s / 1000)
		var m = 0
		while (s > 59):
		
			s -= 60
			m += 1
		
		var str
		if (s < 10): str = "0" + str(s)
		else: str = str(s)
		var s2 = global.time
		s2 = floor(s2 / 1000)
		var m2 = 0
		while (s2 > 59):
		
			s2 -= 60
			m2 += 1
		
		var str2
		if (s2 < 10): str2 = "0" + str(s2)
		else: str2 = str(s2)
		time.text = str(m) + ":" + str + " / " + str(m2) + ":" + str2
		saves.text = "SAVES: " + str(global.damsels)
	else:
		for line in status_lines: line.text = ""
