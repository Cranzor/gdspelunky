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
	Collision.set_collision_bounds(self, 0, 0, 32, 16)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	image_speed = 0.4

	# DY:  stats
	hp = 10
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

	gml.instance_create(position.x, position.y+16, Objects.web)
	gml.instance_create(position.x+16, position.y+16, Objects.web)


func step():
	var character = gml.get_instance("character") #---[FLAG] may need to adjust this for multiplayer
	if ((position.x > gml.view("xview")-32 and position.x < gml.view("xview") + gml.view("wview") and
		position.y > gml.view("yview")-32 and position.y < gml.view("yview") + gml.view("hview"))):

		var dist = gml.distance_to_object(character, self) #---[FLAG] may need to adjust this for multiplayer
		if (gml.collision_point(position.x+16, position.y+8, "solid", 0, false)):

			hp = 0

		if (hp < 1):

			for repetition in range(gml.rand(1,3)):
		
				var n = gml.rand(1,3)
				var gem
				match (n):
			
					1:  gem = gml.instance_create(position.x+16, position.y+24, Objects.emerald_big)
					2:  gem = gml.instance_create(position.x+16, position.y+24, Objects.sapphire_big)
					3:  gem = gml.instance_create(position.x+16, position.y+24, Objects.ruby_big)
			
				gem.x_vel = gml.rand(0,3) - gml.rand(0,3)
				gem.y_vel = -2
		
			var obj = gml.instance_create(position.x+16, position.y+24, Objects.paste)
			obj.cost = 0
			obj.for_sale = false
			MiscScripts.scr_create_blood(position.x+16, position.y+24, 4, self)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[3] += 1
				global.giantspiders += 1
				global.kills += 1
		
			gml.instance_destroy(self)

		elif (hp < 10 or not gml.collision_point(position.x, position.y-16, "solid", 0, false) or (dist < 90 and character.position.y > position.y and abs(character.position.x - (position.x+16)) < 8)):

			var spider = gml.instance_create(position.x, position.y, Objects.giant_spider)
			spider.hp = hp
			gml.instance_destroy(self)
