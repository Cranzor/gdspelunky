extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 4, 0, 12, 12)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	image_speed = 0.4

	# DY:  stats
	hp = 1
	invincible = 0

	# DY:  status
	IDLE = 0
	BOUNCE = 1
	RECOVER = 2
	WALK = 3

	status = 0
	bounce_counter = 0

	shake_counter = 0
	shake_toggle = 1


func step():
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):
		
		var character = gml.get_instance("character") #---[FLAG] may need to change this for multiplayer
		dist = gml.distance_to_object(character, self)
		if (gml.collision_point(position.x+8, position.y+4, "solid", 0, 0)):

			hp = 0

		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
			if (in_level.is_real_level()): global.enemy_kills[2] += 1
			global.spiders += 1
			global.kills += 1
			gml.instance_destroy(self)

		elif (not gml.collision_point(position.x, position.y-16, "solid", 0, 0) or (dist < 90 and character.position.y > position.y and abs(character.position.x - (position.x+8)) < 8)):

			var spider = gml.instance_create(position.x, position.y, Objects.spider)
			spider.hp = hp
			gml.instance_destroy(self)
