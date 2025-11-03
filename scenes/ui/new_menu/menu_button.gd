extends Button

@onready var hand: AnimatedSprite2D = %Hand
@export var next_menu_to_show: NodePath
@export var menu_to_hide: NodePath
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


func _button_pressed() -> void:
	if next_menu_to_show:
		var next_menu = get_node(next_menu_to_show)
		next_menu.show()
		next_menu.get_child(1).grab_focus()
	if menu_to_hide:
		get_node(menu_to_hide).hide()
	if signal_to_emit:
		SignalBus.emit_signal(signal_to_emit)
	if setting_to_update:
		pass
