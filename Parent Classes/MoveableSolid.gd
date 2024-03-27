extends Solid
class_name MoveableSolid

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = false
	parent = Solid
	mask
