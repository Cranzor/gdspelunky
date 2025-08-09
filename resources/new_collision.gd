extends Node
class_name NewCollision

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
	var collision_shape: CollisionShape2D = object.get_node("CollisionShape2D")
	var pos: Vector2 = collision_shape.global_position
	var shape: Shape2D = collision_shape.shape
	var rect = shape.get_rect()
	var size = rect.size
	var returned_rect: Rect2 = Rect2(pos, size)
	return returned_rect

func check_inner_box_for_collision_with_group(passed_object: GMObject, group: StringName):
	var bb_objects: Array = passed_object.objects_in_bb.duplicate()
	bb_objects.reverse()
	for comparison_obj: GMObject in bb_objects:
		var groups: Array = comparison_obj.get_groups()
		if groups.has(group):
			var self_collision: Rect2 = get_object_collision_shape_rect(passed_object)
			var other_collision: Rect2 = get_object_collision_shape_rect(comparison_obj)
			if self_collision.intersects(other_collision):
				return comparison_obj
	return null
