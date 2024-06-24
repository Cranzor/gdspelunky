extends TileMap

func _on_child_entered_tree(node):
	gml.set_up_object_collision(node)
