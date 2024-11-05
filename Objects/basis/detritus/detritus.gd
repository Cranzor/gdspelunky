
extends DrawnSprite


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
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    life = 60
#    grav = 0.6
#    bounce = true
#    dying = false
#    invincible = false

#    if (gml.instance_number(detritus) > 32): gml.instance_destroy()

	

#func step():
	#    if ((position.x < view_xview[0]-4 or position.x > view_xview[0]+view_wview[0]+4 or:
#            position.y < view_yview[0]-4 or position.y > view_yview[0]+view_hview[0]+4))

#        gml.instance_destroy()


#    if (life > 0): life -= 1
#    else: gml.instance_destroy()

#    PlatformEngine.move_to(x_vel, y_vel)

#    if (gml.collision_point(position.x, position.y-4, "lava", 0, 0)):

#        gml.instance_destroy()


#    if (bounce):

#        if (y_vel < 6):
	
#            y_vel += grav
	
	
#        if (Collision.is_collision_top(1) and y_vel < 0):
	
#            y_vel = -y_vel * 0.8
	
	
#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
	
#            x_vel = -x_vel * 0.5
	
	
#        if (Collision.is_collision_bottom(1)):
	
#            # DY:  bounce
#            if (y_vel > 1): y_vel = -y_vel * 0.5
#            else: y_vel = 0
	


	
