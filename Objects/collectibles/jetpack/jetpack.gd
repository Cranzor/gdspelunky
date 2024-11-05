
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
#    type = "Jetpack"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-5, -5, 5, 8)

#    cost = 20000
#    buy_message = "JETPACK FOR $" + str\(cost) + "."
#    heavy = true

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (gml.instance_exists("player1")):
#        if (not player1.visible): gml.instance_destroy()

    
