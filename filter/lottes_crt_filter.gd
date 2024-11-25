extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var color_rect = $ColorRect
	var window_width_override = ProjectSettings.get_setting("display/window/size/window_width_override")
	var window_height_override = ProjectSettings.get_setting("display/window/size/window_height_override")
	var window_override = Vector2(window_width_override, window_height_override)

	color_rect.material.set_shader_parameter("OutputSize", window_override)
	print(color_rect.material.get_shader_parameter("OutputSize"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
