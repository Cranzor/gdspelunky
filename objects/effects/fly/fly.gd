extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func collision_with_character():
	if (other.sprite_index != "p_exit" and other.sprite_index != "damsel_exit" and other.sprite_index != "tunnel_exit"):

		if (global.plife > 0):
	
			global.plife -= 2
			if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[20] += 1
	
		other.x_vel = x_vel
		other.y_vel = -4

	
		gml.instance_create(other.position.x, other.position.y, Objects.blood)
		other.stunned = true
		other.stun_timer = 20
	

		Audio.play_sound(global.snd_hurt)
		gml.instance_destroy(self)


func collision_with_damsel():
	if (not other.invincible):

		if (other.blood_left > 0):
	
			MiscScripts.scr_create_blood(other.position.x+sprite_width/2, other.position.y+sprite_height/2, 1, self) #---[FLAG] check division
			if (other.hp < 0): other.blood_left -= 1
		

		if (other.held):
	
			other.held = false
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			player1.hold_item = null
	
		other.hp -= 2
		other.y_vel = -6
		other.status = 2
		other.counter = 120
	
		other.x_vel = x_vel * 0.3
		Audio.play_sound(global.snd_damsel)
		gml.instance_destroy(self)


func collision_with_enemy():
	if (other.type != "tomb lord"):

		if (other.heavy):
	
			other.x_vel = x_vel*0.5
			other.y_vel = -2
	
		else:
	
			other.x_vel = x_vel
			other.y_vel = -4
	
		other.x_vel = x_vel
		other.y_vel = -4

	
		other.hp -= 2
		if (other.blood_left > 0):
	
			MiscScripts.scr_create_blood(other.position.x+sprite_width/2, other.position.y+sprite_height/2, 1, self) #---[FLAG] check division
			if (other.hp < 0): other.blood_left -= 1
	
		other.status = 98
		other.counter = 20
	

		Audio.play_sound(global.snd_hit)
		gml.instance_destroy(self)


func collision_with_solid():
	gml.instance_create(position.x, position.y, Objects.smoke_puff)
	Audio.play_sound(global.snd_hit)
	gml.instance_destroy(self)


func create():
	x_vel = 0
	y_vel = -gml.random(3)+0.5


func step():
	position.x += x_vel
	position.y += y_vel

	if (x_vel < 0): sprite_index = "fly_left"
	else: sprite_index = "fly_right"
