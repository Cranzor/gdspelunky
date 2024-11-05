
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

    

#func collision with o_ghost():
    #    gml.instance_create(position.x, position.y, Objects.diamond)
#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "big emerald"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    can_collect = false
#    alarm_0(20)
#    value = 800
