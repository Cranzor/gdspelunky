extends Item

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
@onready var alarm_0_timer = $Alarms/Alarm0

var dist_to_player

func alarm_0():
	#gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), Objects.flare_spark) #---
	
	#--- utilizing a queueing system here rather than creating a new flame_spark every time to prevent performance issues
	generate_flame_spark()
	
	alarm_0_timer.start(2)

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

	alarm_0_timer.start(1)

func step():
	smooth_motion_step_begin()
	
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
	
	smooth_motion_step_end()
	
func _on_alarm_0_timeout():
	alarm_0()

#--- Extra functions
var flare_sparks = []
var flare_sparks_number = 0
var flare_sparks_maximum = 5

func generate_flame_spark():
	#var random_position = Vector2(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3))
	#
	#if flare_sparks == []:
		#var flare_spark = gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), Objects.flare_spark)
		#flare_sparks.append(flare_spark)
	#
	#var available_flare_spark = null
	#for flare_spark in flare_sparks:
		#if flare_spark.queued == true:
			#available_flare_spark = flare_spark
			#break
	#
	#if available_flare_spark:
		#available_flare_spark.remove_from_queue()
		#available_flare_spark.position = random_position
	#else:
		#var flare_spark = gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), Objects.flare_spark)
		#flare_sparks.append(flare_spark)
		
	if flare_sparks_number <= flare_sparks_maximum:
		var flare_spark = gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), Objects.flare_spark)
		flare_sparks_number += 1
		flare_spark.flare = self
