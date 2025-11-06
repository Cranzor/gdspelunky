extends Button

@onready var hand: AnimatedSprite2D = %Hand
@onready var arrow_left: Sprite2D = %ArrowLeft
@onready var arrow_right: Sprite2D = %ArrowRight
@export var next_menu_to_show: NodePath
@export var menu_to_hide: NodePath
@export var option_to_scroll: NodePath
@export var input_option: NodePath
@export var signal_to_emit: StringName
@export var setting_to_update: StringName
var game_settings: GameSettings = load("res://settings/game_settings.gd").new()
var y_offset: int = 5
var x_offset: int = 15
var waiting_for_input: bool = false


func _ready() -> void:
	self.pressed.connect(_button_pressed)
	self.mouse_entered.connect(grab_focus)
	
	#--- setting label text based on the value in GameSettings
	if option_to_scroll and setting_to_update:
		get_node(option_to_scroll).set_option_from_loaded_setting(setting_to_update, game_settings)


func _process(delta: float) -> void:
	if has_focus():
		hand.global_position.y = global_position.y + y_offset
		hand.global_position.x = global_position.x - x_offset
		
		if option_to_scroll:
			var scrollable = get_node(option_to_scroll)
			scrollable.place_arrows()
			if Input.is_action_just_pressed("ui_right"):
				get_node(option_to_scroll).go_to_next_option()
		else:
			arrow_left.hide()
			arrow_right.hide()


func _button_pressed() -> void:
	if next_menu_to_show:
		SignalBus.emit_signal("menu_screen_change_requested", get_node(menu_to_hide), get_node(next_menu_to_show))
	if signal_to_emit:
		SignalBus.emit_signal(signal_to_emit)
	if setting_to_update:
		if option_to_scroll:
			var value: Variant = get_node(option_to_scroll).get_option_value()
			game_settings.set(setting_to_update, value)
	if input_option:
		waiting_for_input = true


func _input(event: InputEvent) -> void:
	if waiting_for_input:
		if Input.is_anything_pressed():
			get_node(input_option).set_input(event)
			waiting_for_input = false
