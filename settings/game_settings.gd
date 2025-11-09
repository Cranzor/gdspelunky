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

#--- controls
#--- for controller, first value is button, second is input type. 0 = JoyButton, 1 = JoyAxis
static var controller_attack: PackedInt32Array = [JOY_BUTTON_X, 0]
static var controller_run: PackedInt32Array = [JOY_AXIS_TRIGGER_RIGHT, 1]
static var controller_jump: PackedInt32Array = [JOY_BUTTON_A, 0]
static var controller_bomb: PackedInt32Array = [JOY_BUTTON_B, 0]
static var controller_rope: PackedInt32Array = [JOY_BUTTON_Y, 0]
static var controller_pay: PackedInt32Array = [JOY_BUTTON_RIGHT_SHOULDER, 0]
static var controller_item: PackedInt32Array = [JOY_BUTTON_LEFT_SHOULDER, 0]
static var controller_enter_door: PackedInt32Array = [JOY_BUTTON_RIGHT_SHOULDER, 0]
static var controller_left: PackedInt32Array = [JOY_BUTTON_DPAD_LEFT, 0]
static var controller_right: PackedInt32Array = [JOY_BUTTON_DPAD_RIGHT, 0]
static var controller_up: PackedInt32Array = [JOY_BUTTON_DPAD_UP, 0]
static var controller_down: PackedInt32Array = [JOY_BUTTON_DPAD_DOWN, 0]
static var controller_start: PackedInt32Array = [JOY_BUTTON_START, 0]

static var keyboard_attack: Key = KEY_X
static var keyboard_run: Key = KEY_SHIFT
static var keyboard_jump: Key = KEY_Z
static var keyboard_bomb: Key = KEY_C
static var keyboard_rope: Key = KEY_D
static var keyboard_pay: Key = KEY_A
static var keyboard_item: Key
static var keyboard_left: Key = KEY_LEFT
static var keyboard_right: Key = KEY_RIGHT
static var keyboard_up: Key = KEY_UP
static var keyboard_down: Key = KEY_DOWN
static var keyboard_start: Key = KEY_ESCAPE
