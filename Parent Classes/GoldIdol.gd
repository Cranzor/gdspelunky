extends Item
class_name GoldIdol

func _ready():
	sprite = 'sGoldIdol'
	solid = false
	visible = true
	depth = 100
	persistent = false
	parent = Item
	mask
