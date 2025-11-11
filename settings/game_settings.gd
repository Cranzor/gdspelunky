extends Node
class_name GameSettings

static var default_setting_values: Dictionary = {
	#--- graphics
	"high_detail" : true,
	"vsync" : false,
	"fullscreen" : false,
	"frame_rate" : 0,
	
	#--- sound
	"music_volume" : null, #TODO
	"sound_effects_volume" : null, #TODO
	
	#--- gameplay
	"auto_run" : false,
	"rumble" : 1,
	"screen_shake" : 2,
	
	#--- HUD/UI
	"display_fps" : false,
	"new_pause_menu" : true,
	
	#--- controls (controller)
	"controller_attack" : [JOY_BUTTON_X, 0],
	"controller_run" : [JOY_AXIS_TRIGGER_RIGHT, 1],
	"controller_jump" : [JOY_BUTTON_A, 0],
	"controller_bomb" : [JOY_BUTTON_B, 0],
	"controller_rope" : [JOY_BUTTON_Y, 0],
	"controller_pay" : [JOY_BUTTON_RIGHT_SHOULDER, 0],
	"controller_item" : [JOY_BUTTON_LEFT_SHOULDER, 0],
	"controller_enter_door" : [JOY_BUTTON_RIGHT_SHOULDER, 0],
	"controller_left" : [JOY_BUTTON_DPAD_LEFT, 0],
	"controller_right" : [JOY_BUTTON_DPAD_RIGHT, 0],
	"controller_up" : [JOY_BUTTON_DPAD_UP, 0],
	"controller_down" : [JOY_BUTTON_DPAD_DOWN, 0],
	"controller_start" : [JOY_BUTTON_START, 0],
	
	#--- controls (keyboard)
	"keyboard_attack" : KEY_X,
	"keyboard_run" : KEY_SHIFT,
	"keyboard_jump" : KEY_Z,
	"keyboard_bomb" : KEY_C,
	"keyboard_rope" : KEY_S,
	"keyboard_pay" : KEY_P,
	"keyboard_item" : KEY_C,
	"keyboard_enter_door" : KEY_UP,
	"keyboard_left" : KEY_LEFT,
	"keyboard_right" : KEY_RIGHT,
	"keyboard_up" : KEY_UP,
	"keyboard_down" : KEY_DOWN,
	"keyboard_start" : KEY_ESCAPE
}

#--- graphics
static var smooth_motion: bool = true
static var high_detail: bool = true
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
			GameInitialization.initalize_window()
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
static var keyboard_rope: Key = KEY_S
static var keyboard_pay: Key = KEY_P
static var keyboard_item: Key = KEY_C
static var keyboard_enter_door: Key = KEY_UP
static var keyboard_left: Key = KEY_LEFT
static var keyboard_right: Key = KEY_RIGHT
static var keyboard_up: Key = KEY_UP
static var keyboard_down: Key = KEY_DOWN
static var keyboard_start: Key = KEY_ESCAPE


static func get_screen_shake_value() -> int:
	var values: PackedInt32Array = [0, 1, 3, 5]
	return values[screen_shake]


static func start_controller_rumble(duration: float = 0.3) -> void:
	var values: PackedVector2Array = [Vector2(0.0, 0.0), Vector2(0.3, 0.3), Vector2(0.6, 0.6), Vector2(0.9, 0.9)]
	Input.start_joy_vibration(0, values[rumble].x, values[rumble].y, duration)
