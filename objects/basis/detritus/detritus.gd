extends DrawnSprite
class_name Detritus

func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	life = 60
	grav = 0.6
	bounce = true
	dying = false
	invincible = false

	if (gml.instance_number("detritus") > 32): gml.instance_destroy(self)


func step():
	if ((position.x < gml.view("xview")-4 or position.x > gml.view("xview")+gml.view("wview")+4 or
		position.y < gml.view("yview")-4 or position.y > gml.view("yview")+gml.view("hview")+4)):

		gml.instance_destroy(self)


	if (life > 0): life -= 1
	else: gml.instance_destroy(self)

	PlatformEngine.move_to(x_vel, y_vel, self)

	if (gml.collision_point(position.x, position.y-4, "lava", 0, 0)):

		gml.instance_destroy(self)


	if (bounce):

		if (y_vel < 6):
	
			y_vel += grav
	
	
		if (Collision.is_collision_top(1, self) and y_vel < 0):
	
			y_vel = -y_vel * 0.8
	
	
		if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
	
			x_vel = -x_vel * 0.5
	
	
		if (Collision.is_collision_bottom(1, self)):
	
			# DY:  bounce
			if (y_vel > 1): y_vel = -y_vel * 0.5
			else: y_vel = 0
