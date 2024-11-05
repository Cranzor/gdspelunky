
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    get_tree().change_scene_to_file("res://r_end2.tscn")

    

#func create():
    #    y_vel = 0
#    y_acc = 0
#    status = 0

    

#func step():
    #    position.y += y_vel
#    if (y_vel > -6): y_vel += y_acc

#    if (gml.collision_point(position.x, position.y-1, "end_plat", 0, 0)):

#        end_plat.y_vel = y_vel
#        p_dummy.y_vel = y_vel
#        big_treasure.y_vel = y_vel
#        big_treasure.my_grav = 0


#    if (position.y < -16 and status == 0):

#        y_vel = 0
#        y_acc = 0
#        alarm_0(40)
#        status += 1


#    if (not SS.is_sound_playing(global.snd_flame)): Audio.play_sound(global.snd_flame)

    
