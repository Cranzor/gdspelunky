extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func collision_with_bullet():
	gml.instance_create(other.position.x, other.position.y, Objects.smoke_puff, self)
	Audio.play_sound(global.snd_hit)
	gml.instance_destroy(other)


func collision_with_character():
	if (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		other.y_vel = -2
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
	
		if (global.plife > 0): global.plife -= 1
		Audio.play_sound(global.snd_hurt)


func collision_with_item():
	if (other.type == "bomb"):

	
		other.sprite_index = "bomb_armed"
		other.image_speed = 1
		other.alarm_1_countdown.start(gml.rand(4,8))

	other.x_vel = -gml.rand(4,6)
	other.y_vel = -2

	if (other.held):
		var character = gml.get_instance("character") #---[FLAG] may have to change for multiplayer
		if (character): character.hold_item = null


func collision_with_web_ball():
	gml.instance_destroy(other)
