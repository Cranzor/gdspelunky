extends GMObject

var size: Vector2i = Vector2i(640, 208)


func create_piranhas() -> void:
	var initial_position: Vector2i = Vector2i(16, 448)
	var size_in_blocks: Vector2i = Vector2i(40, 12)
	
	#--- code is adapted from level_generation script
	for x in range(1, size_in_blocks.x + 1):
		for y in range(1, size_in_blocks.y + 2):
			var block_pos: Vector2i = Vector2i(x * 16, (y * 16) + initial_position.y - 16)
			if (not gml.collision_point(block_pos.x, block_pos.y, "solid", 0, 0)):
				if (gml.rand(1,30) == 1):
					gml.instance_create(block_pos.x + 4, block_pos.y + 4, Objects.piranha)
