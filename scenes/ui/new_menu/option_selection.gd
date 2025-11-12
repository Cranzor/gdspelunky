extends Label


var arrow_left_offset: Vector2 = Vector2(15, 3)
var arrow_right_offset: Vector2 = Vector2(136, 3)
@export var setting_to_update: StringName
@export var description: NodePath
@export var options: PackedStringArray
@export var values: Array[Variant]
var current_option: int = 0
@onready var hand: AnimatedSprite2D = %Hand
var y_offset: int = 5
var x_offset: int = 15
var game_settings = load("res://settings/game_settings.gd").new()
@onready var arrow_left: TextureRect = %ArrowLeft
@onready var arrow_right: TextureRect = %ArrowRight


func _ready() -> void:
	text = options[current_option]
	set_option_from_loaded_setting()
	focus_entered.connect(_on_focus_entered)
	mouse_entered.connect(grab_focus)
	draw.connect(place_hand)
	draw.connect(place_arrows)
	focus_exited.connect(_on_focus_exited)


func _input(event: InputEvent) -> void:
	if has_focus():
		if Input.is_action_just_pressed("ui_right"):
			update_option(1)
			game_settings.set(setting_to_update, values[current_option])
		elif Input.is_action_just_pressed("ui_left"):
			update_option(-1)
			game_settings.set(setting_to_update, values[current_option])


func update_option(amount: int) -> void:
	var upper_limit: int = options.size() - 1
	current_option += amount
	if current_option > upper_limit: current_option = 0
	elif current_option < 0: current_option = upper_limit
	text = options[current_option]


func get_option_value() -> Variant:
	return values[current_option]


func place_arrows() -> void:
	if has_focus():
		arrow_left.show()
		arrow_right.show()
		
		var description_node = get_node(description)
		arrow_left.reparent(description_node, false)
		arrow_right.reparent(description_node, false)
		arrow_left.global_position = description_node.global_position + Vector2(125, -4)
		arrow_right.global_position = description_node.global_position + Vector2(250, -4)


func set_option_from_loaded_setting():
	var setting_value = game_settings.get(setting_to_update)
	current_option = values.find(setting_value)
	update_option(0)


func _on_focus_entered() -> void:
	place_hand()
	place_arrows()
	var description_node: Label = get_node(description)
	modulate = gml.c_yellow
	description_node.self_modulate = gml.c_yellow


func _on_focus_exited() -> void:
	var description_node: Label = get_node(description)
	modulate = gml.c_white
	description_node.self_modulate = gml.c_white
	


func place_hand() -> void:
	if has_focus():
		var description_node: Label = get_node(description)
		hand.global_position.y = description_node.global_position.y + y_offset
		hand.global_position.x = description_node.global_position.x - x_offset
