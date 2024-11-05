
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
#    type = "mattock"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -6, 4, 6)
#    cost = 8000
#    buy_message = "A mattock for $" + str\(cost) + "."

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (held):

#        if (player1.facing == 18): sprite_index = "mattock_left"
#        else: sprite_index = "mattock_right"
