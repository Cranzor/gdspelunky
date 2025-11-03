extends Control

@onready var resume_game: Button = $VBoxContainer/MarginContainer2/VBoxContainer/ResumeGame
@onready var end_adventure: Button = $VBoxContainer/MarginContainer2/VBoxContainer/EndAdventure
@onready var exit_game: Button = $VBoxContainer/MarginContainer2/VBoxContainer/ExitGame
var room: StringName


func _ready() -> void:
	room = gml.room_get_name()
	if room == "title" or room == "highscores":
		end_adventure.hide()
	resume_game.connect("pressed", _resume_game_pressed)
	end_adventure.connect("pressed", _end_adventure_pressed)
	exit_game.connect("pressed", _exit_game_pressed)


func set_default_focus():
	resume_game.grab_focus()


func _resume_game_pressed():
	SignalBus.emit_signal("game_unpaused")


func _end_adventure_pressed():
	SignalBus.emit_signal("end_adventure")


func _exit_game_pressed():
	gml.game_end()
