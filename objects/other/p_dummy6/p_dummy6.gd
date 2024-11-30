
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # DY:  dummy actor for end

#    if (global.i"damsel): sprite_index = s_damsel_left"
#    elif (global.i"tunnel_man): sprite_index = s_tunnel_left"

    

#func draw():
    #    image_xscale = -1
#    draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
