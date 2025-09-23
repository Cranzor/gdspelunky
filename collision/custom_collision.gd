extends Node2D

static var cell_to_objects: Dictionary
var cell_size: int = 32 # double the size of most common object size


func get_hash(position: Vector2) -> Vector2:
	return Vector2(floor(float(position.x)/float(cell_size)), floor(float(position.y)/float(cell_size)))


func get_object_grid_cells(object: GMObject) -> PackedVector2Array:
	var grid_cells: PackedVector2Array
	var rect: Rect2 = object.get_rect()
	var min_point: Vector2 = rect.position
	var max_point: Vector2 = rect.end
	var min: Vector2 = get_hash(min_point)
	var max: Vector2 = get_hash(max_point)
	for i in range(min.x, max.x+1):
		for j in range(min.y, max.y+1):
			if Vector2(i, j) not in grid_cells:
				grid_cells.append(Vector2(i, j))
	return grid_cells


func find_objects_in_grid_cells(cells: PackedVector2Array) -> void:
	var all_objects: Array[GMObject]
	for cell: Vector2 in cells:
		var cell_objects: Array = cell_to_objects[cell]
		all_objects.append_array(cell_objects)


func check_rect_collision(checking_rect: Rect2, checked_rect: Rect2) -> bool:
	if checking_rect.intersects(checked_rect):
		return true
	return false


func update_object_collision(object: GMObject, first_time: bool = false) -> void:
	var cells: PackedVector2Array = get_object_grid_cells(object)
	if !first_time: remove_object_from_cells(object, cells)
	set_object_to_cells(object, cells)


func set_object_to_cells(object: GMObject, cells: PackedVector2Array) -> void:
	for cell: Vector2 in cells:
		if !cell_to_objects.has(cell):
			cell_to_objects[cell] = []
		cell_to_objects[cell].append(object)


func remove_object_from_cells(object: GMObject, cells: PackedVector2Array) -> void:
	for cell: Vector2 in cells:
		cell_to_objects[cell].erase[object]
