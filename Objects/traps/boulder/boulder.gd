
extends MovingSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_solid():
    #    if (true):
   
#        if (other.invincible or abs(x_vel) < 1):
    
#            x_vel = -x_vel * 0.5
    
#        else:
    
#            if (abs(x_vel) < 1 or other.position.y > position.y+13):
        
#                position.y -= 1
#                # DY:  nothing
        
#            else:
        
#                with other
            
#                    tile = tile_layer_find(3, position.x, position.y-16)
#                    if (tile): tile_delete(tile)
#                    tile = instance_position(position.x+8, position.y-1, spikes)
#                    if (tile): with tile  gml.instance_destroy() 
#                    gml.instance_destroy()
            
#                Audio.play_sound(global.snd_crunch)
        
#            if (x_vel > 0): x_vel -= 0.1
#            elif (x_vel < 0): x_vel += 0.1
#            if (abs(x_vel) < 1): x_vel = 0
    



    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -14, -16, 14, 16)
#    my_grav = 0.6
#    dir = 0
#    LEFT = 100
#    RIGHT = 101
#    invincible = true
#    bounced = false
#    viscid_top = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (true):

#        col_left = false
#        col_right = false
#        PlatformEngine.move_to(x_vel, y_vel)
#        # DY: position.x += x_vel
#        # DY: position.y += y_vel
    
#        if (y_vel < 8):
    
#            y_vel += my_grav
    

#        if (position.x-17 <= 16 and x_vel < 0):
    
#            position.x += 1
#            x_vel = -x_vel
    
    
#        if (position.x+17 >= 656 and x_vel > 0):
    
#            position.x -= 1
#            x_vel = -x_vel
    
    
#        if (Collision.i"collision_top(1) and y_vel < 0):"
    
#            y_vel = -y_vel * 0.8
    
    
#        if (Collision.i"collision_bottom(1)):"
    
#            # DY:  bounce
#            if (y_vel > 3): y_vel = -y_vel * 0.3
#            else: y_vel = 0
        
#            # DY:  friction
#            if (abs(x_vel) != 0): x_vel *= 0.99
        
#            if (not bounced and x_vel == 0):
        
#                if (player1.position.x < position.x):
            
#                    x_vel = -4.5
            
#                else:
            
#                    x_vel = 4.5
            
#                bounced = true
        
        
#            if (abs(x_vel) < 0.5): x_vel = 0
    
    
#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):
    
#            col_left = gml.collision_rectangle(position.x-16, position.y-16, position.x-8,  position.y+16, "solid", false, true)
#            col_right = gml.collision_rectangle(position.x+8, position.y-16, position.x+16,  position.y+16, "solid", false, true)
#            if (col_left and not col_right): position.x += 1
#            elif (col_right and not col_left): position.x -= 1
    
    
#        image_speed = abs(x_vel) / 5
    
#        if (x_vel < 0):
    
#            sprite_index = "boulder_rotate_l"
    
#        elif (x_vel > 0):
    
#            sprite_index = "boulder_rotate_r"
    
#        else:
    
#            sprite_index = "boulder"
    

#        /*
#        if (x_vel == 0 and y_vel == 0):
    
#            gml.instance_create(position.x, position.y, Objects.boulder_static)
#            gml.instance_destroy()
    
#        */
