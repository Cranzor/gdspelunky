extends Solid

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
func create():
	solid_create()
	
	var n = randi_range(1,10)

	if (n == 1): sprite_index = "brick2"

	n = randi_range(1,100)
	if (n < 20): sprite_index = "brick_gold"
	elif (n < 30): sprite_index = "brick_gold_big"
	elif (InLevel.is_level() and position.x > 1 and position.x < gml.room_width()-16 and position.y > 1 and position.y < gml.room_height()-16):

		if (randi_range(1,100) == 1): gml.instance_create(position.x+8, position.y+8, "sapphire_big")
		elif (randi_range(1,120) == 1): gml.instance_create(position.x+8, position.y+8, "emerald_big")
		elif (randi_range(1,140) == 1): gml.instance_create(position.x+8, position.y+8, "ruby_big")
		elif (randi_range(1,1200) == 1):
			var level_generation = LevelGeneration.new()
			level_generation.scr_generate_item(position.x+8, position.y+8, 2)

func destroy():
	solid_destroy()
	
	if (not clean_death and not global.clean_solids):

		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")

		if (sprite_index == "brick_gold"):
		
			for i in range(3):
			
				var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_chunk")
				gold.x_vel = randi_range(0,3) - randi_range(0,3)
				gold.y_vel = randi_range(2,4) * 1
			
		
		if (sprite_index == "brick_gold_big"):
		
			for i in range(3):
			
				var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_chunk")
				gold.x_vel = randi_range(0,3) - randi_range(0,3)
				gold.y_vel = randi_range(2,4) * 1
			
			var gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_nugget")
			gold.x_vel = randi_range(0,3) - randi_range(0,3)
			gold.y_vel = randi_range(2,4) * 1
