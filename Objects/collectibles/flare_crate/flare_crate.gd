
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y-4+randi_range(0,3)-randi_range(0,3), Objects.flare_spark)
#    alarm_0(2)

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Flare Crate"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -6, 0, 6, 8)

#    image_speed = 0.2
#    alarm_0(1)
#    heavy = true

#    y_vel = 0
#    y_acc = 0.2

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (gml.collision_point(position.x, position.y, "water", -1, -1)):

#        gml.instance_create(position.x, position.y, Objects.splash)
#        Audio.play_sound(global.snd_splash)
#        if (held):
    
#            with player1
        
#                hold_item = 0
#                pickup_item_type = ""
        
#            held = false
    
#        gml.instance_create(position.x, position.y, Objects.poof)
#        gml.instance_destroy(self)
