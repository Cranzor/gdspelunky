extends DrawnSprite

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
func animation_end():
	#gml.instance_destroy(self) #---
	place_in_queue()

func create():
	drawn_sprite_create()
	y_vel = -0.1
	y_acc = 0.1
	image_speed = 0.4

func step():
	position.y += y_vel

	if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

		#gml.instance_destroy(self) #---
		place_in_queue()

#--- Extra functions
func _on_animated_sprite_2d_frame_changed():
	if gml.animation_end(self) == true:
		animation_end()

#--- added a queueing system to prevent performance issues that come with deleting the object repeatedly
var queued = false
func place_in_queue():
	queued = true
	visible = false

func remove_from_queue():
	queued = false
	visible = true
	$AnimatedSprite2D.frame = 0
