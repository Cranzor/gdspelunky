
extends Item


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
#    type = "web cannon"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    cost = 2000
#    buy_message = "A web cannon for $" + str\(cost) + "."

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (held):

#        if (player1.facing == 18): sprite_index = "web_cannon_l"
#        else: sprite_index = "web_cannon_r"
