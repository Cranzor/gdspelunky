
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
#    type = "udjat eye"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -6, 6, 6)

#    cost = 0
#    buy_message = "I shouldn'T be selling this!"
