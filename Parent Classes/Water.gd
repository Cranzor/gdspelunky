extends DrawnSprite
class_name Water

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask
