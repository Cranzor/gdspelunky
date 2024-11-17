extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm_2():
#    safe = false

	

#func create():
#    # action_inherited
#    super()

#    # main_code
#    type = "fish bone"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -4, -4, 4, 4)
#    my_grav = 0.2
#    safe = false


#func step():
#    # action_inherited
#    super()

#    # main_code
#    if (x_vel > 0 and y_vel < 0):

#        direction = radtodeg(arctan(-y_vel/x_vel))
#        # DY:  direction = 45

#    elif (x_vel < 0 and y_vel < 0):

#        direction = 180 - radtodeg(arctan(-y_vel/-x_vel))


#    elif (x_vel > 0 and y_vel > 0):

#        direction = radtodeg(arctan(y_vel/x_vel))


#    elif (x_vel < 0 and y_vel > 0):

#        direction = 180 + radtodeg(arctan(y_vel/-x_vel))

#    elif (x_vel < 0): direction = 180
#    else: direction = 0

#    image_angle = direction
