extends DrawnSprite

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask

func step(): #--- placeholder for now for children super() call
	pass
