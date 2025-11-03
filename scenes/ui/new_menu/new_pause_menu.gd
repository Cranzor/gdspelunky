extends Control

@onready var resume_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ResumeGame
@onready var end_adventure: Button = $PauseScreen/MarginContainer2/VBoxContainer/EndAdventure
@onready var exit_game: Button = $PauseScreen/MarginContainer2/VBoxContainer/ExitGame
@onready var background: ColorRect = $Background
@onready var pause_screen: VBoxContainer = $PauseScreen
@onready var settings: VBoxContainer = $Settings
var room: StringName


func _ready() -> void:
	room = gml.room_get_name()
	if room == "title" or room == "highscores":
		end_adventure.hide()
	exit_game.connect("pressed", _exit_game_pressed)


func set_default_focus():
	resume_game.grab_focus()
	resume_game._focus_entered()


func _exit_game_pressed():
	gml.game_end()


func set_initial_pause_visibility() -> void:
	self.show()
	background.show()
	pause_screen.show()
	settings.hide()
