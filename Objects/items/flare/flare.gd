extends Item

@onready var alarm_0_timer = $Alarms/Alarm0

var dist_to_player

var flare_spark = preload("res://objects/effects/flare_spark/flare_spark.tscn")

func initial_setup():
	#--- set size
	object_size = Vector2(8, 8)

	#--- set depth
	depth = -30
	z_index = depth
	
	$AnimatedSprite2D.play("flare")
	#item_create()
	#item_step()

func _ready():
	initial_setup()
	create()

func _physics_process(delta):
	step()

func alarm_0():
	gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), flare_spark)
	if alarm_0_timer.is_stopped:
		alarm_0_timer.start(2.0/30.0)

func create():
	item_create()
	
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

	if alarm_0_timer.is_stopped():
		alarm_0_timer.start(1.0/30.0)

func step():
	item_step()
	
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #--- [FLAG] may need to change this for multiplayer
		dist_to_player = gml.distance_to_object("player1", self)
		
	if (gml.collision_point(position.x, position.y, "water", -1, -1)):

		gml.instance_create(position.x, position.y, "splash")
		Audio.play_sound(global.snd_splash)
		if (held):
			var player1 = gml.get_instance("player1") #--- [FLAG] may need to change this for multiplayer
			
			player1.hold_item = 0
			player1.pickup_item_type = ""
			
			held = false
		
		gml.instance_destroy(self)
	
func _on_alarm_0_timeout():
	alarm_0()
