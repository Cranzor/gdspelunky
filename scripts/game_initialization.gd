#--- sets up the game window and loads save/settings
extends Node
@onready var window: Window = get_window()
const base_resolution: Vector2i = Vector2i(320, 240)
static var pixel_scale_factor: int = 5


func _ready() -> void:
	SavingLoading.load_game()
	SavingLoading.load_settings()
	load_all_objects()


func initalize_window() -> void: #--- gets called upon window scale being set when settings are loaded
	window.transparent = false
	window.borderless = false
	window.size = base_resolution * pixel_scale_factor
	var screen_size = DisplayServer.screen_get_size()
	window.position = (screen_size - window.size) / 2
	
	#--- turn off integer scaling if monitor size does not cleanly divide by base resolution
	if screen_size.x % base_resolution.x == 0 and screen_size.y % base_resolution.y == 0: window.content_scale_stretch = Window.CONTENT_SCALE_STRETCH_INTEGER
	else: window.content_scale_stretch = Window.CONTENT_SCALE_STRETCH_FRACTIONAL


func load_all_objects() -> void:
	var load_objects: LoadObjects = LoadObjects.new()
	add_child(load_objects)
