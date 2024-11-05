
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_bullet():
    #    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "skull"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    break_pieces = true
#    col_top = false
#    col_left = false
#    col_right = false
#    col_bot = false

    

#func destroy():
    #    # action_inherited
#    super()

#    # main_code
#    if (break_pieces):

#        Audio.play_sound(global.snd_break)
#        gml.instance_create(position.x, position.y, Objects.smoke_puff)
#        for (i = 0 i < randi_range(1,2) i += 1)
    
#            piece = gml.instance_create(position.x-2, position.y-2, Objects.bone)
#            if (col_left): piece.x_vel = randi_range(1,3)
#            elif (col_right): piece.x_vel = -randi_range(1,3)
#            else: piece.x_vel = randi_range(1,3)-randi_range(1,3)
#            if (col_top): piece.y_vel = randi_range(0,3)
#            else: piece.y_vel = -randi_range(0,3)
    
#        if (held):
    
#            player1.hold_item = 0
#            player1.pickup_item = ""
    


    

#func step():
    #    # main_code
#    overrides parent step
#    # main_code
#    destroy = false
#    col_top = false
#    col_left = false
#    col_right = false
#    col_bot = false
#    if (held):

#        if (character.facing == left):
    
#            position.x = character.position.x - 4  
    
#        elif (character.facing == right):
    
#            position.x = character.position.x + 4  
    
    
#        if (character.state == ducking and abs(character.x_vel) < 2): position.y = character.position.y + 4
#        else: position.y = character.position.y  
#        depth = 1

#    else:

#        PlatformEngine.move_to(x_vel, y_vel)

#        if (y_vel < 6):
    
#            y_vel += my_grav
    
    
#        if (Collision.i"collision_top(1)): col_top = true    "
#        if (Collision.i"collision_left(1)): col_left = true"
#        if (Collision.i"collision_right(1)): col_right = true"
#        if (Collision.i"collision_bottom(1)): col_bot = true"

#        if (col_top and y_vel < 0):
    
#            if (y_vel < 2): destroy = true
#            y_vel = -y_vel * 0.8
    
    
#        if (col_left or col_right):
    
#            if (abs(x_vel) > 2): destroy = true
#            x_vel = -x_vel * 0.5
    
    
#        if (col_bot):
    
#            if (y_vel > 3): destroy = true
    
#            # dy:  bounce
#            if (y_vel > 1): y_vel = -y_vel * 0.5
#            else: y_vel = 0
        
#            # dy:  friction
#            if (abs(x_vel) < 0.1): x_vel = 0
#            elif (abs(x_vel) != 0): x_vel *= 0.3
    
    
#        if (col_left):
    
#            if (not col_right): position.x += 1
#            y_vel = 0
    
#        elif (col_right):
    
#            position.x -= 1
#            y_vel = 0
    
    
#        if (Collision.i"collision_bottom(0) and abs(y_vel) < 1):"
    
#            position.y -= 1
#            y_vel = 0
    

#        depth = 100
    
#        if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0)):
    
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0
#            position.y += 0.05
    
#        if (gml.collision_point(position.x, position.y-5, "lava", 0, 0)):
    
#            if (type == "bomb"):
        
#                gml.instance_create(position.x, position.y, Objects.explosion)
#                for i in range(0, 3):
            
#                    gml.instance_create(position.x, position.y, Objects.flame)
            

#                Audio.play_sound(global.snd_explosion)
        
#            gml.instance_destroy()
    


#    if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "enemy", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

#        enemy = instance_nearest(position.x, position.y, enemy)
#        if (not enemy.invincible):
        
#            enemy.x_vel = x_vel
#            with enemy
        
#                if (type == "caveman" or type == "man_trap" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
            
#                    if (status != 98):
                
#                        if (type == "caveman" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
                    
#                            for i in range(0, 1):
                        
#                                gml.instance_create(position.x, position.y, Objects.blood)
                        
                    
#                        status = stunned
#                        counter = stun_time
#                        y_vel = -6
#                        Audio.play_sound(global.snd_hit)
                
            
#                else:
            
#                    gml.instance_create(position.x+8, position.y+8, Objects.blood)
#                    hp -= 1
#                    origX = position.x
#                    origY = position.y
#                    shake_counter = 10
#                    Audio.play_sound(global.snd_hit)
            
        
#            enemy.x_vel = x_vel * 0.3
        
#            if (type == "arrow" or type == "fish bone"):
#                gml.instance_destroy()
    
    
#        destroy = true


#    if (type != "damsel" and gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "damsel", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

#        enemy = instance_nearest(position.x, position.y, damsel)
#        if (not enemy.invincible and (abs(x_vel) > 1 or abs(y_vel) > 1)):
    
#            for i in range(0, 1):
        
#                gml.instance_create(position.x, position.y, Objects.blood)
        
    
#        with enemy
    
#            if (held): held = false
#            with player1  hold_item = 0 
#            hp -= 1
#            y_vel = -6
#            status = 2
#            counter = 120
    
#        enemy.x_vel = x_vel * 0.3
        
#        destroy = true


#    if (destroy):

#        if (held):
    
#            player1.hold_item = 0
#            player1.pickup_item_type = ""
    
#        gml.instance_destroy()
