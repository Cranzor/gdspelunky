#--- click the node that will serve as the parent node

@tool
extends EditorScript

var room_generation = RoomGeneration.new()

var room_name = "intro"

func _run() -> void:
	#Screen.get_node("TitleScreen/Background").visible = true #--- putting this here to avoid objects being visible for one frame before background becomes visible
	var node = get_editor_interface().get_selection().get_selected_nodes()[0]
	print(node)
	room_generation.generate_room(room_name, node)
