extends GMObject


func _ready():
	object_setup()


#--- Object functions
var x_off


func create():
	x_off = -64
	position.x -= 64


func step():
	if (InLevel.is_room("end3")):

		# DY:  do nothing
		pass

	elif (gml.instance_exists("camel")):

		position.x = gml.view("x_view") + x_off
		x_off += 0.02
