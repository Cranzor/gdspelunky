extends BackBufferCopy

@onready var circles = $Circles

func _ready() -> void:
	SignalBus.dark_level_started.connect(show)
	SignalBus.circle_redraw.connect(circles.queue_redraw)
	SignalBus.circle_data.connect(append_circle_data)

func append_circle_data(data: Array) -> void:
	circles.circles_to_draw.append(data)
