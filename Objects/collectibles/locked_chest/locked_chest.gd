
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_key():
    #    if (other.held and sprite_index == "locked_chest):"

#        other.held = false
#        with player1
    
#            hold_item = 0
#            pickup_item_type = ""
    
#        with other  gml.instance_destroy() 
    
#        sprite_index = "locked_chest_open"
#        Audio.play_sound(global.snd_chest_open)
#        obj = gml.instance_create(position.x, position.y, Objects.udjat_eye)
#        obj.x_vel = randi_range(0,3) - randi_range(0,3)
#        obj.y_vel = -2
#        obj = gml.instance_create(position.x, position.y, Objects.poof)
#        with obj  x_vel = -0.4 
#        obj = gml.instance_create(position.x, position.y, Objects.poof)
#        with obj  x_vel = 0.4 
#        gml.instance_destroy()


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "locked chest"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -2, 6, 8)

#    heavy = true

#    y_vel = 0
#    y_acc = 0.2

    

#func step():
    #    # action_inherited
#    super()
