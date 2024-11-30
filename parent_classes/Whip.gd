extends DrawnSprite
class_name Whip

func _ready():
	sprite = 'sWhipRight'
	solid = false
	visible = true
	depth = 1
	persistent = false
	parent = DrawnSprite
	mask
