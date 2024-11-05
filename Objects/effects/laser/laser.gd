
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(position.x, position.y, "laser_trail")
#    alarm_0(1)

    

#func collision with o_damsel():
    #    if (not other.invincible):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        status = 2

#        gml.instance_create(position.x, position.y, "laser_explode")
#        gml.instance_destroy()



    

#func collision with o_enemy():
    #    if (other.type != "UFO" and other.invincible == 0):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        gml.instance_create(position.x, position.y, "laser_explode")
#        # DY:  global.check_water = true
#        gml.instance_destroy()


    

#func collision with o_solid():
    #    with other

#        if (not invincible):
    
#            if (gml.collision_point(position.x, position.y, "gold", 0, 0)):
        
#                gold = gml.instance_place(position.x, position.y, gold)
#                with gold  gml.instance_destroy() 
        
#            if (gml.collision_point(position.x, position.y, "goldBig", 0, 0)):
        
#                gold = gml.instance_place(position.x, position.y, goldBig)
#                with gold  gml.instance_destroy() 
        
#            gml.instance_destroy()
    
    
#        tile = tile_layer_find(3, position.x, position.y-16)
#        if (tile): tile_delete(tile)


#    gml.instance_create(position.x, position.y, "laser_explode")
#    # DY:  global.check_water = true
#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = 0
#    y_acc = 0.6
#    alarm_0(1)

    

#func outside room():
    #    # action_kill_object
#    # Need to implement this action
    

#func step():
    #    position.y += y_vel
#    y_vel += y_acc
#    if (y_vel > 4): y_vel = 0

#    /*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
#        gml.collision_point(position.x, position.y, "darkFall", 0, 0) or
#        gml.collision_point(position.x, position.y, "ice", 0, 0))

#        gml.instance_destroy()
#    */

    
