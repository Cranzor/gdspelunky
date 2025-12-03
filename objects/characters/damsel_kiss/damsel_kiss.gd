extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions
var kissed


func animation_end():
	if (sprite_index == "damsel_kiss_l" or sprite_index == "p_kiss_l"):

		kissed = true
		if (global.is_damsel): sprite_index = "stand_left"
		else: sprite_index = "damsel_left"


func create():
	# action_inherited
	super()

	# main_code
	image_speed = 0.5

	kissed = false

	IDLE = 0
	RUN = 1
	THROWN = 2
	YELL = 3
	EXIT = 4
	status = IDLE

	if (global.is_damsel): sprite_index = "stand_left"


func room_end(): #---[FLAG] need to implement
	global.plife += 1


func step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function

	# main_code
	if ((sprite_index == "damsel_kiss_l" or sprite_index == "p_kiss_l") and image_index == 7):

		gml.instance_create(position.x-8, position.y-8, Objects.heart, self)
		Audio.play_sound(global.snd_kiss)
