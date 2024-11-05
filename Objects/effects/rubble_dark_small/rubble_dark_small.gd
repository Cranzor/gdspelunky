
extends RubblePiece


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func outside room():
	#    # action_kill_object
#    # need to implement this action
