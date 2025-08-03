extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var x_off

@onready var in_level: InLevel = InLevel.new()


func create():
	x_off = -64
	position.x -= 64


func step():
	if (in_level.is_room("end3")):

		# DY:  do nothing
		pass

	elif (gml.instance_exists("camel")):

		position.x = gml.view("x_view") + x_off
		x_off += 0.02
