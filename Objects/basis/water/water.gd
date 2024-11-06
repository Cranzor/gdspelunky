extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions

var checked #---  used in level object as well, but will declare here as they do not have a shared parent

func create():
	# action_inherited
	super()

	# main_code
	type = "water"
	checked = false
