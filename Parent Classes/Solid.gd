extends DrawnSprite
class_name Solid

func _ready():
	sprite
	solid = false
	visible = true
	depth = 100
	persistent = false
	parent = 'DrawnSprite'
	mask
