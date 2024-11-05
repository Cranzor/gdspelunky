
extends Whip


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    hit = false
#    if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

#        obj = gml.instance_place(position.x, position.y, solid)
#        if (not obj.invincible): hit = true

#    elif (gml.collision_point(position.x, position.y+9, "solid", 0, 0)):

#        obj = gml.instance_place(position.x, position.y+9, solid)
#        if (not obj.invincible): hit = true


#    if (hit and not InLevel.i"room("r_title") and not InLevel.is_room("r_highscores")):"

#        with obj
      
#            tile = tile_layer_find(3, position.x, position.y-16)
#            if (tile): tile_delete(tile)
#            tile = tile_layer_find(3, position.x, position.y+16)
#            if (tile): tile_delete(tile)
        
#            if (not invincible): gml.instance_destroy()
    

#        with treasure
    
#            state = 1
    

#        with spikes
    
#            if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):
        
#                gml.instance_destroy()
        
    
    
#        # dy: 
#    break mattock
#        if (randi_range(1,20) == 1 and not global.i"tunnel_man):"
    
#            with player1
        
#                hold_item = 0
#                pickup_item_type = ""
#                global.pickup_item = ""
        
#            obj = gml.instance_create(position.x, position.y, Objects.mattock_head)
#            obj.y_vel = -2
#            Audio.play_sound(global.snd_mattock_break)
#            with mattock
        
#                if (not visible): gml.instance_destroy()
        
    
#        else:
#            Audio.play_sound(global.snd_crunch)


#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "mattock"
#    image_speed = 0.5
#    damage = 2
#    puncture = true

    

#func step():
    #    if (gml.instance_number(character) == 0):

#        gml.instance_destroy()

#    if (sprite_index = "mattock_hit_r):"

#        position.x = character.position.x+16
#        position.y = character.position.y

#    elif (sprite_index = "mattock_hit_l):"

#        position.x = character.position.x-16
#        position.y = character.position.y
