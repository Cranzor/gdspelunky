extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(8, 8)

	#--- set depth
	depth = -1
	z_index = depth
	
	$Node/AnimatedSprite2D.play("poof")

func _ready():
	initial_setup()
	create()

func _process(delta):
	smooth_animated_sprite_movement(x_velocity, y_velocity, delta)

func _physics_process(delta):
	step()

func animation_end():
	gml.instance_destroy(self)

func create():
	drawn_sprite_create()
	x_vel = 0
	y_vel = 0
	image_speed = 0.4

func step():
	smooth_motion_step_begin()
	
	position.x += x_vel
	position.y += y_vel

	smooth_motion_step_end()
	
func _on_animated_sprite_2d_frame_changed():
	if gml.animation_end(self) == true:
		animation_end()
