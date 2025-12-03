extends Solid


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	clean_death = false
	treasure = ""


func destroy():
	if (not clean_death):

		if (not global.city_of_gold):
	
			var rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble, self)
			rubble.sprite_index = "rubble_lush"
			rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
			rubble.sprite_index = "rubble_lush_small"
			rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
			rubble.sprite_index = "rubble_lush_small"
	
		else:
	
			for i in range(0, 3):
		
				var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_chunk, self)
				gold.x_vel = randi_range(0,3) - randi_range(0,3)
				gold.y_vel = randi_range(2,4) * 1
		
			var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_nugget, self)
			gold.x_vel = randi_range(0,3) - randi_range(0,3)
			gold.y_vel = randi_range(2,4) * 1
	
			if (treasure == "diamond"): for repetition in range(2):  gml.instance_create(position.x+8, position.y+8, Objects.diamond, self)
			if (treasure == "ruby"): for repetition in range(2):  gml.instance_create(position.x+8, position.y+8, Objects.ruby_big, self)
			if (treasure == "sapphire"): for repetition in range(2):  gml.instance_create(position.x+8, position.y+8, Objects.sapphire_big, self)
			if (treasure == "emerald"): for repetition in range(2):  gml.instance_create(position.x+8, position.y+8, Objects.emerald_big, self)
	

	var tile = gml.tile_layer_find(99, position.x, position.y)
	if (tile): gml.tile_delete(tile)
