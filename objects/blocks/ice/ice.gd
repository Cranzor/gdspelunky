extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	if (randi_range(1,80) == 1): gml.instance_create(position.x, position.y, Objects.frozen_caveman)
	# DY:  elif (randi_range(1,800) == 1): scr_generate_item(position.x+8, position.y+8, 2)


func destroy():
	if (not clean_death and not global.clean_solids):

		for repetition in range(3):
	
			gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), Objects.drip)
	

		if (gml.collision_point(position.x+8, position.y+8, "frozen_caveman", 0, false)):
	
			var frozen_caveman_instance = gml.instance_place(position.x+8, position.y+8, "frozen_caveman", self)
			gml.instance_destroy(frozen_caveman_instance)
