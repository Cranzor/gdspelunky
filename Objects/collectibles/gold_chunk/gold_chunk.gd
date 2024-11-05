
extends Treasure


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
#    type = "gold chunk"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-2, -2, 2, 2)
#    y_off = 2
#    value = 100
#    can_collect = true
