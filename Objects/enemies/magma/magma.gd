
extends Detritus


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(position.x, position.y, Objects.magma_trail)
#    alarm_0(2)

    

#func animation_end():
    #    if (dying):

#        magma = gml.instance_create(position.x-8, position.y-8, Objects.magma_man)
#        magma.hp = hp
#        gml.instance_destroy()


    

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
    
#        if (global.plife > 0): global.plife -= 2
#        Audio.play_sound(global.snd_hurt)
#        Audio.play_sound(global.snd_flame)


    

#func collision with o_enemy():
    #    if (other.type != "Magma Man"):

#        other.y_vel = -4
#        if (position.x < other.position.x):
#            other.x_vel = -3
#        else:
#            other.x_vel = 3
#        if (other.status != 98): Audio.play_sound(global.snd_flame)
#        with other
    
#            burning = 100
#            hp -= 2
#            status = 98
#            counter = 50
    


    

#func collision with o_water():
    #    gml.instance_create(position.x, position.y, Objects.smoke_puff)
#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed
#    0.3
#    # main_code
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -8, -8, 8, 8)
#    x_vel = random(4) - random(4)
#    y_vel = -1 - random(2)
#    grav = randi_range(1,6) * 0.1
#    hp = 200

#    alarm_0(2)
#    alarm_1(50)


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (Collision.is_collision_bottom(1)):

#        sprite_index = "magma_man_create"
#        x_vel = 0
#        y_vel = 0
#        dying = true
