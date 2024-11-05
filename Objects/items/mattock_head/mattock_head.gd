
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
#    type = "Mattock Head"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -4, 6, 4)

    
