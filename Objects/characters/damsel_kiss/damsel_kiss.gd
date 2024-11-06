
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == "damsel_kiss_l or sprite_index == s_p_kiss_l):"

#        kissed = true
#        if (global.i"damsel): sprite_index = s_stand_left"
#        else: sprite_index = "damsel_left"


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed = 0.5

#    kissed = false

#    IDLE = 0
#    RUN = 1
#    THROWN = 2
#    YELL = 3
#    EXIT = 4
#    status = IDLE

#    if (global.i"damsel): sprite_index = s_stand_left"

    

#func room end():
    #    global.plife += 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((sprite_index == "damsel_kiss_l or sprite_index = s_p_kiss_l) and image_index == 7):"

#        gml.instance_create(position.x-8, position.y-8, Objects.heart)
#        Audio.play_sound(global.snd_kiss)
