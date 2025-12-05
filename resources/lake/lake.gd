extends GMObject

var size: Vector2i = Vector2i(640, 208)


func _ready() -> void:
	create_water_bottom_sprites()


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


func create_water_bottom_sprites() -> void:
	var bottom_left_water_pos: Vector2i = Vector2i(16, 640)
	for x in range(1, 41): #--- 40 water blocks horizontally
		var block_pos: Vector2i = Vector2i(x * 16, 640)
		var lake_bottom: AnimatedSprite2D = preload("res://resources/lake/lake_bottom.tscn").instantiate()
		add_child(lake_bottom)
		lake_bottom.global_position = block_pos
		if gml.rand(1,4) == 1: #--- water_bottom setting adapted from level_generation script
			lake_bottom.global_position.y -= 16
			lake_bottom.play("water_bottom_tall")
		else:
				var n = gml.rand(1,4)
				match (n):
				
					1: lake_bottom.animation = "water_bottom"
					2: lake_bottom.animation = "water_bottom2"
					3: lake_bottom.animation = "water_bottom3"
					4: lake_bottom.animation = "water_bottom4"
