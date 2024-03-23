extends Node

var jetpack
var cape_pickup
var shotgun
var mattock
var teleporter
var gloves
var spectacles
var web_cannon
var pistol
var mitt
var paste = preload("res://Test Scenes/paste.tscn")
var spring_shoes
var spike_shoes
var machete
var bomb_box = preload("res://Test Scenes/bomb_box.tscn")
var bow
var compass
var para_pickup
var rope_pile

var bomb_bag = preload("res://Test Scenes/bomb_bag.tscn")

	
func scr_get_room_x(x):
#
# scr_get_room_x(x)
#
# Returns the horizontal room number of a room given the x-coord.
#
	var tx = x

	if (tx < 160+16): return 0
	elif (tx >= 160+16 and tx < 320+16): return 1
	elif (tx >= 320+16 and tx < 480+16): return 2
	elif (tx >= 480+16): return 3

	return -1

func scr_get_room_y(y):
#
# scr_get_room_y(y)
#
# Returns the vertical room number of a room given the y-coord.
#

	var ty = y

	if (ty < 128+16): return 0
	elif (ty >= 128+16 and ty < 256+16): return 1
	elif (ty >= 256+16 and ty < 384+16): return 2
	elif (ty >= 384+16 and ty < 512+16): return 3
	elif (ty >= 512+16): return 4

	return -1

func scr_generate_item(x, y, set_type):
# scr_generate_item(x, y, set_type)
#
# Generate an item at (x,y).
#
	randomize()
	var obj
	
	if (set_type == 0): # Crate Set

		if (randi_range(1,500) == 1): obj = gml.instance_create(x, y, jetpack)
		elif (randi_range(1,200) == 1): obj = gml.instance_create(x, y, cape_pickup)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, shotgun)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, mattock)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, teleporter)
		elif (randi_range(1,90) == 1): obj = gml.instance_create(x, y, gloves)
		elif (randi_range(1,90) == 1): obj = gml.instance_create(x, y, spectacles)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, web_cannon)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, pistol)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, mitt)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, paste)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, spring_shoes)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, spike_shoes)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, machete)
		elif (randi_range(1,40) == 1): obj = gml.instance_create(x, y, bomb_box)
		elif (randi_range(1,40) == 1): obj = gml.instance_create(x, y, bow)
		elif (randi_range(1,20) == 1): obj = gml.instance_create(x, y, compass)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, para_pickup)
		else: obj = gml.instance_create(x, y, rope_pile)
		obj.cost = 0
		obj.for_sale = false

	elif (set_type == 1): # High End Set

		if (randi_range(1,40) == 1): obj = gml.instance_create(x, y, jetpack)
		elif (randi_range(1,25) == 1): obj = gml.instance_create(x, y, cape_pickup)
		elif (randi_range(1,20) == 1): obj = gml.instance_create(x, y, shotgun)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, gloves)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, teleporter)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, mattock)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, paste)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, spring_shoes)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, spike_shoes)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, compass)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, pistol)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, machete)
		else: obj = gml.instance_create(x, y, bomb_box)

	elif (set_type == 2): # Underground Set

		match randi_range(0,18):
	
			0:  obj = gml.instance_create(x, y-2, jetpack)
			1:  obj = gml.instance_create(x, y, cape_pickup)
			2:  obj = gml.instance_create(x, y, shotgun)
			3:  obj = gml.instance_create(x, y, mattock)
			4:  obj = gml.instance_create(x, y+3, teleporter)
			5:  obj = gml.instance_create(x, y-1, gloves)
			6:  obj = gml.instance_create(x, y, spectacles)
			7:  obj = gml.instance_create(x-2, y, web_cannon)
			8:  obj = gml.instance_create(x, y, pistol)
			9:  obj = gml.instance_create(x, y-1, mitt)
			10:  obj = gml.instance_create(x, y, paste)
			11:  obj = gml.instance_create(x, y, spring_shoes)
			12:  obj = gml.instance_create(x, y, spike_shoes)
			13:  obj = gml.instance_create(x, y, machete)
			14:  obj = gml.instance_create(x, y-2, bomb_box)
			15:  obj = gml.instance_create(x, y, bow)
			16:  obj = gml.instance_create(x, y, compass)
			17:  obj = gml.instance_create(x, y, para_pickup)
			18:  obj = gml.instance_create(x, y, rope_pile)
	
		obj.cost = 0 #--- should test these to see if they are properly set after setting up the class so these exist for the object
		obj.for_sale = false

func scr_shop_items_gen(xpos, ypos, shop_type): #--- original doesn't have these arguments but seems necessary
#
	# scr_shop_items_gen()
	#
	# Generate shop items.  Must be called from scr_room_gen_x().
	#
	randomize()
	
	var obj
	var m
	var n
	
	if (shop_type == "Bomb"):

		while (true):
		
			if (randi_range(1,5) == 1):
				if (not gml.instance_exists(paste)):
					obj = gml.instance_create(xpos+8, ypos+10, paste)
					break
			
			elif (randi_range(1,4) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, bomb_box)
				break
			else:
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
		

	elif (shop_type == "Weapon"):

		m = 20
		while (true):
		
			n = randi_range(1,4)
			if (m <= 0):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (randi_range(1,12)==1):
			
				if (not gml.instance_exists(web_cannon)):
					obj = gml.instance_create(xpos+8, ypos+12, web_cannon)
					break
			
			elif (randi_range(1,10)==1):
			
				if (not gml.instance_exists(shotgun)):
					obj = gml.instance_create(xpos+8, ypos+12, shotgun)
					break
			
			elif (randi_range(1,6)==1):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_box)
				break
			elif (n == 1):
			
				if (not gml.instance_exists(pistol)):
					obj = gml.instance_create(xpos+8, ypos+12, pistol)
					break
			
			elif (n == 2):
			
				if (not gml.instance_exists(machete)):
					obj = gml.instance_create(xpos+8, ypos+12, machete)
					break
			
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (n == 4):
			
				if (not gml.instance_exists(bow)):
					obj = gml.instance_create(xpos+8, ypos+12, bow)
					break
			
			m -= 1
		

	elif (shop_type == "Clothing"):

		m = 20
		while (true):
		
			n = randi_range(1,6)
			if (randi_range(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+11, rope_pile)
				break
			elif (n == 1):
				
				if (not gml.instance_exists(spring_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spring_shoes)
					break
				
			elif (n == 2):
				
				if (not gml.instance_exists(spectacles)):
					obj = gml.instance_create(xpos+8, ypos+10, spectacles)
					break
				
			elif (n == 3):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (n == 4):
				
				if (not gml.instance_exists(mitt)):
					obj = gml.instance_create(xpos+8, ypos+8, mitt)
					break
				
			elif (n == 5):
				
				if (not gml.instance_exists(cape_pickup)):
					obj = gml.instance_create(xpos+8, ypos+10, cape_pickup)
					break
				
			elif (n == 6):
				
				if (not gml.instance_exists(spike_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spike_shoes)
					break
				
			m -= 1
		

	elif (shop_type == "Rare"):

		m = 20
		while (true):
		
			n = randi_range(1,11)
			if (randi_range(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, bomb_box)
				break
			elif (n == 1):
				
				if (not gml.instance_exists(spring_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spring_shoes)
					break
				
			elif (n == 2):
				
				if (not gml.instance_exists(compass)):
					obj = gml.instance_create(xpos+8, ypos+10, compass)
					break
				
			elif (n == 3):
				
				if (not gml.instance_exists(mattock)):
					obj = gml.instance_create(xpos+8, ypos+10, mattock)
					break
				
			elif (n == 4):
				
				if (not gml.instance_exists(spectacles)):
					obj = gml.instance_create(xpos+8, ypos+10, spectacles)
					break
				
			elif (n == 5):
				
				if (not gml.instance_exists(jetpack)):
					obj = gml.instance_create(xpos+8, ypos+8, jetpack)
					break
				
			elif (n == 6):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (n == 7):
				
				if (not gml.instance_exists(mitt)):
					obj = gml.instance_create(xpos+8, ypos+8, mitt)
					break
				
			elif (n == 8):
				
				if (not gml.instance_exists(web_cannon)):
					obj = gml.instance_create(xpos+8, ypos+12, web_cannon)
					break
				
			elif (n == 9):
				
				if (not gml.instance_exists(cape_pickup)):
					obj = gml.instance_create(xpos+8, ypos+10, cape_pickup)
					break
				
			elif (n == 10):
				
				if (not gml.instance_exists(teleporter)):
					obj = gml.instance_create(xpos+8, ypos+12, teleporter)
					break
				
			elif (n == 11):
				
				if (not gml.instance_exists(spike_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spike_shoes)
					break
				
			m -= 1
		

	else:

		while (true):
		
			n = randi_range(1,3)
			if (randi_range(1,20) == 1):
			
				if (not gml.instance_exists(mattock)):
					obj = gml.instance_create(xpos+8, ypos+10, mattock)
					break
			
			elif (randi_range(1,10) == 1):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (randi_range(1,10) == 1):
				
				if (not gml.instance_exists(compass)):
					obj = gml.instance_create(xpos+8, ypos+10, compass)
					break
				
			elif (n == 1):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (n == 2):
				obj = gml.instance_create(xpos+8, ypos+11, rope_pile)
				break
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, para_pickup)
				break
		
	print(obj)

	#if (obj):
#
		#obj.for_sale = true
		#if (global.curr_level > 2):
		#
			#with obj
			#
				#cost += (cost/100)*10*(global.curr_level-2)
				#if (shop_desc == ""): buy_message = "A " + string_upper(type) + " FOR $" + string(cost) + "."
				#else: buy_message = shop_desc + " FOR $" + string(cost) + "."
