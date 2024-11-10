
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    # action_kill_object
#    gml.instance_destroy(self)
    

#func collision with o_solid():
    #    with other

#        clean_death = false
#        tile = tile_layer_find(3, position.x, position.y-16)
#        if (tile): tile_delete(tile)
#        gml.instance_destroy()


    

#func create():
    #    alarm_0(1)
#    Audio.play_sound(global.snd_slam)
