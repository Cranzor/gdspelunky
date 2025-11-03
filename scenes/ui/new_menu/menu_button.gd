extends Button

@onready var hand: AnimatedSprite2D = %Hand
@export var next_menu_to_show: NodePath
@export var menu_to_hide: NodePath
@export var signal_to_emit: StringName
@export var setting_to_update: StringName
var y_offset: int = 5
var x_offset: int = 15


func _ready() -> void:
	self.focus_entered.connect(_focus_entered)
	self.pressed.connect(_button_pressed)


func _focus_entered() -> void:
	if global_position != Vector2(0, 0): #--- "resume game" button is grabbing focus before its position is initialized, messing up the hand position
		hand.position.y = global_position.y + y_offset
		hand.position.x = position.x - x_offset


func _button_pressed() -> void:
	if menu_to_hide:
		get_node(menu_to_hide).hide()
	if next_menu_to_show:
		get_node(next_menu_to_show).show()
	if signal_to_emit:
		SignalBus.emit_signal(signal_to_emit)
	if setting_to_update:
		pass
		
