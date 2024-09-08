extends Item

var fall_count

var rope_top = preload("res://objects/items/rope_top/rope_top.tscn")
var rope = preload("res://objects/items/rope/rope.tscn")

func initial_setup():
	#--- set size
	object_size = Vector2(8, 8)

	#--- set depth
	depth = -100
	z_index = depth
	
	$Node/AnimatedSprite2D.play("rope_end")

func _ready():
	initial_setup()
	create()

func _process(delta):
	smooth_animated_sprite_movement(x_velocity, y_velocity)

func _physics_process(delta):
	step()

func create():
	item_create()
	
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
		
		gml.instance_create(position.x, position.y, rope_top)
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
		
		else: gml.instance_create(position.x-8, position.y, rope)
