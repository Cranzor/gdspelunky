extends Item

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
var fall_count

func create():
	super()
	
	type = "rope"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	armed = false
	falling = false
	fall_count = 0
	px = 0
	py = 0

func step():
	item_step()
	
	x_velocity = 0
	y_velocity = 0
	
	if (armed and y_vel >= 0):

		gml.move_snap(16, 1, self)
		if (px < position.x):
		
			if (not gml.collision_point(position.x-8, position.y, "solid", 0, 0)): position.x -= 8
			else:
				position.x += 8
				x_velocity = 8
		
		else:
		
			if (not gml.collision_point(position.x+8, position.y, "solid", 0, 0)): position.x += 8
			else:
				position.x -= 8
				x_velocity = -8
		
		gml.instance_create(position.x, position.y, Objects.rope_top)
		armed = false
		falling = true
		x_vel = 0
		y_vel = 0


	if (falling):

		x_vel = 0
		y_vel = 0
		position.y += 8
		y_velocity = 8
		fall_count += 1
		if (Collision.is_collision_bottom(1, self) or fall_count > 16):
		
			falling = false
			position.y -= 8
			y_velocity = -8
			gml.instance_destroy(self)
		
		else: gml.instance_create(position.x-8, position.y, Objects.rope)
