extends DrawnSprite #--- no parent, but adding DrawnSprite to get smooth movement function

var x_off

@onready var last_position = position.x

func initial_setup():
	#--- set size
	object_size = Vector2(96, 96)

func _ready():	
	object_setup(self)
	
	initial_setup()
	x_off = 0
	
func _physics_process(delta):
	object_tick(self)
	
	if (InLevel.is_room("credits1") and gml.instance_exists("camel")):
		position.x += 0.01
		x_velocity = 0.01
		
	elif (gml.view('xview') != 0):
		x_off -= 0.01

	position.x = gml.view('xview') + 208 + x_off
	x_velocity = position.x - last_position
	last_position = position.x

func _process(delta):
	object_process(self)
	
	smooth_animated_sprite_movement(x_velocity, y_velocity, delta)
