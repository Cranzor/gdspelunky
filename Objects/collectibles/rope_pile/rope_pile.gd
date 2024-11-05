
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
#    type = "rope pile"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -5, 6, 5)

#    cost = 2500
#    buy_message = "extra rope for $" + str\(cost) + "."
