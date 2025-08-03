extends Node
class_name InLevel

static func get_kiss_value():
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

func is_level() -> bool:
	#
	# is_level()
	#
	# Checks if you are in a level.
	#

	if (is_room("tutorial") or is_room("load_level") or is_room("level") or is_room("level2") or is_room("level3") or is_room("olmec")): return true
	return false

func is_real_level():
	#
	# is_real_level()
	#
	# Checks if you are in a non-custom level.  (Only used for stat-checking atm.):
	#

	if (is_room("level") or is_room("level2") or is_room("level3") or is_room("olmec")): return true
	return false

func is_room(name):
	if name == global.current_room:
		return true
	return false

static func scr_shake(number):
##
##DY: scr_shake(duration)
##
##DY: Shake the screen.
##

	if (global.shake < number): global.shake = number
	if (global.shake < 0): global.shake = 0
	global.xview = gml.view_xview
	global.yview = gml.view_yview


func scr_shopkeeper_anger(message_number, node): #--- assuming XY is needed here
	#
	# scr_shopkeeper_anger(message)
	#
	# Make the nearest shopkeeper angry.  RAWR! 
	#

	var shp = gml.instance_nearest(node.position.x, node.position.y, 'shopkeeper')
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
		
