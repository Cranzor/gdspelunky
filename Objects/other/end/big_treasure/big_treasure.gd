
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    type = "Big Treasure"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(0, 0, 32, 32)
#    x_vel = 0
#    y_vel = 0
#    my_grav = 0.6
#    trigger = true

    

#func step():
    #    if (true):

#        position.x += x_vel
#        position.y += y_vel

#        if (y_vel < 6):
    
#            y_vel += my_grav
    
    
#        if (Collision.is_collision_top(1) and y_vel < 0):
    
#            y_vel = -y_vel * 0.8
    
    
#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            x_vel = -x_vel * 0.5
    
    
#        if (Collision.is_collision_bottom(1)):
    
#            if (y_vel > 5):
        
#                poof = gml.instance_create(position.x+16-4, position.y+30, "poof")
#                with poof  x_vel = -0.4 
#                poof = gml.instance_create(position.x+16+4, position.y+30, "poof")
#                with poof  x_vel = 0.4 
#                Audio.play_sound(global.snd_thump)
        
    
#            # DY:  bounce
#            if (y_vel > 1): y_vel = -y_vel * 0.5
#            else:
        
#                y_vel = 0
        
        
#            # DY:  friction
#            if (abs(x_vel) < 0.1): x_vel = 0
#            elif (abs(x_vel) != 0): x_vel *= 0.3
    
    
#        if (Collision.is_collision_bottom(0) and abs(y_vel) < 1):
    
#            position.y -= 1
#            y_vel = 0
    


    
