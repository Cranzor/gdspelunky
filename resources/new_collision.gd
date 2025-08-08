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
