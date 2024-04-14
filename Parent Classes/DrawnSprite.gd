extends Node2D
class_name DrawnSprite

var sprite
var solid = false
var depth = 0
var persistent = false
var parent
var mask

func _ready():
	visible = true
