extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var olmec_dead
var door_open


func create():
	olmec_dead = false
	door_open = false


func step():
	# DY: if (not olmec_dead and not door_open):
	if (olmec_dead and not door_open):

		door_open = true
		var obj = gml.instance_place(640, 544, "entrance", self) #---[FLAG] don't see how this works when final_boss has no sprite/collision?
		gml.instance_destroy(obj)
		gml.instance_create(640, 544, Objects.x_end, self)
		if (not gml.collision_point(640, 560, "solid", 0, 0)):
	
			var brick = gml.instance_create(640, 560, Objects.temple, self)
			brick.invincible = true
	
		else:
	
			var brick = gml.instance_position(640, 560, "solid")
			brick.invincible = true
	
		Audio.play_sound(global.snd_thump)
