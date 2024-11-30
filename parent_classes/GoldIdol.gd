@icon("res://sprites/items/treasures/gold_idol/gold_idol_0.png")

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
