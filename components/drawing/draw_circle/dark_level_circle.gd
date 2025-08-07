extends AnimatedSprite2D

@export_enum("16:16", "32:32", "64:64", "96:96") var radius: int = 32

func _ready() -> void:
	SignalBus.dark_level_started.connect(show)
	animation = str(radius)
