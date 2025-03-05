extends Solid
class_name MoveableSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var y_m_prev #--- used in game_step_event


func create():
	# action_inherited
	super()

	# main_code
	x_vel = 0
	y_vel = 0
	my_grav = 0.6
