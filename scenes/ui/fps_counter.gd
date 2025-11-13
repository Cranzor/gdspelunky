extends Label


func _ready():
	visible = GameSettings.show_fps
	SignalBus.show_fps.connect(show_fps_display)


func _process(_delta):
	var fps: int = Engine.get_frames_per_second()
	text = str(fps)


func show_fps_display(show_fps: bool) -> void:
	if show_fps: show()
	else: hide()
