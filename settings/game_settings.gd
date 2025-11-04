extends Node
class_name GameSettings

#--- graphics
static var smooth_motion: bool = true
static var screen_shake: bool = true
static var high_detail: bool = true
static var resolution
static var vsync: bool = false
static var fullscreen: bool = false:
	set(value):
		fullscreen = value
		if value == true:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			ProjectSettings.set_setting("display/window/size/mode", DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			ProjectSettings.set_setting("display/window/size/mode", DisplayServer.WINDOW_MODE_WINDOWED)
		ProjectSettings.save()

static var frame_rate: int = 0:
	set(value):
		frame_rate = value
		Engine.max_fps = value
		ProjectSettings.set_setting("application/run/max_fps", value)
		ProjectSettings.save()
			

#--- audio
static var music_volume
static var sound_effects_volume

#--- gameplay
static var auto_run: bool = false
static var rumble: bool = true

#--- HUD/UI
static var display_fps: bool = false
static var new_pause_menu: bool = true
