
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_bullet():
    #    gml.instance_destroy(self)

    

#func collision with o_item():
    #    if (abs(other.x_vel) > 2 or abs(other.y_vel) > 2):

#        gml.instance_destroy(self)


    

#func create():
    #    image_speed = 0.5
#    if (not gml.instance_exists("barrier")):

#        gml.instance_create(position.x, position.y+16, Objects.barrier)


    

#func destroy():
    #    for repetition in range(1, 6):

#        obj = gml.instance_create(position.x+2+randi_range(0,14), position.y+2+randi_range(0,14), Objects.flare_spark)
#        obj.y_vel = randi_range(1,3)

#    InLevel.scr_shake(10)
#    Audio.play_sound(global.snd_small_explode)
#    with barrier

#        gml.instance_destroy(self)


    

#func step():
    #    if ((position.x > gml.view("xview")-8 and position.x < gml.view("xview") + gml.view("wview")+8 and:
#            position.y > gml.view("yview")-8 and position.y < gml.view("yview") + gml.view("hview")+8))

#        if (not gml.collision_point(position.x, position.y-16, "solid", 0, 0)): gml.instance_destroy(self)
