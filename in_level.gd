extends Node

func get_kiss_value():
	return 10000+5000*(global.curr_level-2)

func is_in_shop(x, y):
	#
	# is_in_shop(x, y)
	#
	# Is this point (x, y) in a shop?
	#

	var tx = x
	var ty = y

	if (global.room_path[[LevelGeneration.scr_get_room_x(tx), LevelGeneration.scr_get_room_y(ty)]] == 4 or global.room_path[[LevelGeneration.scr_get_room_x(tx), LevelGeneration.scr_get_room_y(ty)]] == 5):
		return true

	return false

func is_level():
	#
	# is_level()
	#
	# Checks if you are in a level.
	#

	if (is_room("r_tutorial") or is_room("r_load_level") or is_room("r_level") or is_room("r_level2") or is_room("r_level3") or is_room("r_olmec")): return true
	return false

func is_real_level():
	#
	# is_real_level()
	#
	# Checks if you are in a non-custom level.  (Only used for stat-checking atm.):
	#

	if (is_room("r_level") or is_room("r_level2") or is_room("r_level3") or is_room("r_olmec")): return true
	return false

func is_room(name):
	var current_room = str(get_tree().current_scene.name)
	if name == current_room:
		return true
	else:
		return false

func scr_shake():
	pass

func scr_shopkeeper_anger(message_number, x, y): #--- assuming XY is needed here
	#
	# scr_shopkeeper_anger(message)
	#
	# Make the nearest shopkeeper angry.  RAWR! 
	#

	var shp = gml.instance_nearest(x, y, 'shopkeeper')
	if (shp):

		if (not shp.dead and not shp.angered):
		
			shp.status = 2
			if (global.murderer): global.message = "YOU'LL PAY FOR YOUR CRIMES!"
			elif (message_number == 0): global.message = "COME BACK HERE, THIEF!"
			elif (message_number == 1): global.message = "DIE, YOU VANDAL!"
			elif (message_number == 2): global.message = "TERRORIST!"
			elif (message_number == 3): global.message = "HEY, ONLY I CAN DO THAT!"
			else: global.message = "NOW I'M REALLY STEAMED!"
			global.message2 = ""
			global.message_timer = 80
			if (global.thief_level > 0): global.thief_level += 3
			else: global.thief_level += 2
		
