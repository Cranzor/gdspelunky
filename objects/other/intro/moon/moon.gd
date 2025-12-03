extends DrawnSprite #--- no parent, but adding DrawnSprite to get smooth movement function

func _ready():
	object_setup()


#--- Object functions
var x_off
@onready var last_position = position.x


func create():
	x_off = 0

func step():
	if (InLevel.is_room("credits1") and gml.instance_exists("camel")):
		position.x += 0.01
		
	elif (gml.view('xview') != 0):
		x_off -= 0.01

	position.x = gml.view('xview') + 208 + x_off
