extends DrawnSprite
class_name Exit

func _ready():
	sprite = 'sExit'
	solid = false
	visible = true
	depth = 9000
	persistent = false
	parent = DrawnSprite
	mask
