
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
#    open = false

    

#func step():
    #    if (gml.instance_exists("transition") and not gml.instance_exists("p_dummy")):

#        gml.instance_destroy()

#    elif (gml.instance_exists("p_dummy")):

#        if (p_dummy.sprite_index == "p_exit or p_dummy.sprite_index == s_damsel_exit or p_dummy.sprite_index == s_tunnel_exit):"
    
#            position.x = p_dummy.position.x
#            position.y = p_dummy.position.y+4
#            sprite_index = "cape_back"
#            depth = 0
    
#        else:
    
#            position.x = p_dummy.position.x - 4
#            position.y = p_dummy.position.y - 2
#            if (p_dummy.sprite_index == "run_left or p_dummy.sprite_index == s_damsel_run_l or p_dummy.sprite_index == s_tunnel_run_l): sprite_index = s_cape_right"
#            else: sprite_index = "cape_dr"
#            depth = 100
    

#    elif ((player1.state == 14 or (player1.sprite_index == "p_exit or player1.sprite_index == s_damsel_exit or player1.sprite_index == s_tunnel_exit)) and not player1.whipping):"

#        position.x = player1.position.x
#        position.y = player1.position.y+4
#        sprite_index = "cape_back"
#        depth = 0

#    elif (player1.facing == 19):

#        position.x = player1.position.x - 4
#        position.y = player1.position.y - 2
#        if (cape.open): sprite_index = "cape_ur"
#        elif (abs(player1.x_vel) > 0): sprite_index = "cape_right"
#        else: sprite_index = "cape_dr"
#        depth = 100

#    else:

#        position.x = player1.position.x + 4
#        position.y = player1.position.y - 2
#        if (cape.open): sprite_index = "cape_ul"
#        elif (abs(player1.x_vel) > 0): sprite_index = "cape_left"
#        else: sprite_index = "cape_dl"
#        depth = 100


#    if (gml.instance_exists("player1")):
#        if (not player1.visible): gml.instance_destroy()
