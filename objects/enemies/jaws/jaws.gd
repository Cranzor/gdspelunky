extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
@onready var jaws_body = $JawsBody
var turn


func animation_end():
	if (sprite_index == "jaws_turn_l"):

		# DY: dir = 180
		sprite_index = "jaws_left"
		status = PAUSE
		counter = 40

	elif (sprite_index == "jaws_turn_r"):

		# DY: dir = 0
		sprite_index = "jaws_right"
		status = PAUSE
		counter = 40
		position.x = position.x + 48


func create():
	# action_inherited
	super()

	# main_code
	type = "mega mouth"
	image_speed = 0.5
	Collision.set_collision_bounds(self, 0, 0, 48, 32)
	orig_x = 0
	orig_y = 0
	x_vel = 0
	y_vel = 0
	x_acc = 0.2
	y_acc = 0.2
	dir = 180
	facing = 0

	# DY:  stats
	hp = 40
	invincible = 0

	bubble_timer = 0
	bubble_timer_max = 40

	# DY:  status
	IDLE = 0
	ATTACK = 1
	PAUSE = 2
	TURN = 3

	can_pick_up = false
	status = 0
	counter = 0

	shake_counter = 0
	shake_toggle = 1


func draw():
	#gml.draw_sprite(sprite_index, -1, position.x, position.y, self, true)
	if (sprite_index == "jaws_left"):

		if (hp < 10):
			#gml.draw_sprite("jaws_body3_l", 0, position.x+16, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(16, 0, "jaws_body3_l")
		elif (hp < 20):
			#gml.draw_sprite("jaws_body2_l", 0, position.x+16, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(16, 0, "jaws_body2_l")
		else:
			#gml.draw_sprite("jaws_body1_l", 0, position.x+16, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(16, 0, "jaws_body1_l")

	elif (sprite_index == "jaws_right"):

		if (hp < 10):
			#gml.draw_sprite("jaws_body3_r", 0, position.x-48, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(-48, 0, "jaws_body3_r")
		elif (hp < 20):
			#gml.draw_sprite("jaws_body2_r", 0, position.x-48, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(-48, 0, "jaws_body2_r")
		else:
			#gml.draw_sprite("jaws_body1_r", 0, position.x-48, position.y, self, true) #--- commenting out draw_sprite to use JawsBody node
			jaws_body.draw_jaws_body(-48, 0, "jaws_body1_r")

	#/* debug
	#draw_set_font(global.my_font_small)
	#draw_set_color(c_white)
	#draw_text(position.x, position.y-16, str(status) + ":" + str(counter))
	#*/


func step():
	if ((position.x > gml.view("xview")-48 and position.x < gml.view("xview") + gml.view("wview")+48 and
		position.y > gml.view("yview")-48 and position.y < gml.view("yview") + gml.view("hview")+48)):


		if (not gml.collision_point(position.x+8, position.y+16, "water", 0, 0)):

			hp -= 1


		if (hp < 1):

			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[12] += 1
				global.megamouths += 1
				global.kills += 1
		
			MiscScripts.scr_create_blood(position.x+22+gml.rand(0,4), position.y+14+gml.rand(0,4), 4, self)
			for repetition in range(4):
		
				gml.instance_create(position.x+22+gml.rand(0,4), position.y+14+gml.rand(0,6), Objects.bone)
		
			for repetition in range(4):
		
				var obj = gml.instance_create(position.x+16, position.y+16, Objects.crate)
				obj.x_vel = gml.rand(0,3)-gml.rand(0,3)
				obj.y_vel = -gml.rand(1,2)
		
			gml.instance_destroy(self)

		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		dist = gml.point_distance(position.x, position.y, player1.position.x, player1.position.y)

		if (status == IDLE):

			if (dir == 0): # DY:  right
		
				if (gml.collision_point(position.x+18, position.y+16, "water", 0, 0) and not (gml.collision_point(position.x+18, position.y+16, "solid", 0, 0))):
			
					PlatformEngine.move_to(2,0,self)
			
				elif (not gml.collision_rectangle(position.x-32, position.y, position.x,  position.y+32, "solid", 0, 0)):
			
					status = TURN
					dir = 180
					position.x = position.x-48
					sprite_index = "jaws_turn_l"
					image_index = 0
			
		
			else:
		
				if (gml.collision_point(position.x-2, position.y+16, "water", 0, 0) and not (gml.collision_point(position.x-2, position.y+16, "solid", 0, 0))):
			
					PlatformEngine.move_to(-2,0,self)
			
				elif (not gml.collision_rectangle(position.x+16, position.y, position.x+48,  position.y+32, "solid", 0, 0)):
			
					status = TURN
					dir = 0
					sprite_index = "jaws_turn_r"
					image_index = 0
			
		
		
			if (not Collision.is_collision_bottom(2, self)):
		
				position.y += 1
		

			if (player1.swimming and not player1.dead):
		
				status = ATTACK
		

		elif (status == PAUSE):

			if (counter > 0): counter -= 1
			else:
		
				status = IDLE
				if (dir > 90 and dir < 270): dir = 180
				else: dir = 0
		

		elif (status == ATTACK and gml.instance_exists("player1")):

			if (player1.swimming and not player1.dead):
		
				if (sprite_index == "jaws_left" or sprite_index == "jaws_right"):
					dir = gml.point_direction(position.x+8, position.y+16, player1.position.x, player1.position.y-8)
			
				turn = false
				if (player1.position.x < position.x+8):
			
					if (sprite_index == "jaws_right" and not gml.collision_rectangle(position.x-32, position.y, position.x,  position.y+32, "solid", 0, 0)):
				
						status = TURN
						dir = 180
						position.x = position.x-48
						sprite_index = "jaws_turn_l"
						image_index = 0
						turn = true
				
			
				else:
			
					if (sprite_index == "jaws_left" and not gml.collision_point(position.x-2, position.y+16, "solid", 0, 0)):
				
						status = TURN
						dir = 0
						sprite_index = "jaws_turn_r"
						image_index = 0
						turn = true
				
			
			
				if (not turn):
			
					if (gml.collision_point(position.x + cos(gml.degtorad(dir)), position.y - sin(gml.degtorad(dir)), "water", 0, 0) and
					not gml.collision_point(position.x + cos(gml.degtorad(dir)), position.y - sin(gml.degtorad(dir)), "solid", 0, 0)):
				
						PlatformEngine.move_to(3 * cos(gml.degtorad(dir)), -3 * sin(gml.degtorad(dir)), self)
				
			
		
			else:
		
				status = IDLE
				if (dir > 90 and dir < 270): dir = 180
				else: dir = 0
		


		if (bubble_timer > 0): bubble_timer -= 1
		else:

			gml.instance_create(position.x, position.y+16, Objects.bubble)
			bubble_timer = bubble_timer_max


		if (sprite_index == "jaws_left"):

			Collision.set_collision_bounds(self, 0, 0, 64, 32)

		elif (sprite_index == "jaws_right"):

			Collision.set_collision_bounds(self, -48, 0, 16, 32)
