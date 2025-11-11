#--- sets up the game window and loads save/settings
extends Node
@onready var window: Window = get_window()
const base_resolution: Vector2 = Vector2(320, 240)
static var pixel_scale_factor: int = 5


func _ready() -> void:
	initalize_window()
	SavingLoading.load_settings()


func initalize_window() -> void:
	window.transparent = false
	window.borderless = false
	
	if ProjectSettings.get_setting("display/window/size/mode") == 3:
		pass
	else:
		window.size = base_resolution * pixel_scale_factor
		var screen_size = DisplayServer.screen_get_size()
		window.position = (screen_size - window.size) / 2
