
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
#    if (sprite_index == "ghost_turn_right):"

#        sprite_index = "ghost_right"

#    elif (sprite_index == "ghost_turn_left):"

#        sprite_index = "ghost_left"

#    elif (sprite_index == "ghost_disappear):"

#        gml.instance_destroy(self)


    

#func collision_with_character():
#    if (other.invincible == 0):

#        if (true):
    
#            if (InLevel.is_real_level()): global.enemy_deaths[23] += 1
#            for repetition in range(3):
        
#                gml.instance_create(other.position.x, other.position.y, Objects.bone)
        
#            skull = gml.instance_create(other.position.x, other.position.y-2, Objects.skull)
#            skull.y_vel = -gml.rand(1,3)
#            skull.x_vel = gml.rand(0,3)-gml.rand(0,3)
#            other.visible = false
#            other.invincible = 9999
#            other.bounced = true
#            global.plife = -99
#            Audio.play_sound(global.snd_die)
#            global.draw_hud = false
        
#            if (other.hold_item):
        
#                other.hold_item.held = false
#                if (facing == LEFT): other.hold_item.x_vel = -2
#                else: other.hold_item.x_vel = 2
#                other.hold_item.y_vel = -4
#                other.hold_item = 0
        
        
#            status = IDLE
#            image_speed = 0.2
#            sprite_index = "ghost_disappear"
#            Audio.play_sound(global.snd_ghost)
    



    

#func collision_with_whip():
#    # DY: 

    

#func create():
#    # action_inherited
#    super()

#    # main_code
#    image_speed = 0.5
#    Collision.set_collision_bounds(self, 4, 0, 12, 16)
#    origX = 0
#    origY = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2

#    # DY:  stats
#    hp = 1
#    invincible = 1

#    # DY:  status
#    IDLE = 0
#    ATTACK = 1

#    status = 1

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1

#    Audio.play_sound(global.snd_ghost)

    

#func step():
#    if (hp < 1):

#        # DY: global.bats += 1
#        global.kills += 1
#        gml.instance_destroy(self)


#    dir = 0
#    dist = point_distance(position.x+8, position.y+8, character.position.x, character.position.y)

#    if (status == IDLE):

#        # DY:  do nothing

#    elif (status == ATTACK):

#        dir = point_direction(position.x+8, position.y+8, character.position.x, character.position.y)
#        position.x += 1 * cos(degtorad(dir))
#        position.y += -1 * sin(degtorad(dir))
#        if (character.position.x < position.x+8):
    
#            if (sprite_index == "ghost_right):" sprite_index = "ghost_turn_left"
    
#        else:
    
#            if (sprite_index == "ghost_left):" sprite_index = "ghost_turn_right"
