
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    x_vel = -6
#    y_vel = -8
#    my_grav = 0.6

    

#func step():
    #    if (true):

#        position.x += x_vel
#        position.y += y_vel

#        if (x_vel < 0): x_vel += 0.1
    
#        if (y_vel < 6):
    
#            y_vel += my_grav
    
    
#        if (position.y > 240):
#            get_tree().change_scene_to_file("res://r_end3.tscn")


    
