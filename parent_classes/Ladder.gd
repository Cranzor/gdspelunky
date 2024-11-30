@icon("res://sprites/blocks/ladders/ladder/ladder_0.png")
extends DrawnSprite
class_name Ladder

func _ready():
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask
