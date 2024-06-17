extends DrawnSprite
class_name Item

var falling
var px
var py

func _ready():
	sprite
	solid = true
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask

func item_create():
	pass

func item_step():
	pass
