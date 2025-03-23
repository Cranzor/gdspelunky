extends Node

@onready var player = $JumpLeft0
@onready var snake = $YetiLeft0

func _physics_process(delta: float) -> void:
	#player.position.y += 1
	var collision = instance_place(snake.position.x, snake.position.y, "collision_testing_node", snake)
	if collision:
		print("collided")

func instance_place(x,y,obj: String, comparison_object): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	var sprite: Sprite2D = snake
	var offset = sprite.offset
	var collision_shape: CollisionShape2D = comparison_object.get_node("Area2D/CollisionShape2D")
	var comparison_object_collision_shape_size = collision_shape.shape.get_rect().size
	var position_with_offset = Vector2(x + offset.x, y + offset.y)
	var size_with_scale: Vector2 = Vector2(position_with_offset.x + comparison_object_collision_shape_size.x, position_with_offset.y + comparison_object_collision_shape_size.y)
	return gml.collision_rectangle(position_with_offset.x, position_with_offset.y, size_with_scale.x, size_with_scale.y, obj, 0, 0)
