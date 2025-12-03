extends Shopkeeper


func _ready():
	object_setup()


#--- Object functions
var death_timer


func create():
	# action_inherited
	super()

	# main_code
	status = ATTACK
	has_gun = false
	death_timer = 200


func step():
	# action_inherited
	super()

	# main_code
	if (status == DEAD):

		if (death_timer > 0): death_timer -= 1
		else:
	
			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
			gml.instance_destroy(self)
