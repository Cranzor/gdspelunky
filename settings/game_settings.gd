extends Node
class_name GameSettings

#--- graphics
static var smooth_motion: bool = true
static var high_detail: bool = true
static var resolution
static var vsync: bool = false:
	set(value):
		vsync = value
		if value == true:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
			ProjectSettings.set_setting("display/window/vsync/vsync_mode", DisplayServer.VSYNC_ENABLED)
		else:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
			ProjectSettings.set_setting("display/window/vsync/vsync_mode", DisplayServer.VSYNC_DISABLED)
		
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
static var auto_run: bool = false:
	set(value):
		auto_run = value
		print(value)
static var rumble: int = 1:
	set(value):
		rumble = value
		print(value)
static var screen_shake: int = 2:
	set(value):
		screen_shake = value
		print(value)

#--- HUD/UI
static var display_fps: bool = false
static var new_pause_menu: bool = true
