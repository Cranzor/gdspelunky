class_name CollisionHandling

var object_database: ObjectDatabase = ObjectDatabase.new()
var sprite_database: Sprites = Sprites.new()
var collision_grid: CollisionGrid = CollisionGrid.new()

func get_nodes_to_check(group_name, tester_rect):
	var tester_rect_grid_position: Array = collision_grid.find_grid_position(tester_rect.position, tester_rect.size)
	Engine.get_main_loop().call_group(group_name, "compare_grid_position_with_tester", tester_rect_grid_position)
	var nodes_to_check: Array = Engine.get_main_loop().get_nodes_in_group("in_collision_grid")
	Engine.get_main_loop().call_group("in_collision_grid", "remove_from_collision_grid")
	#var nodes_to_check = Engine.get_main_loop().get_nodes_in_group(group_name)
	return nodes_to_check

func get_all_nodes_in_group(group_name):
	var nodes_to_check: Array = Engine.get_main_loop().get_nodes_in_group(group_name)
	return nodes_to_check

func check_collision_group(nodes_to_check, tester_rect):
	for object in nodes_to_check:
		var intersecting: bool = check_individual_collision(object, tester_rect)
		if intersecting == true:
			return true
	return false
	
func check_individual_collision(node_to_check, tester_rect):
		var object_sprite: String = node_to_check.sprite_index_name
		var bounding_box: Vector2
		if sprite_database.sprite_database[object_sprite]["mask"]["shape"] == "RECTANGLE":
			bounding_box = sprite_database.sprite_database[object_sprite]["mask"]["collision_rectangles"][1]
		else:
			bounding_box = sprite_database.sprite_database[object_sprite]["mask"]["bounding_box"][1]
			
		var position_with_offset: Vector2
		if sprite_database.sprite_database[object_sprite]["mask"]["shape"] == "RECTANGLE":
			position_with_offset = get_position_with_offset_applied(node_to_check.position, node_to_check.sprite_offset - sprite_database.sprite_database[object_sprite]["mask"]["collision_rectangles"][0])
		else:
			position_with_offset = get_position_with_offset_applied(node_to_check.position, node_to_check.sprite_offset)
			
		var object_rect: Rect2 = Rect2(position_with_offset, bounding_box)
		var intersecting: bool = tester_rect.intersects(object_rect)
		if intersecting == true:
			return true
		return false

func bounding_box_check(testing_box):
	pass

func get_position_with_offset_applied(position, offset):
	var position_with_offset: Vector2 = position - offset
	return position_with_offset
	
func get_group_bounding_box(group_name):
	var object_sprite: String = object_database.object_database[group_name]["sprite"]
	
	if object_sprite == null:
		return(Vector2(0, 0))
	else:
		var bounding_box: Vector2 = sprite_database.sprite_database[object_sprite]["mask"]["bounding_box"][1]
		return bounding_box
