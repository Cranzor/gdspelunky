extends Solid


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "tree"
	burning = false

	
#--- has a step function with no code
#func step():
