extends Solid
class_name MovingSolid

func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var WAIT
var RETURN


func create():
	# action_inherited
	super()

	# main_code
	invincible = false
