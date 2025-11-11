extends CanvasLayer

@onready var color_rect = $ColorRect
@onready var viewport = get_viewport()


func _ready() -> void:
	viewport.size_changed.connect(_on_viewport_size_changed)
	_on_viewport_size_changed()


func _on_viewport_size_changed() -> void:
	var window_size = DisplayServer.window_get_size()
	var texture_size = viewport.get_visible_rect().size
	
	color_rect.size = texture_size
	color_rect.material.set_shader_parameter("OutputSize", window_size)
	color_rect.material.set_shader_parameter("TextureSize", texture_size)
	color_rect.material.set_shader_parameter("InputSize", texture_size)
