
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    pushed = false

    

#func step():
    #    if (gml.collision_rectangle(position.x+2, position.y+11, position.x+13,  position.y+15, "solid", 0, 0)):

#        if (not pushed):
    
#            counter = 20
#            Audio.play_sound(global.snd_click)
    
#        pushed = true

#    else: pushed = false

#    if (pushed):

#        if (counter > 0): counter -= 1
#        if (counter == 1):
    
#            scr_reset_highscores()
#            global.shake = 60
#            Audio.play_sound(global.snd_thump)
    
#        with trophy  gml.instance_destroy() 
#        with x_sun  gml.instance_destroy() 
#        with x_moon  gml.instance_destroy() 
#        with x_stars  gml.instance_destroy() 
#        with x_change  gml.instance_destroy() 
#        sprite_index = s_button_pushed
    
#        highscores.t_money = 0
#        highscores.t_time = 0
#        highscores.t_kills = 0
#        highscores.t_saves = 0

#    else: sprite_index = s_button

    
