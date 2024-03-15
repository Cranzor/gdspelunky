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
	other()
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

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func other():
	for i in range(0,4):
		for j in range(0,4):
			roomPath[[i,j]] = 0
