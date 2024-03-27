extends DrawnSprite
class_name Item

func _ready():
	sprite
	solid = true
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask
