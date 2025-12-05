extends Node2D

static var cell_to_objects: Dictionary
static var cell_size: int = 32 # double the size of most common object size
var prior_occupied_cells: PackedVector2Array
var potential_collision_objects: Array[GMObject]
var debug_highlighting = preload("res://collision/debug/broad_phase_highlighting.gd").new()
var debug_highlighting_on: bool = false
var sprites = Sprites.new()
var rect: Rect2


func get_hash(position: Vector2) -> Vector2:
	return Vector2(floor(float(position.x)/float(cell_size)), floor(float(position.y)/float(cell_size)))


func get_object_grid_cells(object: GMObject) -> PackedVector2Array:
	var rect: Rect2 = get_object_rect(object) #---TODO: just get a simple rectangle for this step. can check the more accurate rect later
	return get_grid_cells_from_rect(rect)


var rect_to_grid_cells: Dictionary[Rect2, PackedVector2Array]
func get_grid_cells_from_rect(rect: Rect2) -> PackedVector2Array:
	if rect in rect_to_grid_cells:
		return rect_to_grid_cells[rect]
	var grid_cells: PackedVector2Array
	var min_point: Vector2 = rect.position
	var max_point: Vector2 = rect.end
	var min: Vector2 = get_hash(min_point)
	var max: Vector2 = get_hash(max_point)
	for i in range(min.x, max.x+1):
		for j in range(min.y, max.y+1):
			grid_cells.append(Vector2(i, j))
	rect_to_grid_cells[rect] = grid_cells
	return grid_cells


func get_object_rect(object: GMObject) -> Rect2:
	var default_animation: StringName = object.animated_sprite_node.default_animation #--- for accurate updated sprite, change to object.sprite_index_name
	if sprites.sprite_database.has(default_animation):
		var origin = sprites.sprite_database[default_animation]["origin"]
		var size = sprites.sprite_database[default_animation]["mask"]["bounding_box"][1]
		var pos: Vector2 = object.position - origin #--- was using collision_shape's global position, but can't rely on this for things that spawn in instantly (like explosion)
		
		var returned_rect: Rect2 = Rect2(pos, size)
		if object.object_name == "arrow_trap_test": #--- making an exception for arrow_trap_test due to how its image_xscale value affects its collision size
			var alt_pos = object.position
			var alt_size = Vector2(16 * object.image_xscale, 16)
			returned_rect = Rect2(alt_pos, alt_size)
		elif object.object_name == "lake":
			var alt_size = object.size
			returned_rect = Rect2(object.position, alt_size)
		rect = returned_rect
		return returned_rect
	return Rect2(0, 0, 0, 0)


func find_objects_in_grid_cells(cells: PackedVector2Array) -> Array[GMObject]:
	var all_objects: Array[GMObject]
	var name_to_object: Dictionary[StringName, GMObject]
	for cell: Vector2 in cells:
		if cell_to_objects.has(cell):
			var cell_objects: Dictionary = cell_to_objects[cell]
			name_to_object.merge(cell_objects)
			#for object in cell_objects:
				#if is_instance_valid(object): #TODO: find out why there are null objects coming back in cell_objects
					#name_to_object[object.name] = object
	all_objects = name_to_object.values()
	return all_objects


func check_rect_collision(checking_rect: Rect2, checked_rect: Rect2) -> bool:
	if checking_rect.intersects(checked_rect):
		return true
	return false


func update_object_collision(object: GMObject, first_time: bool = false) -> void:
	if object.is_queued_for_deletion():
		return
	var cells: PackedVector2Array = get_object_grid_cells(object)
	if cells != prior_occupied_cells:
		if !first_time: remove_object_from_cells(object, prior_occupied_cells)
		set_object_to_cells(object, cells)
		prior_occupied_cells = cells


func set_object_to_cells(object: GMObject, cells: PackedVector2Array) -> void:
	for cell: Vector2 in cells:
		if !cell_to_objects.has(cell):
			cell_to_objects[cell] = {}
		cell_to_objects[cell][object.name] = object


func remove_object_from_cells(object: GMObject, cells: PackedVector2Array) -> void:
	for cell: Vector2 in cells:
		cell_to_objects[cell].erase(object.name)


func group_collision_query(checking_rect: Rect2, group: StringName, calling_object: GMObject = null, notme: bool = false):
	var grid_cells: PackedVector2Array = get_grid_cells_from_rect(checking_rect)
	var candidate_objects: Array[GMObject] = find_objects_in_grid_cells(grid_cells)
	var matched_objects: Array[GMObject]
	for object in candidate_objects:
		if object.get_groups().has(group): #TODO: adding groups at the start may be faster. but have to account for moving_solid objects that pass in unique_id
			var colliding: bool = check_rect_collision(checking_rect, object.custom_collision.rect)
			if colliding:
				if !check_notme(calling_object, object, notme):
					matched_objects.append(object)
	if matched_objects:
		return matched_objects[0]
	return null


func check_rect_sides_for_collision_with_group(object_rect: Rect2, collision_checks: Dictionary[int, PackedStringArray], candidate_objects: Array[GMObject], grow_size: int):
	var collision_results: Dictionary
	var left_side: Rect2 = Rect2(object_rect.position.x - grow_size, object_rect.position.y, 1, object_rect.size.y)
	var right_side: Rect2 = Rect2(object_rect.position.x + grow_size, object_rect.position.y, 1, object_rect.size.y)
	var top_side: Rect2 = Rect2(object_rect.position.x, object_rect.position.y - grow_size, object_rect.size.x, 1)
	var bottom_side: Rect2 = Rect2(object_rect.position.x, object_rect.position.y + grow_size, object_rect.size.x, 1)
	var int_to_side: Dictionary[int, Rect2] = {0 : left_side, 1 : top_side, 2 : right_side, 3 : bottom_side}
	for side in collision_checks:
		if side not in collision_results:
			collision_results[side] = {}
		var groups: PackedStringArray = collision_checks[side]
		for group in groups:
			for obj: GMObject in candidate_objects:
				if group in obj.groups:
					var colliding: bool = check_rect_collision(int_to_side[side], obj.custom_collision.rect)
					if colliding:
						collision_results[side][group] = true
						break
				collision_results[side][group] = false
	return collision_results


func check_notme(calling_object: GMObject, comparison_object: GMObject, notme: bool) -> bool:
	if notme == false:
		return false
	if calling_object == comparison_object:
		return true
	
	if notme and calling_object == null:
		push_error("notme was called but no comparison object was passed in")
		
	return false
