extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var death_timer


func create():
	# action_inherited
	super()

	# main_code
	dying = false
	death_timer = 0


func destroy():
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble)
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
		rubble.sprite_index = "rubble_tan_small"
		if (dying):
	
			Audio.play_sound(global.snd_thump)
			InLevel.scr_shake(10)


func step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function

	# main_code
	if (dying):

		if (death_timer > 0): death_timer -= 1
		else: gml.instance_destroy(self)
