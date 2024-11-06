
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_bullet():
    #    with other

#        gml.instance_create(position.x, position.y, Objects.smoke_puff)
#        Audio.play_sound(global.snd_hit)
#        gml.instance_destroy()


    

#func collision with o_character():
    #    if (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        other.y_vel = -2
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0): global.plife -= 1
#        Audio.play_sound(global.snd_hurt)



    

#func collision with o_item():
    #    if (other.type == "Bomb"):

#        with other
    
#            sprite_index = "bomb_armed"
#            image_speed = 1
#            alarm_1()randi_range(4,8)
    


#    other.x_vel = -randi_range(4,6)
#    other.y_vel = -2

#    if (other.held):

#        if (character): character.hold_item = 0


    

#func collision with o_web_ball():
    #    with other

#        gml.instance_destroy()
