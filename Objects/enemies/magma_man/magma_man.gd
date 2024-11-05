
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    whipped = false

    

#func animation_end():
    #    if (sprite_index == "magma_man_die):"

#        gml.instance_destroy()


    

#func collision with o_bomb():
    #    if (other.sprite_index != "bomb_armed):"

#        with other
    
#            sprite_index = "bomb_armed"
#            image_speed = 1
#            alarm_1()randi_range(8,12)
    


#    if (other.position.x < position.x): other.x_vel = -randi_range(2,4)
#    else: other.x_vel = randi_range(2,4)
#    if (other.position.y < position.y): other.y_vel = -randi_range(2,4)

#    if (other.held):

#        if (character): character.hold_item = 0


    

#func collision with o_character():
    #    if (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        other.stunned = true
#        other.stun_timer = 20
#        other.burning = 100
#        other.y_vel = -4
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
#        gml.instance_create(other.position.x, other.position.y, Objects.blood)
    
#        if (global.plife > 0):
    
#            global.plife -= 2
#            if (global.plife <= 0 and InLevel.i"real_level()): global.enemy_deaths[21] += 1"
    
#        Audio.play_sound(global.snd_hurt)
#        Audio.play_sound(global.snd_flame)


    

#func collision with o_enemy():
    #    if (other.type != "magma man"):

#        other.y_vel = -4
#        if (position.x < other.position.x):
#            other.x_vel = -3
#        else:
#            other.x_vel = 3
#        if (other.status != 98): Audio.play_sound(global.snd_flame)
#        with other
    
#            burning = 100
#            hp -= 2
#            if (type != "tomb lord" and type != "yeti king"):
        
#                status = 98
#                counter = 50
        
    


    

#func collision with o_whip():
    #    if (not whipped):

#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5

#    # dy:  stats
#    type = "magma man"
#    hp = 200
#    invincible = 0

#    idle = 0
#    walk = 1
#    attack = 2
#    throw = 3
#    stunned = 98
#    dead = 99
#    status = idle

#    whipped = false

#    bounced = false
#    dead = false
#    counter = 0
#    sight_counter = 0

#    left = 0
#    right = 1
#    facing = right

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    if (hp > 0): hp -= 1
#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0) or hp < 1):

#        x_vel = 0
#        y_vel = 0
#        status = dead
#        sprite_index = "magma_man_die"


#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (Collision.i"collision_bottom(1)):"
#        y_vel = 0
#    else:

#        gml.instance_create(position.x+8, position.y+8, Objects.magma)
#        gml.instance_destroy()

#    /*
#    if (status != dead and hp < 1):

#        status = dead
#    )
#    */

#    if (randi_range(1,20) == 1): gml.instance_create(position.x+randi_range(4,12), position.y+randi_range(4,12), Objects.burn)
#    burning -= 1
    
#    if (status == idle):

#        if (y_vel < 0 and Collision.i"collision_top(1)):"
    
#            y_vel = 0
    

#        if (Collision.i"collision_bottom(1) and counter > 0): counter -= 1    "
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = walk
#            if (randi_range(1,6) == 1):
        
#                magma = gml.instance_create(position.x+8, position.y+8, Objects.magma)
#                magma.hp = hp
#                gml.instance_destroy()
        
    

#    elif (status == walk):

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (facing == left):
    
#            x_vel = -1.5
#            if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
        
#                status = idle
#                counter = randi_range(20,50)
#                x_vel = 0
        
    
#        else:
    
#            x_vel = 1.5
#            if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
        
#                status = idle
#                counter = randi_range(20,50)
#                x_vel = 0
         
    
    
#        if (randi_range(1,100) == 1):
    
#            status = idle
#            counter = randi_range(20,50)
#            x_vel = 0
    


#    PlatformEngine.move_to(x_vel,y_vel)
#    if (Collision.i"collision_solid()):"
#        position.y -= 2

#    if (status < stunned and status != throw):

#        if (abs(x_vel) > 0): sprite_index = "magma_man_walk_l"
#        else: sprite_index = "magma_man_left"
