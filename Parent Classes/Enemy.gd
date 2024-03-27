extends DrawnSprite
class_name Enemy

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = true
	parent = DrawnSprite
	mask
