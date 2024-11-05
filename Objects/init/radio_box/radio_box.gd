
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    on = false

#    if (position.y == 24 and global.screen_scale == 1):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 32 and global.screen_scale == 2):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 40 and global.screen_scale == 3):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 48 and global.screen_scale == 4):

#        on = true
#        sprite_index = s_box_marked



    

#func mouse left button pressed():
    #    if (not on):

#        with radibox
    
#            on = false
#            sprite_index = s_box
    

#        on = true
#        sprite_index = s_boxMarked
    
#        if (position.y == 24): global.screen_scale = 1
#        elif (position.y == 32): global.screen_scale = 2
#        elif (position.y == 40): global.screen_scale = 3
#        elif (position.y == 48): global.screen_scale = 4


    
