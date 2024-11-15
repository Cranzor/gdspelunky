
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_boulder():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func collision with o_character():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0 or:
#             (player1.sprite_index = "duck_thang_l" and player1.image_index > 6) or
#             (player1.sprite_index = "damsel_dt_hl" and player1.image_index > 6) or
#             (player1.sprite_index = "tunnel_dt_hl" and player1.image_index > 6))

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func collision with o_enemy():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func collision with o_item():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func collision with o_moveable_solid():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func collision with o_treasure():
    #    if (trap_id == 0):

#        gml.instance_destroy(self)

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy(self)


    

#func create():
    #    trap_id = 0
