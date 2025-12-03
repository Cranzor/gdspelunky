extends Solid


func _ready():
	object_setup()


#--- Object functions


func create():
	y_vel = 0
	
	
func step():
	position.y += y_vel
