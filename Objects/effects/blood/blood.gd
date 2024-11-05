
extends Detritus


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    if (global.graphic"high):"

#        if (gml.instance_number(blood_trail) < 12): gml.instance_create(position.x, position.y, Objects.blood_trail)
#        alarm_0(4)


    

#func alarm 1():
    #    invincible = false
#    bounce = true

    

#func alarm 2():
    #    collectible = true

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed
#    0.3
#    # main_code
#    x_vel = random(4) - random(4)
#    y_vel = -1 - random(2)
#    grav = randi_range(1,6) * 0.1
#    invincible = true
#    bounce = false
#    collectible = false

#    alarm_0(1)
#    alarm_1(1)
#    alarm_2(5)

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (y_vel > 6): gml.instance_destroy()

#    if (Collision.i"collision_bottom(1)):"

#        if (life > 20): life = 20
