#--- sets up the game window and loads save/settings
extends Node
@onready var window: Window = get_window()
const base_resolution: Vector2 = Vector2(320, 240)
static var pixel_scale_factor: int = 5


func _ready() -> void:
	SavingLoading.load_game()
	SavingLoading.load_settings()


func initalize_window() -> void: #--- gets called upon window scale being set when settings are loaded
	window.transparent = false
	window.borderless = false
	window.size = base_resolution * pixel_scale_factor
	var screen_size = DisplayServer.screen_get_size()
	window.position = (screen_size - window.size) / 2
