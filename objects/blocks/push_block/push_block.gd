extends MoveableSolid


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	invincible = false
	Collision.set_collision_bounds(self, 0, 0, 16, 16)
	if (global.city_of_gold): sprite_index = "gold_block"
	clean_death = false


func destroy():
	if (not clean_death and not global.clean_solids):

		if (not global.city_of_gold):
	
			var rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble, self)
			rubble.sprite_index = "rubble_lush"
			rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
			rubble.sprite_index = "rubble_lush_small"
			rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
			rubble.sprite_index = "rubble_lush_small"
	
		else:
	
			for i in range(0, 3):
		
				var gold = gml.instance_create(position.x+8+gml.rand(0,4)-gml.rand(0,4), position.y+8+gml.rand(0,4)-gml.rand(0,4), Objects.gold_chunk, self)
				gold.x_vel = gml.rand(0,3) - gml.rand(0,3)
				gold.y_vel = gml.rand(2,4) * 1
		
			var gold = gml.instance_create(position.x+8+gml.rand(0,4)-gml.rand(0,4), position.y+8+gml.rand(0,4)-gml.rand(0,4), Objects.gold_nugget, self)
			gold.x_vel = gml.rand(0,3) - gml.rand(0,3)
			gold.y_vel = gml.rand(2,4) * 1


func outside_room():
	gml.instance_destroy(self)

	

func step():
	# action_inherited
	# super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function

	# main_code
	if (gml.collision_point(position.x+8, position.y+14, "lava", 0, 0) and not gml.collision_point(position.x+8, position.y+17, "solid", 0, 0)):

		y_vel = 0
		my_grav = 0
		PlatformEngine.scr_moveable_solid_recurse_drop(self)
		position.y += 0.05
