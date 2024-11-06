
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
#    type = "Machete"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -4, -4, 4, 4)
#    cost = 7000
#    buy_message = "A MACHETE FOR $" + str(cost) + "."

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (held):

#        if (player1.facing == 18): sprite_index = "machete_left"
#        else: sprite_index = "machete_right"
