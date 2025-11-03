extends Control

@onready var resume_game: Button = $VBoxContainer/MarginContainer2/VBoxContainer/ResumeGame


func _ready() -> void:
	resume_game.connect("pressed", _resume_game_pressed)

func set_default_focus():
	resume_game.grab_focus()

func _resume_game_pressed():
	SignalBus.emit_signal("game_unpaused")
