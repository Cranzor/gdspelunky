
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    clean_death = false
#    treasure = ""

    

#func destroy():
    #    if (not clean_death):

#        if (not global.city_of_gold):
    
#            rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble)
#            rubble.sprite_index = "rubble_lush"
#            rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#            rubble.sprite_index = "rubble_lush_small"
#            rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#            rubble.sprite_index = "rubble_lush_small"
    
#        else:
    
#            for i in range(0, 3):
        
#                gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_chunk)
#                gold.x_vel = randi_range(0,3) - randi_range(0,3)
#                gold.y_vel = randi_range(2,4) * 1
        
#            gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), Objects.gold_nugget)
#            gold.x_vel = randi_range(0,3) - randi_range(0,3)
#            gold.y_vel = randi_range(2,4) * 1
    
#            if (treasure == "Diamond"): for repetition in range(1, 2):  gml.instance_create(position.x+8, position.y+8, Objects.diamond) 
#            if (treasure == "Ruby"): for repetition in range(1, 2):  gml.instance_create(position.x+8, position.y+8, Objects.ruby_big) 
#            if (treasure == "Sapphire"): for repetition in range(1, 2):  gml.instance_create(position.x+8, position.y+8, Objects.sapphire_big) 
#            if (treasure == "Emerald"): for repetition in range(1, 2):  gml.instance_create(position.x+8, position.y+8, Objects.emerald_big) 
    


#    tile = tile_layer_find(99, position.x, position.y)
#    if (tile): tile_delete(tile)
