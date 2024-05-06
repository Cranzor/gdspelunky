extends Enemy

var s_snake_walk_l
var x_acc
var y_acc

func _ready():
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 0, 14, 16)
	x_vel = 2.5
	image_speed = 0.4

	# stats
	type = "Snake"
	hp = 1
	invincible = 0

	IDLE = 0
	WALK = 1
	ATTACK = 2
	STUNNED = 98
	DEAD = 99
	status = IDLE

	bounced = false
	dead = false
	counter = 0

	LEFT = 0
	RIGHT = 1
	facing = RIGHT

	shake_counter = 0
	shake_toggle = 1

func _physics_process(delta):
	#print("y_vel:" + str(y_vel))
	var visible_rect = ColorRect.new()
	get_tree().current_scene.add_child(visible_rect)
	visible_rect.global_position = Vector2(position.x, position.y)
	#print(visible_rect.position.y)
	#print(position.y)
	visible_rect.size = Vector2(1, 1)
	visible_rect.color = Color(0.922, 0.518, 0.188, 0.5)
	
	#if ((position.x > gml.view('xview')-20 and position.x < gml.view('xview') + gml.view('wview')+4 and ---[FLAG] uncomment this and line below
	#position.y > gml.view('yview')-20 and position.y < gml.view('yview') + gml.view('hview')+4)):
	if true: #--- temporary for testing. delete

		PlatformEngine.move_to(x_vel,y_vel, self)

		y_vel += my_grav * delta
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):
			hp = 0


		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
			if (counts_as_kill):
			
				if (InLevel.is_real_level()): global.enemy_kills[1] += 1
				global.snakes += 1
				global.kills += 1
			
			gml.instance_destroy(self)


		if (Collision.is_collision_bottom(1, self) and status != STUNNED): y_vel = 0

		if (status == IDLE):

			if (counter > 0): counter -= 1    
			else:
			
				facing = randi_range(0,1)
				status = WALK
			

		elif (status == WALK):

			if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
			
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
			
			
			if (facing == LEFT and not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
			
				facing = RIGHT
			
			elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
			
				facing = LEFT
			
			
			if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and
				(not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1))):
			
				if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = RIGHT
				else: facing = LEFT
				x_vel = 0
			
			elif (facing == LEFT): x_vel = -1
			else: x_vel = 1
			
			if (randi_range(1,100) == 1):
			
				status = IDLE
				counter = randi_range(20,50)
				x_vel = 0
			

		elif (status == ATTACK):

			# ?
			pass


		if (Collision.is_collision_solid(self)):
			position.y -= 2

		if (status != STUNNED):

			if (x_vel == 0): image_speed = 0.2
			else: image_speed = 0.4
			
			sprite_index = s_snake_walk_l

		#/*
		#if (status != STUNNED and facing == RIGHT):
	#
			#if (x_vel == 0): image_speed = 0.2
			#else: image_speed = 0.4
			#
			#sprite_index = s_snake_walk_r
	#
		#*/

