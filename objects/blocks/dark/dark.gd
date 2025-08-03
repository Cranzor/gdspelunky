extends Solid


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	var n = randi_range(1,100)

	if (gml.room_get_name() != "intro"):

		if (n < 20): sprite_index = "dark_gold"
		elif (n < 30): sprite_index = "dark_gold_big"
		elif (in_level.is_level() and position.x > 1 and position.x < gml.room_width-16 and position.y > 1 and position.y < gml.room_height-16):
		
			if (randi_range(1,40) == 1): gml.instance_create(position.x+8, position.y+8, Objects.sapphire_big)
			elif (randi_range(1,60) == 1): gml.instance_create(position.x+8, position.y+8, Objects.emerald_big)
			elif (randi_range(1,80) == 1): gml.instance_create(position.x+8, position.y+8, Objects.ruby_big)
			elif (randi_range(1,1200) == 1):

				LevelGeneration.scr_generate_item(position.x+8, position.y+8, 2)


func destroy():
	if (not clean_death and not global.clean_solids):

		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0, -8), position.y+8+randi_range(0,8)-randi_range(0, -8), Objects.rubble_dark) #--- [FLAG] looking at other scripts, "0-8" appears to be a mistake. will try to keep as is but may fix is behavior in Godot doesn't work correctly
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0, -8), position.y+8+randi_range(0,8)-randi_range(0, -8), Objects.rubble_dark_small)
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0, -8), position.y+8+randi_range(0,8)-randi_range(0, -8), Objects.rubble_dark_small)
		
		if (sprite_index == "dark_gold"):
		
			for i in range(3):
			
				var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_chunk)
				gold.x_vel = randi_range(0,3) - randi_range(0,3)
				gold.y_vel = randi_range(2,4) * 1
			
		

		if (sprite_index == "dark_gold_big"):
		
			for i in range(3):
			
				var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_chunk)
				gold.x_vel = randi_range(0,3) - randi_range(0,3)
				gold.y_vel = randi_range(2,4) * 1
			
			var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_nugget)
			gold.x_vel = randi_range(0,3) - randi_range(0,3)
			gold.y_vel = randi_range(2,4) * 1
