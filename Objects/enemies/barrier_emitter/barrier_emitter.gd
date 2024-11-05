
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_bullet():
    #    gml.instance_destroy()

    

#func collision with o_item():
    #    if (abs(other.x_vel) > 2 or abs(other.y_vel) > 2):

#        gml.instance_destroy()


    

#func create():
    #    image_speed = 0.5
#    if (not gml.instance_exists("barrier")):

#        gml.instance_create(position.x, position.y+16, "barrier")


    

#func destroy():
    #    for repetition in range(1, 6):

#        obj = gml.instance_create(position.x+2+randi_range(0,14), position.y+2+randi_range(0,14), "flare_spark")
#        obj.y_vel = randi_range(1,3)

#    InLevel.scr_shake(10)
#    Audio.play_sound(global.snd_small_explode)
#    with barrier

#        gml.instance_destroy()


    

#func step():
    #    if ((position.x > view_xview[0]-8 and position.x < view_xview[0] + view_wview[0]+8 and:
#            position.y > view_yview[0]-8 and position.y < view_yview[0] + view_hview[0]+8))

#        if (not gml.collision_point(position.x, position.y-16, "solid", 0, 0)): gml.instance_destroy()


    
