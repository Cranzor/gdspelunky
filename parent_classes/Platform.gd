extends DrawnSprite
class_name Platform

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask
