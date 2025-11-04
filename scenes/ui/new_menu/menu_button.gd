extends Button

@onready var hand: AnimatedSprite2D = %Hand
@onready var arrow_left: Sprite2D = %ArrowLeft
@onready var arrow_right: Sprite2D = %ArrowRight
@export var next_menu_to_show: NodePath
@export var menu_to_hide: NodePath
@export var option_to_scroll: NodePath
@export var signal_to_emit: StringName
@export var setting_to_update: StringName
var y_offset: int = 5
var x_offset: int = 15


func _ready() -> void:
	self.pressed.connect(_button_pressed)


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
		#var next_menu = get_node(next_menu_to_show)
		#next_menu.display_menu_screen()
	#if menu_to_hide:
		#get_node(menu_to_hide).hide()
		SignalBus.emit_signal("menu_screen_change_requested", get_node(menu_to_hide), get_node(next_menu_to_show))
	if signal_to_emit:
		SignalBus.emit_signal(signal_to_emit)
	if setting_to_update:
		pass
