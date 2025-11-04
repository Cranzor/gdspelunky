extends Label

@onready var arrow_left: Sprite2D = %ArrowLeft
@onready var arrow_right: Sprite2D = %ArrowRight
var arrow_left_offset: Vector2 = Vector2(-35, 3)
var arrow_right_offset: Vector2 = Vector2(80, 3)
@export var options: PackedStringArray
@export var values: Array[Variant]
var current_option: int = 0
var hovered: bool = false


func _process(delta: float) -> void:
	if hovered:
		place_arrows()


func _ready() -> void:
	text = options[current_option]


func go_to_next_option() -> void:
	var size: int = options.size()
	current_option += 1
	if current_option == size:
		current_option = 0
		text = options[current_option]
	else:
		text = options[current_option]


func get_option_value() -> Variant:
	return values[current_option]


func place_arrows() -> void:
	arrow_left.show()
	arrow_right.show()
	arrow_left.global_position = global_position + arrow_left_offset
	arrow_right.global_position = global_position + arrow_right_offset
