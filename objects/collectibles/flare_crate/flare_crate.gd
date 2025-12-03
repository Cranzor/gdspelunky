extends Item


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y-4+randi_range(0,3)-randi_range(0,3), Objects.flare_spark, self)
	alarm_0_countdown.start(2)


func create():
	# action_inherited
	super()

	# main_code
	type = "flare crate"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, 0, 6, 8)

	image_speed = 0.2
	alarm_0_countdown.start(1)
	heavy = true

	y_vel = 0
	y_acc = 0.2


func step():
	# action_inherited
	super()

	# main_code
	if (gml.collision_point(position.x, position.y, "water", -1, -1)):

		gml.instance_create(position.x, position.y, Objects.splash, self)
		Audio.play_sound(global.snd_splash)
		if (held):
			var player1 = gml.get_instance("player1") #---[FLAG] may need to adjust for multiplayer
			player1.hold_item = null
			player1.pickup_item_type = ""
		
			held = false
	
		gml.instance_create(position.x, position.y, Objects.poof, self)
		gml.instance_destroy(self)
