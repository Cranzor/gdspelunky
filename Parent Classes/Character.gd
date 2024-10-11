@icon("res://sprites/character/main dude/stand_left/stand_left_0.png")
extends DrawnSprite
class_name Character

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = true
	parent = DrawnSprite
	mask
