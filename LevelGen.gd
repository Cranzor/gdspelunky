extends Node2D

#
# scrLevelGen()
#
# Sets the "room path" that Spelunky uses to determine the no-bombs/no-rope (in theory)
# route to the exit.
# 

var startRoomX
var startRoomY = 0
var roomX
var roomY = 0
var prevX
var prevY = 0
var roomPath = {[0,0]:0, [0,1]:0, [0,2]:0, [0,3]:0,
				[1,0]:0, [1,1]:0, [1,2]: 0, [1,3]:0,
				[2,0]:0, [2,1]:0, [2,2]:0, [2,3]:0,
				[3,0]:0, [3,1]: 0, [3,2]:0, [3,3]:0}
var noStartX = -1
var n

var sacrificePit = false
var snakePit = false
var alienCraft = false
var yetiLair = false

#Black Market
var blackMarket = false
#if (global.levelType == 1)

# --- Adding these for now since they are missing
var levelType = 1
var madeBlackMarket = false
var genBlackMarket = false
var probSacPit = 1
var cityOfGold = false
var lake = false
var madeMoai = false
var currLevel = 1 # --- Believe it's 1-12
var probAlien = 0
var probYetiLair = 0
var roomPoss = {[0,0]:0, [0,1]:0, [0,2]:0, [0,3]:0,
				[1,0]:0, [1,1]:0, [1,2]: 0, [1,3]:0,
				[2,0]:0, [2,1]:0, [2,2]:0, [2,3]:0,
				[3,0]:0, [3,1]: 0, [3,2]:0, [3,3]:0}
var endRoomX = 0
var endRoomY = 0
var idol = false
var damsel = false
var probSnakePit = 0
var shop = false

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_tiles()
	#other()
	#levelGen()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func other(): # --- From InitLevel. Swap this out later
	for i in range(0,4):
		for j in range(0,4):
			roomPath[[i,j]] = 0

func levelGen():
	randomize()
	startRoomX = randi_range(0,3)
	roomX = startRoomX
	prevX = startRoomX
	n = randi_range(0,3)
	roomPath[[roomX, roomY]] = 1
	print(roomPath)
	
	if levelType == 1 and not madeBlackMarket and genBlackMarket:
		blackMarket = true
		startRoomX = 0
		startRoomY = 0
		endRoomX = 3
		endRoomY = 3
		roomPath[[0, 0]] = 2
		roomPath[[0, 1]] = 2
		roomPath[[0, 2]] = 2
		roomPath[[0, 3]] = 3
		roomPath[[1, 0]] = 4
		roomPath[[1, 1]] = 4
		roomPath[[1, 2]] = 4
		roomPath[[1, 3]] = 1
		roomPath[[2, 0]] = 4
		roomPath[[2, 1]] = 4
		roomPath[[2, 2]] = 5
		roomPath[[2, 3]] = 1
		roomPath[[3, 0]] = 2
		roomPath[[3, 1]] = 2
		roomPath[[3, 2]] = 4
		roomPath[[3, 3]] = 3
		madeBlackMarket = true
		return 0

	if levelType == 3 and randi_range(1, probSacPit) == 1:
		while (n == roomX):
			n = randi_range(0,3)
	
		for i in range(0,4):
			print(roomPath)
			if i == 0:
				roomPath[[n, i]] = 7
				print(roomPath)
			elif i == 3:
				roomPath[[n, i]] = 9
				print(roomPath)
			else:
				roomPath[[n, i]] = 8
				print(roomPath)
		sacrificePit = true
		idol = true
		damsel = true

	while roomY < 4:
		var d = false
		if roomX == 0:
			n = randi_range(3,5) #right
		elif roomX == 3:
			n = randi_range(5,7) #left
		else:
			n = randi_range(1,5)
		
		if n < 3 or n > 5: #move left
			if roomX > 0:
				if roomPath[[roomX-1, roomY]] == 0:
					roomX -= 1
			elif roomX < 3:
				if roomPath[[roomX+1, roomY]] == 0: 
					roomX += 1
			else:
				n = 5
				
		elif n == 3 or n == 4: #move right
			if roomX < 3:
				if roomPath[[roomX+1, roomY]] == 0: roomX += 1
			elif (roomX > 0):
				if (roomPath[[roomX-1, roomY]] == 0): 
					roomX -= 1
			else:
				n = 5
		
		if (n == 5): #move down
			roomY += 1
			d = true
			if (roomY < 4):
				roomPath[[prevX, prevY]] = 2
				print(roomPath)
				roomPath[[roomX, roomY]] = 3
				print(roomPath)
				d = true
			else:
				endRoomX = roomX
				endRoomY = roomY-1
		
		if (not d):
			roomPath[[roomX, roomY]] = 1
			print(roomPath)
		prevX = roomX
		prevY = roomY

#City of Gold
	if (cityOfGold):
		roomPath[[randi_range(0,3), 2]] = 6

#snake pit
	var sX1 = 0
	var sX2 = 0
#global.probSnakePit = 1
	if (levelType == 0):
		for j in range (0,2):
			for i in range (0,4):
				if (roomPath[[i,j]] == 0 and roomPath[[i,j+1]] == 0 and roomPath[[i,j+2]] == 0 and randi_range(1,probSnakePit) == 1):
					roomPath[[i,j]] = 7 #top of pit
					print(roomPath)
					if true:
						if (roomPath[[i,j+2]] == 0):
							roomPath[[i,j+1]] = 8
							print(roomPath)
							if (j == 0):
								if (roomPath[[i,j+3]] == 0):
									roomPath[[i,j+2]] = 8 #middle of pit
									print(roomPath)
									roomPath[[i,j+3]] = 9 #bottom of pit
									print(roomPath)
								else:
									roomPath[[i,j+2]] = 9
									print(roomPath)
							else:
								roomPath[[i,j+2]] = 9
								print(roomPath)
					else:
						roomPath[[i,j+1]] = 9
						print(roomPath)
					snakePit = true
					i = 99
					j = 99
					break

	roomPath[[0,4]] = 0
	roomPath[[1,4]] = 0
	roomPath[[2,4]] = 0
	roomPath[[3,4]] = 0
	print(roomPath)

# Lake
#global.lake = false
	if (lake):
		roomPath[[0,3]] = 8
		roomPath[[1,3]] = 8
		roomPath[[2,3]] = 8
		roomPath[[3,3]] = 8
		roomPath[[0,4]] = 7
		roomPath[[1,4]] = 7
		roomPath[[2,4]] = 7
		roomPath[[3,4]] = 7
		n = randi_range(0,3)
		while (n == endRoomX):
			n = randi_range(0,3)
		roomPath[[n,4]] = 9

	#Moai
	if (not madeMoai and levelType == 2):
		if currLevel == 9 and randi_range(1,4) == 1:
			madeMoai = true
		elif (currLevel == 10 and randi_range(1,3) == 1):
			madeMoai = true
		elif (currLevel == 11 and randi_range(1,2) == 1):
			madeMoai = true
		elif (currLevel == 12):
			madeMoai = true
		
		if (madeMoai):
			roomPath[[randi_range(0,3), randi_range(1,2)]] = 6
			
	elif (levelType == 2 and randi_range(1,probAlien) == 1): #alien craft
		var k = randi_range(0,2)
		var j = randi_range(1,2)
		for i in range(0,4):
			if (i == k):
				roomPath[[i,j]] = 7
			elif (i == 3):
				roomPath[[i,j]] = 9
			else:
				roomPath[[i,j]] = 8
		alienCraft = true
	elif (levelType == 2 and not alienCraft and randi_range(1,probYetiLair) == 1): #yeti
		yetiLair = true

#shop
	if (randi_range(1,currLevel) <= 2 and currLevel > 1 and not madeBlackMarket):
		var i = 0
		for k in range(0,4):
			for j in range(0,4):
				roomPoss[[j,k]] = 0
				#j = randi_range(0,3)
				#k = randi_range(0,3)
				if (roomPath[[j,k]] == 0):
					if (j < 3):
						if roomPath[[j+1,k]] == 1 or roomPath[[j+1,k]] == 2:
							#roomPath[j,k] = 4
							roomPoss[[j,k]] = 4
							i += 1
							#global.shop = true
							#break
					elif (j > 0):
						if (roomPath[[j-1,k]] == 1 or roomPath[[j-1,k]] == 2):
							#roomPath[j,k] = 5
							roomPoss[[j,k]] = 5
							i += 1
							#global.shop = true
							#break

		if (i > 0):
			n = randi_range(0,i-1)
			for k in range(0,4):
				for j in range (0,4):
					if roomPoss[[j,k]] != 0:
						if (n == 0):
							roomPath[[j,k]] = roomPoss[[j,k]]
							shop = true
							j = 4
							k = 4
							break
						else:
							n -= 1

	print(roomPath[[0,0]], roomPath[[1,0]], roomPath[[2,0]], roomPath[[3,0]])
	print(roomPath[[0,1]], roomPath[[1,1]], roomPath[[2,1]], roomPath[[3,1]])
	print(roomPath[[0,2]], roomPath[[1,2]], roomPath[[2,2]], roomPath[[3,2]])
	print(roomPath[[0,3]], roomPath[[1,3]], roomPath[[2,3]], roomPath[[3,3]])

func RoomGen():
	#
	# scrRoomGen1()
	#
	# Room generation for Area 1, the Mines.
	#

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
		#
	#***********************************************************************************/
#
	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#strTemp = "0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#strObs = "00000
			  #00000
			  #00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	
	#--- Added to make things work
	var x
	var y
	var altar
	var idol
	var damsel
	var Solid
	var Block
	var Brick
	var LadderOrange
	var LadderTop
	var Spikes
	var PushBlock
	var Entrance
	var Exit
	var AltarLeft
	var AltarRight
	var SacAltarLeft
	var SacAltarRight
	var bgKaliBody
	var KaliHead
	var Chest
	var GoldIdol
	var GiantTikiHead
	var bgDiceSign
	var bgTiki
	var bgTikiArms
	var inDiceHouse
	var sIceBlock
	var murderer
	var thiefLevel
	var isDamsel
	var bgWanted
	var isTunnelMan
	var BrickSmooth
	var LampRed
	var Lamp
	var Shopkeeper
	var Sign
	var sSignGeneral
	var sSignBomb
	var sSignWeapon
	var sSignClothing
	var sSignRare
	var sSignCraps
	var sSignKissing
	var Dice
	var Damsel
	var Snake
	var RubyBig
	var Mattock
	
	var strTemp = "0000000000
			   0000000000
			   0000000000
			   0000000000
			   0000000000
			   0000000000
			   0000000000
			   0000000000"

	var roomPathOfRoom = roomPath[[scrGetRoomX(x), scrGetRoomY(y)]] # --- Changed variable name as it's confusing
	var roomPathAbove = -1
	var shopType = "General"
	get_room_seed()
	add_obstacles()
	generate_tiles()

func get_room_seed():
	#--- Added to make things work
	var y
	var x
	var roomPathAbove
	var strTemp
	var shopType
	var altar
	
	if (scrGetRoomY(y) != 0):
		roomPathAbove = roomPath[[scrGetRoomX(x), scrGetRoomY(y-128)]]

	if (scrGetRoomX(x) == startRoomX and scrGetRoomY(y) == startRoomY): # start room
		if (roomPath == 2):
			n = randi_range(5,8)
		else:
			n = randi_range(1,4)
		match n:
			1:   strTemp = "6000060000
							0000000000
							0000000000
							0000000000
							0008000000
							0000000000
							0000000000
							1111111111"
			2: strTemp = "1111111111
							 2222222222
							 0000000000
							 0000000000
							 0008000000
							 0000000000
							 0000000000
							 1111111111"
			3: strTemp = "00000000000008000000000000000000L000000000P111111000L111111000L00111111111111111"
			4: strTemp = "0000000000008000000000000000000000000L000111111P000111111L001111100L001111111111"
			# hole
			5: strTemp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			6: strTemp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
			7: strTemp = "00000000000008000000000000000000L000000000P111111000L111111000L00011111111101111"
			8: strTemp = "0000000000008000000000000000000000000L000111111P000111111L001111000L001111011111"

	elif (scrGetRoomX(x) == endRoomX and scrGetRoomY(y) == endRoomY): # end room
		if (roomPathAbove == 2):
			n = randi_range(2,4)
		else:
			n = randi_range(3,6)
		match n:
			1: strTemp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"
			2: strTemp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			3: strTemp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"
			4: strTemp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"
			# no drop
			5: strTemp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			6: strTemp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"

	elif (roomPath == 0): # side room
		if (currLevel > 1 and not altar and randi_range(1,16) == 1):
			n = 11
			altar = true
		elif (idol or scrGetRoomY(y) == 3):
			n = randi_range(1,9)
		else:
			n = randi_range(1,10)
			if (n == 10):
				idol = true
			# else n = randi_range(1,9)

		match n:
			# upper plats
			1: strTemp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111" 
			# high walls
			2: strTemp = "110000000040L600000011P000000011L000000011L5000000110000000011000000001111111111" 
			3: strTemp = "00000000110060000L040000000P110000000L110050000L11000000001100000000111111111111" 
			4: strTemp = "110000000040L600000011P000000011L000000011L0000000110000000011000000001112222111" 
			5: strTemp = "00000000110060000L040000000P110000000L110000000L11000000001100000000111112222111" 
			6: strTemp = "11111111110221111220002111120000022220000002222000002111120002211112201111111111" 
			7: strTemp = "11111111111112222111112000021111102201111120000211111022011111200002111112222111" 
			8: strTemp = "11111111110000000000110000001111222222111111111111112222221122000000221100000011" 
			9: strTemp = "121111112100L2112L0011P1111P1111L2112L1111L1111L1111L1221L1100L0000L001111221111" 
			# idols
			10: strTemp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111" 
			# altars
			11: strTemp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111" 

	elif (roomPath == 0 or roomPath == 1):
		match randi_range(1,12):
			# basic rooms
			1: strTemp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111" 
			2: strTemp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111" 
			3: strTemp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111" 
			4: strTemp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111" 
			5: strTemp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111" 
			6: strTemp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111" 
			# low ceiling
			7: strTemp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111" 
			# ladders
			8: 
				if (randi_range(1,2) == 1):
					strTemp = "1111111111000000000L111111111P000000000L5000050000000000000000000000001111111111"
				else:
					strTemp = "1111111111L000000000P111111111L0000000005000050000000000000000000000001111111111"
			9: strTemp = "000000000000L0000L0000P1111P0000L0000L0000P1111P0000L1111L0000L1111L001111111111" 
			# upper plats
			10: strTemp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111" 
			11: strTemp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111" 
			# treasure below
			12:
				if (randi_range(1,2) == 1):
					strTemp = "2222222222000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else:
					strTemp = "222222222200000000000L000000000P111111100L500000100L000000110L000000011111111111"

	elif (roomPath == 3): # main room
		match randi_range(1,8):
			# basic rooms
			1: strTemp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111" 
			2: strTemp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111" 
			3: strTemp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111" 
			4: strTemp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111" 
			# upper plats
			5: strTemp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111" 
			6: strTemp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111" 
			7: strTemp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111" 
			# treasure below
			8:
				if (randi_range(1,2) == 1):
					strTemp = "0000000000000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else:
					strTemp = "000000000000000000000L000000000P111111100L500000100L000000110L000000011111111111"

	elif (roomPath == 4): # shop
		strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb"
		n = randi_range(1,7)
		# n = 6
		match n:
			1: shopType = "General" 
			2: shopType = "Bomb" 
			3: shopType = "Weapon" 
			4: shopType = "Rare" 
			5: shopType = "Clothing" 
			6: 
				shopType = "Craps"
				strTemp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+dd00000bbbbbbbbbb" 
			7:
				shopType = "Kissing"
				strTemp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"
				damsel = true 

	elif (roomPath == 5): # shop
		strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb"
		n = randi_range(1,7)
		# n = 6
		match n:
			1: shopType = "General" 
			2: shopType = "Bomb" 
			3: shopType = "Weapon" 
			4: shopType = "Rare" 
			5: shopType = "Clothing" 
			6:
				shopType = "Craps"
				strTemp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb" 
			7:
				shopType = "Kissing"
				strTemp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"
				damsel = true 

	elif (roomPath == 8): # snake pit
		match randi_range(1,1):
			1: strTemp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11" 

	elif (roomPath == 9): # snake pit bottom
		match randi_range(1,1):
			1: strTemp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS1111111M111111111111111" 

	else: # drop
		if (roomPath == 7):
			n = randi_range(4,12)
		elif (roomPathAbove != 2):
			n = randi_range(1,12)
		else:
			n = randi_range(1,8)
		match n:
			1: strTemp = "00000000006000060000000000000000000000006000060000000000000000000000000000000000" 
			2: strTemp = "00000000006000060000000000000000000000000000050000000000000000000000001202111111" 
			3: strTemp = "00000000006000060000000000000000000000050000000000000000000000000000001111112021" 
			4: strTemp = "00000000006000060000000000000000000000000000000000000000000002200002201112002111" 
			5: strTemp = "00000000000000220000000000000000200002000112002110011100111012000000211111001111" 
			6: strTemp = "00000000000060000000000000000000000000000000000000001112220002100000001110111111" 
			7: strTemp = "00000000000060000000000000000000000000000000000000002221110000000001201111110111" 
			8: strTemp = "00000000000060000000000000000000000000000000000000002022020000100001001111001111" 
			9: strTemp = "11111111112222222222000000000000000000000000000000000000000000000000001120000211" 
			10: strTemp = "11111111112222111111000002211100000002110000000000200000000000000000211120000211" 
			11: strTemp = "11111111111111112222111220000011200000000000000000000000000012000000001120000211" 
			12: strTemp = "11111111112111111112021111112000211112000002112000000022000002200002201111001111"

func add_obstacles():
#--- Added to make things work
	var strTemp
# Add obstacles

	for i in range (0, 81):
		var j = i
	  
		var strObs1 = "00000"
		var strObs2 = "00000"
		var strObs3 = "00000"
		var tile = strTemp[i]
		
		if (tile == "8"):
			match randi_range(1,8):
				1:
					strObs1 = "00900"
					strObs2 = "01110"
					strObs3 = "11111" 
				2:
					strObs1 = "00900"
					strObs2 = "02120"
					strObs3 = "02120" 
				3:
					strObs1 = "00000"
					strObs2 = "00000"
					strObs3 = "92222" 
				4:
					strObs1 = "00000"
					strObs2 = "00000"
					strObs3 = "22229" 
				5:
					strObs1 = "00000"
					strObs2 = "11001"
					strObs3 = "19001" 
				6:
					strObs1 = "00000"
					strObs2 = "10011"
					strObs3 = "10091" 
				7:
					strObs1 = "11111"
					strObs2 = "10001"
					strObs3 = "40094" 
				8:
					strObs1 = "00000"
					strObs2 = "12021"
					strObs3 = "12921" 

		elif (tile == "5"): # ground
			match randi_range(1,16):
				1:
					strObs1 = "11111"
					strObs2 = "00000"
					strObs3 = "00000" 
				2:
					strObs1 = "00000"
					strObs2 = "11110"
					strObs3 = "00000" 
				3:
					strObs1 = "00000"
					strObs2 = "01111"
					strObs3 = "00000" 
				4:
					strObs1 = "00000"
					strObs2 = "00000"
					strObs3 = "11111" 
				5:
					strObs1 = "00000"
					strObs2 = "20200"
					strObs3 = "17177" 
				6:
					strObs1 = "00000"
					strObs2 = "02020"
					strObs3 = "71717" 
				7:
					strObs1 = "00000"
					strObs2 = "00202"
					strObs3 = "77171" 
				8:
					strObs1 = "00000"
					strObs2 = "22200"
					strObs3 = "11100" 
				9:
					strObs1 = "00000"
					strObs2 = "02220"
					strObs3 = "01110" 
				10:
					strObs1 = "00000"
					strObs2 = "00222"
					strObs3 = "00111" 
				11:
					strObs1 = "11100"
					strObs2 = "22200"
					strObs3 = "00000" 
				12:
					strObs1 = "01110"
					strObs2 = "02220"
					strObs3 = "00000" 
				13:
					strObs1 = "00111"
					strObs2 = "00222"
					strObs3 = "00000" 
				14:
					strObs1 = "00000"
					strObs2 = "02220"
					strObs3 = "21112" 
				15:
					strObs1 = "00000"
					strObs2 = "20100"
					strObs3 = "77117" 
				16:
					strObs1 = "00000"
					strObs2 = "00102"
					strObs3 = "71177" 

		elif (tile == "6"): # air
			match randi_range(1,10):
				1:
					strObs1 = "11111"
					strObs2 = "00000"
					strObs3 = "00000" 
				2:
					strObs1 = "22222"
					strObs2 = "00000"
					strObs3 = "00000" 
				3:
					strObs1 = "11100"
					strObs2 = "22200"
					strObs3 = "00000" 
				4:
					strObs1 ="01110"
					strObs2 = "02220"
					strObs3 = "00000" 
				5:
					strObs1 = "00111"
					strObs2 = "00222"
					strObs3 = "00000" 
				6:
					strObs1 = "00000"
					strObs2 = "01110"
					strObs3 = "00000" 
				7:
					strObs1 = "00000"
					strObs2 = "01110"
					strObs3 = "02220" 
				8:
					strObs1 = "00000"
					strObs2 = "02220"
					strObs3 = "01110" 
				9:
					strObs1 = "00000"
					strObs2 = "00220"
					strObs3 = "01111" 
				10:
					strObs1 = "00000"
					strObs2 = "22200"
					strObs3 = "11100" 
		
		if (tile == "5" or tile == "6" or tile == "8"):
			strTemp = string_delete(strTemp, j, 5)
			strTemp = string_insert(strObs1, strTemp, j)
			j += 10
			strTemp = string_delete(strTemp, j, 5)
			strTemp = string_insert(strObs2, strTemp, j)
			j += 10
			strTemp = string_delete(strTemp, j, 5)
			strTemp = string_insert(strObs3, strTemp, j)

func generate_tiles():
	#--- Added to make things work
	var x = 200
	var y = 200
	var altar
	var idol
	var damsel
	var Solid
	var Block = preload("res://test_block.tscn")
	var Brick = preload("res://brick.tscn")
	var LadderOrange = preload("res://ladder.tscn")
	var LadderTop = preload("res://ladder_top.tscn")
	var Spikes = preload("res://spikes.tscn")
	var PushBlock
	var Entrance = preload("res://entrance.tscn")
	var Exit = preload("res://exit.tscn")
	var AltarLeft = preload('res://altar_left.tscn')
	var AltarRight = preload('res://altar_right.tscn')
	var SacAltarLeft = preload('res://sac_altar_left.tscn')
	var SacAltarRight = preload('res://sac_altar_right.tscn')
	var bgKaliBody
	var KaliHead
	var Chest = preload("res://chest.tscn")
	var GoldIdol = preload("res://gold_idol.tscn")
	var GiantTikiHead = preload('res://giant_tiki_head.tscn')
	var bgDiceSign
	var bgTiki
	var bgTikiArms
	var inDiceHouse
	var sIceBlock
	var murderer
	var thiefLevel
	var isDamsel
	var bgWanted
	var isTunnelMan
	var BrickSmooth
	var LampRed
	var Lamp
	var Shopkeeper
	var Sign
	var sSignGeneral
	var sSignBomb
	var sSignWeapon
	var sSignClothing
	var sSignRare
	var sSignCraps
	var sSignKissing
	var Dice
	var Damsel
	var Snake
	var RubyBig
	var Mattock
	var strTemp = "00000000110060000L040000000P110000000L110000000L11000000001100000000111112222111" 
	var shopType
	# Generate the tiles
	for j in range(0,8):
		for i in range(0,11):
			var tile = strTemp[i-1+j*10] #--- Added -1 to properly get string position
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1"):# and not collision_point(xpos, ypos, Solid, 0, 0)):
				if (randi_range(1,10) == 1):
					instance_create(xpos, ypos, Block)
				else:
					instance_create(xpos, ypos, Brick)

			elif (tile == "2" and randi_range(1,2) == 1):#and not collision_point(xpos, ypos, Solid, 0, 0)):
				if (randi_range(1,10) == 1):
					instance_create(xpos, ypos, Block)
				else:
					instance_create(xpos, ypos, Brick)

			elif (tile == "L"):
				instance_create(xpos, ypos, LadderOrange)
			elif (tile == "P"):
				instance_create(xpos, ypos, LadderTop)
			elif (tile == "7" and randi_range(1,3) == 1):
				instance_create(xpos, ypos, Spikes)
			elif (tile == "4" and randi_range(1,4) == 1):
				instance_create(xpos, ypos, Block) #---Actually is PushBlock but will do Block for now since sprite appears to be the smae
			elif (tile == "9"):
				var block = instance_create(xpos, ypos+16, Brick)
				if (scrGetRoomX(x) == startRoomX and scrGetRoomY(y) == startRoomY):
					instance_create(xpos, ypos, Entrance)
				else:
					instance_create(xpos, ypos, Exit)
					var exitX = xpos
					var exitY = ypos
					block.invincible = true

			elif (tile == "A"):
				instance_create(xpos, ypos, AltarLeft)
				instance_create(xpos+16, ypos, AltarRight)
				
			elif (tile == "x"):
				instance_create(xpos, ypos, SacAltarLeft)
				instance_create(xpos+16, ypos, SacAltarRight)
				tile_add(bgKaliBody, 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				instance_create(xpos+16, ypos-80+16, KaliHead)
				
			elif (tile == "a"):
				instance_create(xpos, ypos, Chest)
				
			elif (tile == "I"):
				instance_create(xpos+16, ypos+12, GoldIdol)
				
			elif (tile == "B"):
				instance_create(xpos+16, ypos+12, GiantTikiHead)
				tile_add(bgTiki, 0, 0, 32, 64, xpos, ypos+32, 10001)
				tile_add(bgTikiArms, 16*randi_range(0,2), 0, 16, 16, xpos+32, ypos+32, 10001)
				tile_add(bgTikiArms, 16*randi_range(0,2), 16, 16, 16, xpos-16, ypos+32, 10001)
				
			elif (tile == "Q"):
				if (shopType == "Craps"):
					tile_add(bgDiceSign, 0, 0, 48, 32, xpos, ypos, 9004)
					
			elif (tile == "q"):
				n = randi_range(1,6)
				scrGenerateItem(xpos+8, ypos+8, 1)
				inDiceHouse = true
				
			elif (tile == "+"):
				var obj = instance_create(xpos, ypos, Solid)
				obj.sprite_index = sIceBlock
				obj.shopWall = true
				
			elif (tile == "W"):
				if (murderer or thiefLevel > 0):
					if (isDamsel):
						tile_add(bgWanted, 32, 0, 32, 32, xpos, ypos, 9004)
					elif (isTunnelMan):
						tile_add(bgWanted, 64, 0, 32, 32, xpos, ypos, 9004)
					else:
						tile_add(bgWanted, 0, 0, 32, 32, xpos, ypos, 9004)

			elif (tile == "." and not collision_point(xpos, ypos, Solid, 0, 0)):
				var obj #--- Think it needs to be declared up here?
				if (randi_range(1,10) == 1):
					obj = instance_create(xpos, ypos, Block)
				else:
					obj = instance_create(xpos, ypos, Brick)
				obj.shopWall = true
				
			elif (tile == "b"):
				var obj = instance_create(xpos, ypos, BrickSmooth)
				obj.shopWall = true
				
			elif (tile == "l"):
				if (damsel):
					instance_create(xpos, ypos, LampRed)
				else:
					instance_create(xpos, ypos, Lamp)
			elif (tile == "K"):
				var obj = instance_create(xpos, ypos, Shopkeeper)
				obj.style = shopType
				
			elif (tile == "k"):
				var obj = instance_create(xpos, ypos, Sign)
				if (shopType == "General"):
					obj.sprite_index = sSignGeneral
				elif (shopType == "Bomb"):
					obj.sprite_index = sSignBomb
				elif (shopType == "Weapon"):
					obj.sprite_index = sSignWeapon
				elif (shopType == "Clothing"):
					obj.sprite_index = sSignClothing
				elif (shopType == "Rare"):
					obj.sprite_index = sSignRare
				elif (shopType == "Craps"):
					obj.sprite_index = sSignCraps
				elif (shopType == "Kissing"):
					obj.sprite_index = sSignKissing

			elif (tile == "i"):
				scrShopItemsGen()
				
			elif (tile == "d"):
				instance_create(xpos+8, ypos+8, Dice)

			elif (tile == "D"):

				var obj = instance_create(xpos+8, ypos+8, Damsel)
				obj.forSale = true
				obj.status = 5

			elif (tile == "s"):
				if (randi_range(1,10) == 1):
					instance_create(xpos, ypos, Snake)
				elif (randi_range(1,2) == 1):
					instance_create(xpos, ypos, Brick)
			elif (tile == "S"):
				instance_create(xpos, ypos, Snake)
			elif (tile == "T"):
				instance_create(xpos+8, ypos+8, RubyBig)
			elif (tile == "M"):
				instance_create(xpos, ypos, Brick)
				var obj = instance_create(xpos+8, ypos+8, Mattock)
				obj.cost = 0
				obj.forSale = false

func scrGetRoomY(y):
	pass
	
func scrGetRoomX(x):
	pass

func string_delete(x, y, z):
	pass
	
func string_insert(x, y, z):
	pass

func collision_point(v, w, x, y, z):
	pass

func instance_create(x, y, block_type):
	var instance = block_type.instantiate()
	print('hi')
	add_child(instance)
	instance.position.x = x
	instance.position.y = y
	print(instance.position.y)

func tile_add(var1, var2, var3, var4, var5, var6, var7, var8):
	pass

func scrGenerateItem(x,y,z):
	pass

func scrShopItemsGen():
	pass
