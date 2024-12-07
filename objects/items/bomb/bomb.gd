extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	image_speed = 1
	alarm_1_countdown.start(40)


func alarm_1():
	gml.instance_create(position.x, position.y, Objects.explosion)
	if (global.graphics_high):

		MiscScripts.scr_create_flame(position.x, position.y, 3)


	if (held):
		var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
		if (character): character.hold_item = 0

	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	type = "bomb"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)


func destroy():
	if (enemy_id): #---[FLAG] have to check what's going on here. seems to be in item class

		enemy_id.bomb_id = 0


func end_step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since item has no end_step function

	# main_code
	if (!gml.instance_exists("enemy_id")): #---[FLAG] this need to be fixed to pass in a variable representing the string name of a given enemy. should probably solve this by doing enemy_id.object_name, since enemy_id will hold the node

		enemy_id = 0


	if (enemy_id != 0):

		position.x = enemy_id.position.x-sticky_x_diff
		position.y = enemy_id.position.y-sticky_y_diff


func step():
	# action_inherited
	super()

	# main_code
	if (sprite_index == "bomb_armed"): depth = 49
	if (sticky): depth = 1

	if (armed and gml.instance_exists("shopkeeper")):
		var shopkeeper = gml.get_instance("shopkeeper") #---[FLAG] may have to change this for times like when in black market
		if ((global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 4 or
			global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 5) and
			gml.distance_to_object(shopkeeper, self) < 96):
			
			var all_shopkeepers = gml.get_all_instances("shopkeeper")
			for shopkeeper_instance in all_shopkeepers:
		
				InLevel.scr_shopkeeper_anger(2, shopkeeper_instance) #--- a bit strange for the shopkeeper to check for the existence of itself, but that appears to be how it works
