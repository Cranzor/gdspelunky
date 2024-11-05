
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (status == sprung):

#        status = idle
#        sprite_index = "spring_trap"


    

#func collision with o_enemy():
    #    if (status == idle and abs(other.position.x-position.x) < 6 and counter = 0 and not other.flying):

#        sprite_index = "spring_trap_sprung"
#        Audio.play_sound(global.snd_boing)
#        status = sprung
#        with other
    
#            position.y -= 16
#            y_vel = -8
#            if (facing == 0): x_vel -= 1
#            else: x_vel += 1
    
#        counter = 10


    

#func collision with o_item():
    #    if (status == idle and abs(other.position.x-(position.x+8)) < 6 and not other.held and counter = 0 and:
#        other.active)

#        sprite_index = "spring_trap_sprung"
#        Audio.play_sound(global.snd_boing)
#        status = sprung
#        with other
    
#            position.y -= 24
#            y_vel = -8
#            if (type == "damsel"):
        
#                if (facing == 18): x_vel -= 1
#                else: x_vel += 1
        
        
    
#        counter = 10


    

#func collision with o_player1():
    #    if (status == idle and abs(other.position.x-(position.x+8)) < 6 and counter = 0):

#        if (other.state <= 13 and other.sprite_index != "p_exit and other.sprite_index != s_damsel_exit):"
    
#            sprite_index = "spring_trap_sprung"
#            Audio.play_sound(global.snd_boing)
#            status = sprung
#            with other
        
#                position.y -= 16
#                y_vel = -16
        
#            counter = 10
    


    

#func create():
    #    idle = 0
#    sprung = 1
#    status = idle
#    counter = 0

    

#func step():
    #    if ((position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]))

#        if (counter > 0): counter -= 1
#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy()
