extends Solid
class_name MovingSolid

var xv
var yv
var xa
var ya
@onready var unique_id = str(get_instance_id()) #--- for Collision.is_collision_character_*() functions

func _ready():
	object_setup()


#--- Object functions
var WAIT
var RETURN
var break_now: int #--- used in game script


func create():
	add_to_group(unique_id) #--- for Collision.is_collision_character_*() functions
	# action_inherited
	super()

	# main_code
	invincible = false
