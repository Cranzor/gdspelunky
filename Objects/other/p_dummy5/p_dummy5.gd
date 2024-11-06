
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    # DY:  dummy actor for title

#    image_speed = 0.6
#    if (global.i"damsel): sprite_index = s_damsel_climb2"
#    if (global.i"tunnel_man): sprite_index = s_tunnel_climb2"
#    else: sprite_index = "climb_up2"
#    status = 0

#    x_vel = 0
#    y_vel = -1

    

#func step():
    #    position.x += x_vel
#    position.y += y_vel

#    if (position.y < -32):

#        title.fade_out = true
#        # DY: get_tree().change_scene_to_file("res://r_credits1.tscn")
