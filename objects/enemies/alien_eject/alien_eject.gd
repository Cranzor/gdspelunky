extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var EJECT
var DEPLOY
var FLOAT


func animation_end():
	if (sprite_index == "alien_deploy"): sprite_index = "alien_parachute"


func collision_with_player1():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y-3 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		other.fall_timer = 0
		Audio.play_sound(global.snd_hit)
		for repetition in range(3):
	
			gml.instance_create(other.position.x+8, other.position.y+8, Objects.blood, self)
	
		if (counts_as_kill):
	
			if (InLevel.is_real_level()): global.enemy_kills[15] += 1
			global.aliens += 1
			global.kills += 1
	
		gml.instance_destroy(self)

	elif (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		if (other.position.y < position.y):
			other.y_vel = -6
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
	
		if (global.plife > 0): global.plife -= 1
		Audio.play_sound(global.snd_hurt)


func collision_with_web():
	gml.instance_create(position.x-8, position.y-12, Objects.alien, self)
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	x_vel = 0
	y_vel = -6
	image_speed = 0.6

	# DY:  stats
	type = "alien eject"
	hp = 1
	invincible = 0
	counts_as_kill = true

	EJECT = 0
	DEPLOY = 1
	FLOAT = 2

	status = 0

	dir = gml.rand(0,1)
	counter = 0


func outside_room():
	gml.instance_destroy(self)


func step():
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+16)):

		position.x += x_vel
		position.y += y_vel

		if (status == EJECT):

			x_vel = 0
			y_vel += 0.5
			if (y_vel >= 0 or Collision.is_collision_top(1, self)):
		
				y_vel = 0
				status = FLOAT
				sprite_index = "alien_deploy"
		
			if (gml.rand(1,5) == 1): gml.instance_create(position.x+gml.rand(0,3)-gml.rand(0,3), position.y+gml.rand(0,3)-gml.rand(0,3), Objects.burn, self)

		elif (status == FLOAT):

			x_vel = 0
			y_vel = 2
			if (gml.collision_point(position.x, position.y+6, "solid", 0, 0)):
		
				gml.instance_create(position.x-8, position.y-12, Objects.alien, self)
				gml.instance_destroy(self)
		
			elif (dir == 0):
		
				x_vel = -1
				if (gml.collision_point(position.x-8, position.y, "solid", 0, 0)): dir = 99
		
			elif (dir == 1):
		
				x_vel = 1
				if (gml.collision_point(position.x+8, position.y, "solid", 0, 0)): dir = 99
