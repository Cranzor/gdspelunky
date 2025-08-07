extends AnimatedSprite2D

@export_enum("16:16", "32:32", "64:64", "96:96") var radius: int = 32
@export var offset_value: Vector2 #---TODO: change this to grab built-in offset value of sprite once implemented in the editor

func _ready() -> void:
	SignalBus.dark_level_started.connect(show)
	SignalBus.dark_level_circle_color_updated.connect(_update_circle_color)
	animation = str(radius)
	position += offset_value
	
	if global.dark_level: #--- signal and this check will make it show regardless of calling order
		show()

func _update_circle_color(color: Color) -> void:
	material.set("shader_parameter/color", color)
