extends Item


func _ready():
	object_setup()


#--- Object functions
var item: String
var enemy: int = 0
enum enemy_type {SPIDER = 1, SNAKE = 2}


func collision_with_bullet():
	gml.instance_destroy(self)


func collision_with_whip():
	Audio.play_sound(global.snd_break)
	gml.instance_create(position.x, position.y, Objects.smoke_puff, self)
	for i in range(0, 3):

		var piece = gml.instance_create(position.x-2, position.y-2, Objects.rubble_small, self)
		piece.x_vel = gml.rand(1,3)-gml.rand(1,3)

	
	if (gml.rand(1,3) == 1): gml.instance_create(position.x, position.y, Objects.gold_chunk, self)
	elif (gml.rand(1,6) == 1): gml.instance_create(position.x, position.y, Objects.gold_nugget, self)
	elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.emerald_big, self)
	elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.sapphire_big, self)
	elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.ruby_big, self)
	elif (gml.rand(1,6) == 1): gml.instance_create(position.x-8, position.y-8, Objects.spider, self)
	elif (gml.rand(1,12) == 1): gml.instance_create(position.x-8, position.y-8, Objects.snake, self)
	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		player1.hold_item = null
		player1.pickup_item_type = ""

	gml.instance_destroy(self)


func create():
	# action_inherited
	super()
	set_item() #--- adding this here

	# main_code
	type = "jar"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -6, 4, 6)
	break_pieces = true


func destroy():
	# action_inherited
	super()

	# main_code
	if (break_pieces):

		Audio.play_sound(global.snd_break)
		gml.instance_create(position.x, position.y, Objects.smoke_puff, self)
		for i in range(0, 3):
	
			var piece = gml.instance_create(position.x-2, position.y-2, Objects.rubble_small, self)
			if (col_left): piece.x_vel = gml.rand(1,3)
			elif (col_right): piece.x_vel = -gml.rand(1,3)
			else: piece.x_vel = gml.rand(1,3)-gml.rand(1,3)
			if (col_top): piece.y_vel = gml.rand(0,3)
			else: piece.y_vel = -gml.rand(0,3)
	
		#--- commenting the below lines out because jar has been adjusted to generate its item when created
		#if (gml.rand(1,3) == 1): gml.instance_create(position.x, position.y, Objects.gold_chunk, self)
		#elif (gml.rand(1,6) == 1): gml.instance_create(position.x, position.y, Objects.gold_nugget, self)
		#elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.emerald_big, self)
		#elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.sapphire_big, self)
		#elif (gml.rand(1,12) == 1): gml.instance_create(position.x, position.y, Objects.ruby_big, self)
		#elif (gml.rand(1,6) == 1): gml.instance_create(position.x-8, position.y-8, Objects.spider, self)
		#elif (gml.rand(1,12) == 1):
	#
			#if (col_left): gml.instance_create(position.x, position.y-8, Objects.snake, self)
			#elif (col_right): gml.instance_create(position.x-16, position.y-8, Objects.snake, self)
			#else: gml.instance_create(position.x-8, position.y-8, Objects.snake, self)
			
		if item: gml.instance_create(position.x, position.y, item, self)
		elif enemy:
			if enemy == enemy_type.SPIDER: gml.instance_create(position.x-8, position.y-8, Objects.spider, self)
			elif enemy == enemy_type.SNAKE:
				if (col_left): gml.instance_create(position.x, position.y-8, Objects.snake, self)
				elif (col_right): gml.instance_create(position.x-16, position.y-8, Objects.snake, self)
				else: gml.instance_create(position.x-8, position.y-8, Objects.snake, self)
	
		if (held):
			var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
			player1.hold_item = null
			player1.pickup_item = ""


func step():
	# argument
	"overrides parent step" #--- not sure why this is indicated here, but the Godot setup makes this behavior default
	# main_code
	to_destroy = false #--- changing variable name from "destroy" to not conflict with function name
	col_top = false
	col_left = false
	col_right = false
	col_bot = false
	if (held):
		var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
		if (character.facing == LEFT):
	
			position.x = character.position.x - 4
	
		elif (character.facing == RIGHT):
	
			position.x = character.position.x + 4
	
	
		if (character.state == DUCKING and abs(character.x_vel) < 2): position.y = character.position.y + 4
		else: position.y = character.position.y
		depth = 1

	else:

		PlatformEngine.move_to(x_vel, y_vel, self)

		if (y_vel < 6):
	
			y_vel += my_grav
	
	
		if (Collision.is_collision_top(1, self)): col_top = true
		if (Collision.is_collision_left(1, self)): col_left = true
		if (Collision.is_collision_right(1, self)): col_right = true
		if (Collision.is_collision_bottom(1, self)): col_bot = true

		if (col_top and y_vel < 0):
	
			if (y_vel < -3): to_destroy = true
			y_vel = -y_vel * 0.8
	
	
		if (col_left or col_right):
	
			if (abs(x_vel) > 3): to_destroy = true
			x_vel = -x_vel * 0.5
	
	
		if (gml.collision_point(position.x, position.y, "solid", 0, 0)): to_destroy = true
	
		if (col_bot):
	
			if (y_vel > 3): to_destroy = true
	
			# DY:  bounce
			if (y_vel > 1): y_vel = -y_vel * 0.5
			else: y_vel = 0
		
			# DY:  friction
			if (abs(x_vel) < 0.1): x_vel = 0
			elif (abs(x_vel) != 0): x_vel *= 0.3
	
	
		if (col_left):
	
			if (not col_right): position.x += 1
			y_vel = 0
	
		elif (col_right):
	
			position.x -= 1
			y_vel = 0
	
	
		if (Collision.is_collision_bottom(0, self) and abs(y_vel) < 1):
	
			position.y -= 1
			y_vel = 0
	

		depth = 100
	
		if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0)):
	
			my_grav = 0
			x_vel = 0
			y_vel = 0
			position.y += 0.05
	
		if (gml.collision_point(position.x, position.y-5, "lava", 0, 0)):
	
			if (type == "bomb"):
		
				gml.instance_create(position.x, position.y, Objects.explosion, self)
				for i in range(0, 3):
			
					gml.instance_create(position.x, position.y, Objects.flame, self)
			

				Audio.play_sound(global.snd_explosion)
		
			gml.instance_destroy(self)
	


	if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "enemy", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

		var enemy = gml.instance_nearest(position.x, position.y, "enemy")
		if (not enemy.invincible):
	
			enemy.x_vel = x_vel
		
			if (enemy.type == "caveman" or enemy.type == "mantrap" or enemy.type == "yeti" or enemy.type == "hawkman" or enemy.type == "shopkeeper"):
		
				if (enemy.status != 98):
			
					if (enemy.type == "caveman" or enemy.type == "yeti" or enemy.type == "hawkman" or enemy.type == "shopkeeper"):
				
						for i in 1:
					
							gml.instance_create(enemy.position.x, enemy.position.y, Objects.blood, self)
					
				
					enemy.status = STUNNED
					enemy.counter = enemy.stun_time
					enemy.y_vel = -6
					Audio.play_sound(global.snd_hit)
			
		
			else:
		
				gml.instance_create(enemy.position.x+8, enemy.position.y+8, Objects.blood, self)
				enemy.hp -= 1
				enemy.orig_x = position.x
				enemy.orig_y = position.y
				enemy.shake_counter = 10
				Audio.play_sound(global.snd_hit)
			
		
			enemy.x_vel = x_vel * 0.3
		
			if (type == "arrow" or type == "fish bone"):
				gml.instance_destroy(self)
	
	
		to_destroy = true


	if (type != "damsel" and gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "damsel", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

		var enemy = gml.instance_nearest(position.x, position.y, "damsel")
		if (not enemy.invincible and (abs(x_vel) > 1 or abs(y_vel) > 1)):
	
			for i in range(0, 1):
		
				gml.instance_create(position.x, position.y, Objects.blood, self)
		
	
	
		if (enemy.held): enemy.held = false
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		player1.hold_item = null
		enemy.hp -= 1
		enemy.y_vel = -6
		enemy.status = 2
		enemy.counter = 120
	
		enemy.x_vel = x_vel * 0.3
		
		to_destroy = true


	if (to_destroy):

		if (held):
			var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
			player1.hold_item = null
			player1.pickup_item_type = ""
	
		gml.instance_destroy(self)


#--- adding this to generate item upon creation. this allows for consistent items when using seeds
func set_item() -> void:
	if (gml.rand(1,3) == 1): item = Objects.gold_chunk
	elif (gml.rand(1,6) == 1): item = Objects.gold_nugget
	elif (gml.rand(1,12) == 1): item = Objects.emerald_big
	elif (gml.rand(1,12) == 1): item = Objects.sapphire_big
	elif (gml.rand(1,12) == 1): item = Objects.ruby_big
	elif (gml.rand(1,6) == 1): enemy = enemy_type.SPIDER
	elif (gml.rand(1,12) == 1): enemy = enemy_type.SNAKE
