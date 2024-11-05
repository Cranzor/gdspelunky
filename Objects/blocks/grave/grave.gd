
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
#    n = randi_range(1,5)
#    match (n)

#        1:  sprite_index = s_grave2  
#        2:  sprite_index = s_grave3  
#        3:  sprite_index = s_grave4  
#        4:  sprite_index = s_grave5  
#        5:  sprite_index = s_grave6  


    

#func destroy():
    #    rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
#    rubble.sprite_index = s_rubble_tan
#    rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#    rubble.sprite_index = s_rubble_tanSmall
#    rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#    rubble.sprite_index = s_rubble_tanSmall

    

#func step():
    #    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy()


    
