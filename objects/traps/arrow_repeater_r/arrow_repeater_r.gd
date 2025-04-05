extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	var arrow = gml.instance_create(position.x+16, position.y+4, Objects.arrow)
	arrow.x_vel = 5


func alarm_1():
	x_act = position.x+16
	while (not gml.collision_point(x_act, position.y+8, "solid", 0, 0)):

		if (x_act - position.x > 96):
			break
		x_act += 1

	x_act -= (position.x+8)


func create():
	# action_inherited
	super()

	# main_code
	type = "arrow trap"
	fired = 100+gml.random(100) #---[FLAG] changed from "rand" to "random" since it appears it was meant to be this (check later)
	invincible = false
	x_act = 0 # DY:  activate distance
	# DY: alarm_0(50)
	# DY: alarm_1(1)


func destroy():
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble)
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small)
		rubble.sprite_index = "rubble_tan_small"


func step():
	firing = false
	var player1 = gml.get_instance("player1") #---[FLAG] may need to update this for multiplayer
	if (fired > 0): fired -= 1
	elif (not player1.dead):
	
		var arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
		arrow.x_vel = 8
		fired = gml.rand(100,200)
		Audio.play_sound(global.snd_arrow_trap)
