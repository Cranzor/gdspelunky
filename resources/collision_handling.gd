class_name CollisionHandling

var object_database = ObjectDatabase.new()
var sprite_database = Sprites.new()
var collision_grid = CollisionGrid.new()

func get_nodes_to_check(group_name):
	var nodes_to_check = Engine.get_main_loop().get_nodes_in_group(group_name)
	return nodes_to_check

func check_collision(nodes_to_check, tester_rect, group_bounding_box):
	if group_bounding_box == Vector2(0,0):
		group_bounding_box = Vector2(16, 16)
	for object in nodes_to_check:
		var position_with_offset = get_position_with_offset_applied(object.position, object.sprite_offset)
		var object_rect = Rect2(position_with_offset, group_bounding_box)
		var intersecting = tester_rect.intersects(object_rect)
		if intersecting == true:
			return true
	return false

func bounding_box_check(testing_box):
	pass

func get_position_with_offset_applied(position, offset):
	var position_with_offset = position + offset
	return position_with_offset
	
func get_group_bounding_box(group_name):
	var object_sprite = object_database.object_database[group_name]["sprite"]
	
	if object_sprite == null:
		return(Vector2(0, 0))
	else:
		var bounding_box = sprite_database.sprite_database[object_sprite]["mask"]["bounding_box"][1]
		return bounding_box
