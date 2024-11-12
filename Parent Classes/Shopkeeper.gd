extends Enemy
class_name Shopkeeper

func _ready():
	sprite = 'sShopLeft'
	solid = false
	visible = true
	depth = 60
	persistent = false
	parent = Enemy
	mask

func step():
	pass
