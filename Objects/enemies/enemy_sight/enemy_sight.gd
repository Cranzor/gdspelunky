
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    with caveman

#        if (gml.distance_to_object(player1) < 100 and status < 98):
    
#            status = 2
#            Audio.play_sound(global.snd_alert)
    


#    with hawkman

#        if (gml.distance_to_object(player1) < 100 and status < 98):
    
#            status = 2
#            Audio.play_sound(global.snd_alert)
    


    

#func collision with o_solid():
    #    # action_kill_object
#    # Need to implement this action
    

#func create():
    #    owner = 0

    
