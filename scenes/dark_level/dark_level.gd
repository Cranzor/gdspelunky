extends BackBufferCopy


func _ready() -> void:
	SignalBus.dark_level_started.connect(show)
