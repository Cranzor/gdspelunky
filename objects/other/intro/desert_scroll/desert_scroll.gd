extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var scroll

@onready var in_level: InLevel = InLevel.new()

func create():
	# action_inherited
	super()

	# main_code
	scroll = false

	if (in_level.is_room("credits1")): sprite_index = "desert_night"


func step():
	if (scroll): position.x += 1

	if (position.x > 320): gml.instance_destroy(self)
