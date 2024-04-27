extends Node2D
class_name DrawnSprite

var sprite
var solid = false
var depth = 0
var persistent = false
var parent
var mask

#--- want access to these for all objects, so defining here
var collision_bounds_offset_left_x
var collision_bounds_offset_top_y
var collision_bounds_offset_right_x
var collision_bounds_offset_bottom_y

func _ready():
	visible = true
