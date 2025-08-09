extends Node
class_name NewCollision

var sprites = Sprites.new()

func create_bounding_box(object: GMObject, passed_position: Vector2, passed_size: Vector2):
	var area: Area2D = Area2D.new()
	area.name = "BoundingBox"
	area.set_collision_layer_value(2, true)
	area.set_collision_layer_value(1, false)
	area.set_collision_mask_value(2, true)
	area.set_collision_mask_value(1, false)
	
	var collision_shape: CollisionShape2D = CollisionShape2D.new()
	var rectangle_shape: RectangleShape2D = RectangleShape2D.new()
	collision_shape.position = passed_position
	rectangle_shape.size = passed_size * 2
	collision_shape.set_shape(rectangle_shape)
	collision_shape.debug_color = Color(0.69, 0.296, 0.987, 0.1)
	
	area.add_child(collision_shape)
	
	object.add_child(area)
	area.area_entered.connect(object._bounding_box_entered)
	area.area_exited.connect(object._bounding_box_exited)

func get_object_collision_shape_rect(object: GMObject):
	var origin = sprites.sprite_database[object.sprite_index_name]["origin"]
	var box = sprites.sprite_database[object.sprite_index_name]["mask"]["bounding_box"][1]
	var collision_shape: CollisionShape2D = object.get_node("CollisionShape2D")
	var pos: Vector2 = object.position - origin #--- was using collision_shape's global position, but can't rely on this for things that spawn in instantly (like explosion)
	var size = box #--- same with above
	var returned_rect: Rect2 = Rect2(pos, size)
	return returned_rect

func check_inner_box_for_collision_with_group(passed_object: GMObject, group: StringName) -> Array:
	var origin = sprites.sprite_database[passed_object.sprite_index_name]["origin"]
	
	var potential_objs: Array[GMObject]
	var bb_objects: Array = passed_object.objects_in_bb.duplicate()

	for comparison_obj: GMObject in bb_objects:
		var groups: Array = comparison_obj.get_groups()
		if groups.has(group):
			var self_collision: Rect2 = get_object_collision_shape_rect(passed_object)
			var other_collision: Rect2 = get_object_collision_shape_rect(comparison_obj)
			if self_collision.intersects(other_collision):
				potential_objs.append(comparison_obj)
	if !potential_objs.is_empty():
		return potential_objs
	return []
