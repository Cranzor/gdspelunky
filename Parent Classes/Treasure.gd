extends DrawnSprite
class_name Treasure

func _ready():
	sprite
	solid = false
	visible = true
	depth = 101
	persistent = false
	parent = DrawnSprite
	mask
