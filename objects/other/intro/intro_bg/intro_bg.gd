extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
var x_off

func create():
	x_off = 0

func step():
	if (InLevel.is_room("credits1") and gml.instance_exists("camel")):
		position.x += 0.02

	elif (gml.view("xview") != 0):
		x_off -= 0.02

	position.x = gml.view("xview") + x_off
