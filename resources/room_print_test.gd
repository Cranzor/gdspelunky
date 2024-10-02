@tool
extends EditorScript

var room_generation = RoomGeneration.new()
var gml_class = GML_Class.new()

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(gml_class.collision_line(2, 5, 8, 3, 'solid', 1, 1))
