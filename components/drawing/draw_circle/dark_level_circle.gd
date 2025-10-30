extends AnimatedSprite2D

@export_enum("16:16", "32:32", "64:64", "96:96") var radius: int = 32
@export var offset_value: Vector2 #---TODO: change this to grab built-in offset value of sprite once implemented in the editor
var parent_name: StringName

func _ready() -> void:
	parent_name = get_parent().object_name
	SignalBus.dark_level_started.connect(show)
	SignalBus.dark_level_circle_color_updated.connect(_update_circle_color)
	SignalBus.darkness_updated.connect(_update_circle_size)
	animation = str(radius)
	position += offset_value
	
	if global.dark_level: #--- signal and this check will make it show regardless of calling order
		show()

func _update_circle_color(color: Color) -> void:
	material.set("shader_parameter/color", color)

#--- player1 has its own separate shader with a variable diameter
func _update_circle_size(darkness: float) -> void:
	var normalized_diameter: float = (96 - (64 * darkness)) * 2 / 192 #--- the radius value in screen object for player1 is 96-64*level.darkness
	
	if parent_name == "player1":
		material.set("shader_parameter/diameter", normalized_diameter)
