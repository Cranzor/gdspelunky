extends Item


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
	type = "gold idol"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	trigger = true
	heavy = true
	value = 5000


func step():
	# action_inherited
	super()

	# main_code
	if ((position.x > gml.view("xview")-8 and position.x < gml.view("xview") + gml.view("wview")+8 and
		position.y > gml.view("yview")-8 and position.y < gml.view("yview") + gml.view("hview")+8)):

		# DY:  get money for idols at shops
		if (in_level.is_level()):

			if (not held and
				gml.collision_point(position.x, position.y+4, "brick_smooth", 0, 0) and
				gml.instance_exists("shopkeeper") and
				global.thief_level == 0 and not global.murderer):
				var shopkeeper = gml.get_instance("shopkeeper")
				if (shopkeeper.status == 0 and abs(position.x - shopkeeper.position.x) < 80):
			
					global.collect += value*(global.level_type+1)
					global.collect_counter += 20
					if (global.collect_counter > 100): global.collect_counter = 100
					global.idols += 1
					Audio.play_sound(global.snd_coin)
					gml.instance_create(position.x, position.y-8, Objects.big_collect)
					global.message = "PLEASURE DOING BUSINESS!"
					global.message2 = ""
					global.message_timer = 100
					gml.instance_destroy(self)

		if (not col_bot and trigger):

			trigger = false
			global.idols_grabbed += 1
