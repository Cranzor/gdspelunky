
extends WhipPre


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Mattock"
#    damage = 2

    

#func step():
    #    if (not gml.instance_exists("player1")):

#        gml.instance_destroy()

#    elif (sprite_index = s_mattock_pre_r):

#        position.x = player1.position.x-16
#        position.y = player1.position.y

#    elif (sprite_index = s_mattock_pre_l):

#        position.x = player1.position.x+16
#        position.y = player1.position.y



    
