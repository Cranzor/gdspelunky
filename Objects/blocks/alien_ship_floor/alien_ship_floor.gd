
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code


    

#func destroy():
    #    # action_inherited
#    super()

#    # main_code
#    gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0-8), position.y+8+randi_range(0,8)-randi_range(0-8), Objects.rubble_dark)
#    gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0-8), position.y+8+randi_range(0,8)-randi_range(0-8), Objects.rubble_dark_small)
#    gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0-8), position.y+8+randi_range(0,8)-randi_range(0-8), Objects.rubble_dark_small)
