extends DrawnSprite
class_name XStart

func _ready():
	sprite = 'sExit'
	solid = false
	visible = true
	depth = 999999
	persistent = false
	parent = DrawnSprite
	mask
