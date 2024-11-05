
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    # action_kill_object
#    # need to implement this action
    

#func collision with o_barrier_emitter():
    #    with other  gml.instance_destroy() 

    

#func collision with o_boulder():
    #    for i in range(0, 3):

#        rubble = gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), Objects.rubble)
#        rubble.sprite_index = "rubble_tan"
#        if (randi_range(1,3) == 1): gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), Objects.rock)

#    for i in range(0, 6):

#        rubble = gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"


#    with other  gml.instance_destroy() 

    

#func collision with o_damsel():
    #    if (not other.invincible):

#        other.hp -= 100
#        if (position.x < other.position.x): other.x_vel = randi_range(4,6)
#        else: other.x_vel = -randi_range(4,6)
#        other.y_vel = -6
#        other.burning = 50
#        other.status = 2


    

#func collision with o_enemy():
    #    if (other.type == "magma man"):

#        with other
    
#            flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
#            flame.y_vel = -randi_range(1,3)
#            flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
#            flame.y_vel = -randi_range(1,3)
#            gml.instance_destroy()
    

#    elif (not other.invincible):

#        other.hp -= 30
#        if (position.x < other.position.x): other.x_vel = randi_range(4,6)
#        else: other.x_vel = -randi_range(4,6)
#        other.y_vel = -6
#        other.burning = 50


    

#func collision with o_item():
    #    if (other.type == "arrow" or other.type == "fish bone" or:
#        other.type == "jar" or other.type == "skull")

#        with other  gml.instance_destroy() 

#    elif (other.type == "bomb"):

#        with other
    
#            sprite_index = "bomb_armed"
#            image_speed = 1
#            alarm_1()randi_range(4,8)
#            enemy_id = 0
    

#        if (other.position.y < position.y): other.y_vel = -randi_range(2,4)
#        if (other.position.x < position.x): other.x_vel = -randi_range(2,4)
#        else: other.x_vel = randi_range(2,4)

#    elif (other.type == "rope"):

#        if (not other.falling):
    
#            if (other.position.y < position.y): other.y_vel -= 6
#            else: other.y_vel += 6
#            if (position.x > other.position.x): other.x_vel -= randi_range(4,6)
#            else: other.x_vel += randi_range(4,6)
    

#    else:

#        if (other.position.y < position.y): other.y_vel -= 6
#        else: other.y_vel += 6
#        if (position.x > other.position.x): other.x_vel -= randi_range(4,6)
#        else: other.x_vel += randi_range(4,6)


#    if (other.held):

#        with player1
    
#            hold_item = 0
#            pickup_item_type = ""
    
#        other.held = false


    

#func collision with o_solid():
    #    if (InLevel.i"level("r_tutorial") or (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:"
#         position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16))

#        with other
    
#            repeat (2)
        
#                tile = tile_layer_find(3, position.x+1, position.y-1)
#                if (tile): tile_delete(tile)
        
#            tile = tile_layer_find(3, position.x+1, position.y+16)
#            if (tile): tile_delete(tile)
    
#            if (not invincible): gml.instance_destroy()
    

#        with treasure
    
#            state = 1
    

#        with spikes
    
#            if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):
        
#                gml.instance_destroy()
        
    

#    # dy: global.check_water = true


    

#func collision with o_web():
    #    with other  gml.instance_destroy() 

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed
#    0.8
#    # main_code
#    Audio.play_sound(global.snd_explosion)
#    InLevel.scr_shake(5)
