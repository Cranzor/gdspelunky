extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(4, 4)

	#--- set depth
	depth = -150
	z_index = depth
	
	$AnimatedSprite2D.play("flare_spark")
	#drawn_sprite_create()
	#drawn_sprite_step()

func _ready():
	initial_setup()
	create()

func _physics_process(delta):
	pass
	step()

func animation_end():
	gml.instance_destroy(self)

func create():
	drawn_sprite_create()
	y_vel = -0.1
	y_acc = 0.1
	image_speed = 0.4


func step():
	position.y += y_vel

	if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

		gml.instance_destroy(self)

func _on_animated_sprite_2d_animation_finished():
	animation_end()
