extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var difficulty
var x_mid
var moon_room
var x_diff


func collision_with_arrow():
	Audio.play_sound(global.snd_hit)
	Audio.play_sound(global.snd_coin)
	moon_room.baskets += difficulty

	gml.instance_destroy(other)

	gml.instance_create(x_mid, -64, Objects.bat_target)

	if (sprite_index == "ufo"): gml.instance_create(position.x, position.y, Objects.ufcrash)
	else: MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
	gml.instance_destroy(self)


func collision_with_character():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (abs(other.position.x-(position.x+8)) > 12):

		# DY:  do nothing
		pass

	elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		Audio.play_sound(global.snd_hit)
		Audio.play_sound(global.snd_coin)
		moon_room.baskets += difficulty

		gml.instance_create(position.x, -64, Objects.bat_target)

		MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
		gml.instance_destroy(self)

	elif (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
	
		if (global.plife > 0): global.plife -= 1
		MiscScripts.scr_create_blood(position.x+4, position.y+4, 1)
		Audio.play_sound(global.snd_hurt)


func create():
	bloodless = false
	UP = 0
	DOWN = 1
	dir = 1
	if (position.x == 208): difficulty = 2
	elif (position.x == 256): difficulty = 4
	else: difficulty = 1
	x_mid = position.x
	x_diff = 0
	moon_room = gml.get_instance("moon_room") #--- adding reference here
	if (moon_room.timer <= 20):

		difficulty += 2
		sprite_index = "ufo"
	

func step():
	if (dir == UP):

		position.y -= difficulty
		if (position.y <= 64):
	
			dir = DOWN
	

	elif (dir == DOWN):

		position.y += difficulty
		if (position.y >= 160):
	
			dir = UP
	

	
	if (moon_room.timer <= 20 and position.y > 64):

		position.x = x_mid - abs(sin(x_diff)*32)
		x_diff += 0.01
