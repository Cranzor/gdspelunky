extends Control

@onready var resume_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ResumeGame
@onready var end_adventure: Button = $PauseScreen/MarginContainer2/VBoxContainer/EndAdventure
@onready var exit_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ExitGame
@onready var background: ColorRect = $Background
@onready var pause_screen: VBoxContainer = $PauseScreen
@onready var settings: VBoxContainer = $Settings
@onready var graphics_audio: VBoxContainer = $GraphicsAudio
@onready var gameplay: VBoxContainer = $Gameplay
@onready var controls: VBoxContainer = $Controls
var current_menu_screen: VBoxContainer

var room: StringName


func _ready() -> void:
	SignalBus.connect("menu_screen_change_requested", _handle_menu_screen_change)
	room = gml.room_get_name()
	if room == "title" or room == "highscores":
		end_adventure.hide()
	exit_game.connect("pressed", _exit_game_pressed)


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_back"):
		if current_menu_screen.previous_menu_screen:
			_handle_menu_screen_change(current_menu_screen, current_menu_screen.previous_menu_screen, false)
		else:
			SignalBus.emit_signal("game_unpaused")


func set_default_focus():
	resume_game.grab_focus()


func _exit_game_pressed():
	gml.game_end()


func set_initial_pause_visibility() -> void:
	self.show()
	background.show()
	pause_screen.show()
	settings.hide()
	graphics_audio.hide()
	gameplay.hide()
	controls.hide()


func _handle_menu_screen_change(requesting_screen, next_screen, set_prev_screen: bool = true) -> void:
	next_screen.display_menu_screen()
	requesting_screen.hide()
	current_menu_screen = next_screen
	if set_prev_screen:
		next_screen.previous_menu_screen = requesting_screen
