@tool
extends EditorScript

var room_generation = RoomGeneration.new()
var gml_class = GML_Class.new()
var collision_grid = CollisionGrid.new()

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(collision_grid.find_grid_position(Vector2(192, 160), Vector2(16, 16)))
