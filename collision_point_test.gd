extends Node2D

var groups

# Called when the node enters the scene tree for the first time.
func _ready():
	self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func test(area: Node2D):
	print(area.get_parent())
	return area.get_parent()


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	groups = area.get_parent().get_groups()

func return_area_parent_groups():
	print(position.x)
	return $Area2D.get_overlapping_areas()
