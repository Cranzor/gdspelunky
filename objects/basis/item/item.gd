@icon("res://sprites/items/weapons/jar/jar_0.png")
extends DrawnSprite
class_name Item


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var falling
var px
var py
var shop_desc
var new

const DUCKING = 12

var break_pieces

var stolen
var in_dice_house
var stuck
var sticky_x_diff
var sticky_y_diff

var buy_message #---[FLAG] may want to move this to drawn_sprite. check damsel script

var to_destroy


func create():
	super()
	active = true
	type = "none"
	shop_desc = ""
	new = true #DY: set to false once player has picked up, currently just used for bow
	held = false
	#LEFT = 18
	#RIGHT = 19
	#DUCKING = 12
	my_grav = 0.6
	armed = false
	trigger = false #DY: for idols
	safe = false
	heavy = false
	value = 0
	col_bot = false
	can_pick_up = true

	bounce_factor = 0.5
	friction_factor = 0.3
	bloodless = false
	break_pieces = true

	cost = 0
	for_sale = false
	stolen = false
	in_dice_house = false #DY: for dice house
	cimg = 0

	stuck = false

	#DY: for sticky bombs
	sticky = false
	enemy_id = 0
	sticky_x_diff = 0
	sticky_y_diff = 0

	if (global.has_spectacles): depth = -51
	else: depth = -101

func step():
	if ((position.x > gml.view('xview')-16 and position.x < gml.view('xview') + gml.view('wview')+16 and
	position.y > gml.view('yview')-16 and position.y < gml.view('yview') + gml.view('hview')+16) or
	type == "rope"):

		if (global.has_spectacles): depth = -51
		else: depth = -101

		if ((not gml.instance_exists("shopkeeper") or
			global.thief_level > 0 or
			global.murderer) and cost > 0):
		
			if (InLevel.is_real_level()): global.items_stolen += 1
			cost = 0
			for_sale = false
		

			#DY: stealing makes shopkeeper angry
		if (InLevel.is_real_level()):
		
			if (cost > 0 and for_sale and not InLevel.is_in_shop(position.x, position.y)):
			
				global.items_stolen += 1
				InLevel.scr_shopkeeper_anger(0, self)
				cost = 0
			
		
		elif (InLevel.is_level()):
		
			if (cost > 0 and for_sale and not InLevel.is_in_shop(position.x, position.y)):
			
				InLevel.scr_shopkeeper_anger(0, self)
				cost = 0
			
		
		else: cost = 0

		if (held):
		
			x_vel = 0
			y_vel = 0
			
			var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
			if (player1.facing == LEFT): position.x = player1.position.x - 4
			if (player1.facing == RIGHT): position.x = player1.position.x + 4
		
			if (heavy):
			
				if (type == "gold idol" or type == "crystal skull" or type == "lamp" or type == "damsel"):
				
					if (player1.state == DUCKING and abs(player1.x_vel) < 2): position.y = player1.position.y+2
					else: position.y = player1.position.y
				
				else:
				
					if (player1.state == DUCKING and abs(player1.x_vel) < 2): position.y = player1.position.y-2
					else: position.y = player1.position.y-4
				
			
			else:
			
				if (player1.state == DUCKING and abs(player1.x_vel) < 2): position.y = player1.position.y + 4
				else: position.y = player1.position.y+2
			
			depth = 1
			#if (player1.hold_item == 0): #--- 0 changed to null
			if (player1.hold_item == null):
			
				held = false
			
		
		elif (not gml.collision_point(position.x, position.y, "solid", 0, 0)):
		
			PlatformEngine.move_to(x_vel, y_vel, self)

			col_left = false
			col_right = false
			col_bot = false
			col_top = false
			if (Collision.is_collision_left(1, self)): col_left = true
			if (Collision.is_collision_right(1, self)): col_right = true
			if (Collision.is_collision_bottom(1, self)): col_bot = true
			if (Collision.is_collision_top(1, self)): col_top = true

			if (not col_left and not col_right): stuck = false
			
			if (not col_bot and not stuck): y_vel += my_grav
			if (y_vel > 8): y_vel = 8
		
			if (col_left or col_right):
			
				x_vel = -x_vel * 0.5
				my_grav = 0.6
			
		
			if (col_bot):
			
				my_grav = 0.6
			
					# bounce
				if (y_vel > 1): y_vel = -y_vel * bounce_factor
				else: y_vel = 0
			
					# friction
				if (abs(x_vel) < 0.1): x_vel = 0
				elif (abs(x_vel) != 0): x_vel *= friction_factor
			
				if (abs(y_vel) < 1):
				
					position.y -= 1
					if (not Collision.is_collision_bottom(1, self)): position.y += 1
					y_vel = 0
				
			
		
			if (sticky and type == "bomb" and sprite_index == "bomb_armed"): #---[FLAG] make sure this animation is set for relevant object
			
				if (col_left or col_right or col_top or col_bot):
				
					x_vel = 0
					y_vel = 0
					if (col_bot and abs(y_vel) < 1): position.y += 1
					
			
			elif (type == "arrow" and abs(x_vel) > 6):
			
				if (col_left):
				
					position.x -= 2
					x_vel = 0
					y_vel = 0
				
				elif (col_right):
				
					position.x += 2
					x_vel = 0
					y_vel = 0
				
				stuck = true
			
			elif (col_left and not stuck):
			
				if (not col_right): position.x += 1
					#y_vel = 0
			
			elif (col_right and not stuck):
			
				position.x -= 1
					#y_vel = 0
			
		
			if (sticky and type == "bomb" and sprite_index == "bomb_armed"):
			
					# do nothing
				pass
			
			elif (Collision.is_collision_top(1, self)):
			
				if (y_vel < 0): y_vel = -y_vel * 0.8
				else: position.y += 1
				my_grav = 0.6
			
		
			if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0, self)):
			
				my_grav = 0
				x_vel = 0
				y_vel = 0
				position.y += 0.05
			
			else:
			
				my_grav = 0.6
			
		
			if (gml.collision_point(position.x, position.y-5, "lava", 0, 0) and type != "sceptre"):
			
				if (type == "bomb"):
				
					gml.instance_create(position.x, position.y, "explosion")
					for repetition in range(3):
					
						gml.instance_create(position.x, position.y, "flame")
					

					Audio.play_sound(global.snd_explosion)
				
				gml.instance_destroy(self)
			
		
		else:
		
			col_left = false
			col_right = false
			col_bot = false
			col_top = false
			if (Collision.is_collision_left(1, self)): col_left = true
			if (Collision.is_collision_right(1, self)): col_right = true
			if (Collision.is_collision_bottom(1, self)): col_bot = true
			if (Collision.is_collision_top(1, self)): col_top = true
			
			if (col_top and !col_bot):
			
				position.y += 1
			
			elif (col_left and !col_right):
			
				position.x += 1
			
			elif (col_right and !col_left):
			
				position.x -= 1
			
			else:
			
				x_vel = 0
				y_vel = 0
			
		

		if (type == "bomb" and sticky):
		
			if (abs(x_vel) > 2 or abs(y_vel) > 2 and gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "enemy", 0, 0, self) and enemy_id == 0):
			
				enemy_id = gml.instance_nearest(position.x, position.y, "enemy")
				#/*
				#if (enemy_id.bomb_id):
				#
						## Can only have one sticky bomb on someone at a time
					#with enemy_id.bomb_id
					#
						#sticky = false
						#enemy_id = 0
					#
				#
				#*/
				enemy_id.bomb_id = self # instance_nearest(position.x, position.y, bomb)
				sticky_x_diff = enemy_id.position.x-position.x
				sticky_y_diff = enemy_id.position.y-position.y
			
			elif (abs(x_vel) > 2 or abs(y_vel) > 2 and gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "damsel", 0, 0, self) and enemy_id == 0):
			
				enemy_id = gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "damsel", 0, 0, self)
				#/*
				#if (enemy_id.bomb_id):
				#
						##DY: Can only have one sticky bomb on someone at a time
					#with enemy_id.bomb_id
					#
						#sticky = false
						#enemy_id = 0
					#
				#
				#*/
				enemy_id.bomb_id = self # instance_nearest(position.x, position.y, bomb)
				sticky_x_diff = enemy_id.position.x-position.x
				sticky_y_diff = enemy_id.position.y-position.y
			
		
		elif (abs(x_vel) > 2 or abs(y_vel) > 2):
		
			if (gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "enemy", 0, 0, self)):
			
				var obj = gml.instance_nearest(position.x, position.y, "enemy")
				if (not obj.invincible and obj.type != "magma man"):
				
					obj.x_vel = x_vel
					
						#DY: vampires are weak to "stakes"
					if (type == "arrow" and obj.status != 98 and obj.type == "vampire"): obj.hp -= 3
					
					#with obj
					
					if (obj.type == "caveman" or obj.type == "man_trap" or obj.type == "vampire" or obj.type == "yeti" or obj.type == "hawkman"):
					
						if (obj.status != STUNNED):
						
							if (obj.type == "caveman" or obj.type == "vampire" or obj.type == "yeti" or obj.type == "hawkman"):
							
								MiscScripts.scr_create_blood(obj.position.x+8, obj.position.y+8, 1, self)
							
							elif (obj.type == "man_trap"):
							
								gml.instance_create(obj.position.x+randi_range(0,16), obj.position.y-8+randi_range(0,16), Objects.leaf)
							
							obj.hp -= 1
							obj.status = STUNNED
							obj.counter = obj.stun_time
							obj.y_vel = -6
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "shopkeeper"):
					
						if (obj.status < 98):
						
							MiscScripts.scr_create_blood(obj.position.x, obj.position.y, 1, obj)
							obj.hp -= 1
							obj.y_vel = -6
							obj.status = 2
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "giant spider"):
					
						if (obj.whipped == 0):
						
							MiscScripts.scr_create_blood(obj.position.x+16, obj.position.y+24, 1, obj)
							obj.hp -= 1
							obj.whipped = 10
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "tomb lord"):
					
						if (obj.whipped == 0):
						
							MiscScripts.scr_create_blood(obj.position.x+16, obj.position.y+16, 1, obj)
							obj.hp -= 1
							obj.whipped = 20
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "alien boss"):
					
						if (obj.status != 99 and obj.sprite_index != "alien_boss_hurt"): #---[FLAG] make sure this sprite is set for relevant object
						
							MiscScripts.scr_create_blood(obj.position.x+8, obj.position.y+8, 1, obj)
							obj.hp -= 1
							obj.sprite_index = "alien_boss_hurt"
							obj.image_speed = 0.8
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "ufo"):
					
						gml.instance_create(obj.position.x+8, obj.position.y+8, Objects.explosion)
						Audio.play_sound(global.snd_explosion)
						if (randi_range(1,3) == 1): gml.instance_create(obj.position.x+8, obj.position.y+8, Objects.alien_eject)
						if (InLevel.is_real_level()): global.enemy_kills[16] += 1
						global.ufos += 1
						global.kills += 1
						gml.instance_destroy(obj)
					
					else:
					
						MiscScripts.scr_create_blood(obj.position.x+8, obj.position.y+8, 1, obj)
						obj.hp -= 1
						obj.orig_x = position.x
						obj.orig_y = position.y
						Audio.play_sound(global.snd_hit)
						
					
					obj.x_vel = x_vel * 0.3
					
					if (type == "arrow" and sprite_index == "bomb_arrow_right"): #---[FLAG] make sure this sprite is set for relevant object
					
						gml.instance_create(position.x, position.y, "explosion")
						if (global.graphics_high): MiscScripts.scr_create_flame(position.x, position.y, 3)
									

					if (type == "arrow" or type == "fish bone"):
					
						gml.instance_destroy(self)
					
				
			

			if (gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "damsel", false, true, self)):
			
				var obj = gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "damsel", false, true, self)
				if (not obj.invincible and obj.status != 99 and obj.hit == 0):
				
					if (not (obj.held and safe)):
					
						MiscScripts.scr_create_blood(obj.position.x, obj.position.y, 1, obj)
						print(safe)
						#with obj
						
						if (obj.held):
						
							obj.held = false
							
							var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
							player1.hold_item = null
							player1.pickup_item_type = ""
						
						obj.hp -= 1
						obj.y_vel = -6
						obj.status = 2
						obj.counter = 120
						obj.hit = 10
						
						obj.x_vel = float(x_vel) * 0.3
						
						if (type == "arrow" or type == "fish bone"): gml.instance_destroy(self)
					
						Audio.play_sound(global.snd_hit)
					
						if (obj.for_sale):
						
							InLevel.scr_shopkeeper_anger(3, self)


func draw():
	gml.draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, 1, 0, gml.c_white, 1, self)
	if (cost > 0):
	
		gml.draw_sprite_ext("small_collect", cimg, position.x, position.y-12, 1, 1, 0, gml.c_white, 1, self, false)
		cimg += 1
		if (cimg > 9): cimg = 0


func alarm_2():
	safe = false


func destroy():
	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		player1.hold_item = null
