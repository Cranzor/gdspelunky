
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    olmec_dead = false
#    door_open = false

    

#func step():
    #    # DY: if (not olmec_dead and not door_open):
#    if (olmec_dead and not door_open):

#        door_open = true
#        obj = gml.instance_place(640, 544, entrance)
#        with obj  gml.instance_destroy() 
#        gml.instance_create(640, 544, "x_end")
#        if (not gml.collision_point(640, 560, "solid", 0, 0)):
    
#            brick = gml.instance_create(640, 560, "temple")
#            with brick  invincible = true 
    
#        else:
    
#            brick = instance_position(640, 560, solid)
#            with brick  invincible = true 
    
#        Audio.play_sound(global.snd_thump)


    
