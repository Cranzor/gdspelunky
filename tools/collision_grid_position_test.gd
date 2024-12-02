@tool
extends EditorScript



func _run() -> void:
	var sprites = Sprites.new()
	var collision_grid: CollisionGrid = CollisionGrid.new()
	var test = collision_grid.find_grid_position(Vector2(240, 64), Vector2(16, 16))
	print(test)
	
	var object_size = sprites.sprite_database["snake_left"]["mask"]["bounding_box"][1]
	
	var x1 = 80
	var x2 = 16
	var y1 = 80
	var y2 = 16
	#var rect = Rect2(Vector2(x1, y1), Vector2(abs(x2 - x1), abs(y2 - y1)))
	var rect = Rect2(Vector2(x1, y1), Vector2(x2, y2))
	print(rect)
