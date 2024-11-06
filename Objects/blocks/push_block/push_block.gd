
extends MoveableSolid


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
#    invincible = false
#    Collision.set_collision_bounds(self, 0, 0, 16, 16)
#    if (global.city_of_gold): sprite_index = "gold_block"
#    clean_death = false

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

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
    


    

#func outside room():
    #    gml.instance_destroy()

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (gml.collision_point(position.x+8, position.y+14, "lava", 0, 0) and not gml.collision_point(position.x+8, position.y+17, "solid", 0, 0)):

#        y_vel = 0
#        my_grav = 0
#        scr_moveable_solid_recurse_drop()
#        position.y += 0.05
