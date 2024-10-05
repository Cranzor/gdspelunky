extends DrawnSprite

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
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
	if gml.animation_end(self, animated_sprite_node) == true:
		animation_end()
