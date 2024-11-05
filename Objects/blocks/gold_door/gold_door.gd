
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_sceptre():
    #    if (other.held):

#        if (global.ha"crown):"
    
#            other.held = false
#            with player1
        
#                hold_item = 0
#                pickup_item_type = ""
        
#            with other  gml.instance_destroy() 
    
#            Audio.play_sound(global.snd_chest_open)
#            gml.instance_create(position.x, position.y, Objects.x_gold)
#            gml.instance_destroy()
    
#        else:
    
#            global.message = "the sceptre fits..."
#            global.message2 = "but nothing is happening!"
#            global.message_timer = 100
