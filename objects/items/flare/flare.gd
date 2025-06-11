extends Item


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)
	
	
#--- Object functions
var dist_to_player


func alarm_0():
	gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), Objects.flare_spark)
	alarm_0_countdown.start(2)

func create():
	super()
	
	image_speed = 0.3
	
	type = "flare"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	x_vel = 0
	y_vel = 0
	grav = 0.6
	invincible = true
	bounce = true
	dist_to_player = 0

	alarm_0_countdown.start(1)

func step():
	super()
	
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #--- [FLAG] may need to change this for multiplayer
		dist_to_player = gml.distance_to_object(player1, self)
		
	if (gml.collision_point(position.x, position.y, "water", -1, -1)):

		gml.instance_create(position.x, position.y, Objects.splash)
		Audio.play_sound(global.snd_splash)
		if (held):
			var player1 = gml.get_instance("player1") #--- [FLAG] may need to change this for multiplayer
			
			player1.hold_item = null
			player1.pickup_item_type = ""
			
			held = false
		
		gml.instance_destroy(self)
