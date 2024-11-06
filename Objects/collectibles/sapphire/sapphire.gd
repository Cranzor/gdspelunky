
extends Treasure


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    can_collect = true

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Sapphire"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -2, -2, 2, 2)
#    y_off = 2
#    alarm_0(20)
#    value = 400
