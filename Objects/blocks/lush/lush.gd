
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

#    n = randi_range(1,100)

#    if (n < 20): sprite_index = s_lush_gold
#    elif (n < 30): sprite_index = s_lush_goldBig
#    elif (InLevel.is_level() and position.x > 1 and position.x < room_width-16 and position.y > 1 and position.y < room_height-16):

#        if (randi_range(1,80) == 1): gml.instance_create(position.x+8, position.y+8, "sapphire_big")
#        elif (randi_range(1,100) == 1): gml.instance_create(position.x+8, position.y+8, "emerald_big")
#        elif (randi_range(1,120) == 1): gml.instance_create(position.x+8, position.y+8, "ruby_big")
#        elif (randi_range(1,1200) == 1): scr_generate_item(position.x+8, position.y+8, 2)


    

#func destroy():
    #    # action_inherited
#    super()

#    # main_code
#    if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
#        rubble.sprite_index = s_rubble_lush
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_lushSmall
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_lushSmall

#        if (sprite_index == s_lush_gold):
    
#            for i in range(0, 3):
        
#                gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_chunk")
#                gold.x_vel = randi_range(0,3) - randi_range(0,3)
#                gold.y_vel = randi_range(2,4) * 1
        
    
    
#        if (sprite_index == s_lush_goldBig):
    
#            for i in range(0, 3):
        
#                gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_chunk")
#                gold.x_vel = randi_range(0,3) - randi_range(0,3)
#                gold.y_vel = randi_range(2,4) * 1
        
#            gold = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,4)-randi_range(0,4), "gold_nugget")
#            gold.x_vel = randi_range(0,3) - randi_range(0,3)
#            gold.y_vel = randi_range(2,4) * 1
    


    
