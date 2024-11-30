
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
#    # action_inherited
#    super()

#    # main_code
#    type = "dice"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -6, 0, 6, 8)
#    heavy = true
#    rolled = false
#    rolling = false
#    value = gml.rand(1,6)

    

#func draw():
#    draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    if (!rolled and player1.bet > 0):

#        draw_sprite_ext(s_red_arrow_down, 0, position.x, position.y-12, 1, 1, 0, c_white, 1)


    

#func step():
#    if ((position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview")+16 and:
#            position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")+16))

#        if (cost > 0 and:
#            not gml.instance_exists("shopkeeper"))
    
#            cost = 0
    

#        # DY:  stealing makes shopkeeper angry
#        if (InLevel.is_level()):
    
#            if (not InLevel.is_in_shop(position.x, position.y)):
        
#                InLevel.scr_shopkeeper_anger(0)
        
    

#        if (held):
    
#            if (character.facing == LEFT): position.x = character.position.x - 4  
#            elif (character.facing == RIGHT): position.x = character.position.x + 4  
	    
#            if (heavy):
        
#                if (character.state == DUCKING and abs(character.x_vel) < 2): position.y = character.position.y
#                else: position.y = character.position.y-2  
        
#            else:
        
#                if (character.state == DUCKING and abs(character.x_vel) < 2): position.y = character.position.y + 4
#                else: position.y = character.position.y+2  
        
#            depth = 1
	    
#            if (character.hold_item == 0):
        
#                held = false
        
    
#        else:
    
#            PlatformEngine.move_to(x_vel, y_vel)

#            col_left = false
#            col_right = false
#            col_bot = false
#            col_top = false
#            if (Collision.is_collision_left(1)): col_left = true
#            if (Collision.is_collision_right(1)): col_right = true
#            if (Collision.is_collision_bottom(1)): col_bot = true
#            if (Collision.is_collision_top(1)): col_top = true

#            if (not col_bot and y_vel < 6): y_vel += my_grav
	    
#            if (col_left or col_right): x_vel = -x_vel * 0.5
	    
#            if (col_bot):
        
#                # DY:  bounce
#                if (y_vel > 1): y_vel = -y_vel * bounce_factor
#                else: y_vel = 0
	        
#                # DY:  friction
#                if (abs(x_vel) < 0.1): x_vel = 0
#                elif (abs(x_vel) != 0): x_vel *= friction_factor
	        
#                if (abs(y_vel) < 1):
            
#                    position.y -= 1
#                    if (not Collision.is_collision_bottom(1)): position.y += 1
#                    y_vel = 0
            
        
	    
#            if (col_left):
        
#                if (not col_right): position.x += 1
#                # DY: y_vel = 0
        
#            elif (col_right):
        
#                position.x -= 1
#                # DY: y_vel = 0
        
	    
#            if (Collision.is_collision_top(1)):
        
#                if (y_vel < 0): y_vel = -y_vel * 0.8
#                else: position.y += 1
        

#            if (global.has_spectacles): depth = 0
#            else: depth = 101
	    
#            if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0)):
        
#                my_grav = 0
#                x_vel = 0
#                y_vel = 0
#                position.y += 0.05
        
    
#            if (gml.collision_point(position.x, position.y-5, "lava", 0, 0)):
        
#                gml.instance_destroy(self)
        
    

#        if ((abs(x_vel) > 3 or abs(y_vel) > 3)):
    
#            if (gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "enemy", 0, 0)):
        
#                obj = instance_nearest(position.x, position.y, enemy)
#                if (not obj.invincible and obj.type != "Magma Man"):
            
#                    obj.x_vel = x_vel
#                    with obj
                
#                        if (type == "Caveman" or type == "ManTrap" or type == "Yeti" or type == "Hawkman"):
                    
#                            if (status != STUNNED):
                        
#                                if (type == "Caveman" or type == "Yeti" or type == "Hawkman"):
                            
#                                    gml.instance_create(position.x, position.y, Objects.blood)
                            
#                                elif (type == "ManTrap"):
                            
#                                    gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
                            
#                                hp -= 1
#                                status = STUNNED
#                                counter = stun_time
#                                y_vel = -6
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "Shopkeeper"):
                    
#                            if (status < 98):
                        
#                                gml.instance_create(position.x, position.y, Objects.blood)
#                                hp -= 1
#                                y_vel = -6
#                                status = 2
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "Giant Spider"):
                    
#                            if (whipped == 0):
                        
#                                gml.instance_create(position.x+16, position.y+24, Objects.blood)
#                                hp -= 1
#                                whipped = 10
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "Alien Boss"):
                    
#                            if (status != 99 and sprite_index != "alien_boss_hurt):"
                        
#                                gml.instance_create(position.x+8, position.y+8, Objects.blood)
#                                hp -= 1
#                                sprite_index = "alien_boss_hurt"
#                                image_speed = 0.8
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        else:
                    
#                            gml.instance_create(position.x+8, position.y+8, Objects.blood)
#                            hp -= 1
#                            origX = position.x
#                            origY = position.y
#                            Audio.play_sound(global.snd_hit)
                    
                    
                
#                    obj.x_vel = x_vel * 0.3
            
        

#            if (gml.collision_rectangle(position.x-2, position.y-2, position.x+2,  position.y+2, "damsel", 0, 0)):
        
#                obj = instance_nearest(position.x, position.y, damsel)
#                if (not obj.invincible and obj.status != 2 and obj.status != 99):
            
#                    gml.instance_create(position.x, position.y, Objects.blood)
#                    with obj
                
#                        if (held):
                    
#                            held = false
#                            with player1  hold_item = 0 pickup_item_type = "" 
                    
#                        hp -= 1
#                        y_vel = -6
#                        status = 2
#                        counter = 120
                
#                    obj.x_vel = x_vel * 0.3
                
#                    Audio.play_sound(global.snd_hit)
            
        
    


#    if (abs(y_vel) > 2 or abs(x_vel) > 2):

#        sprite_index = "dice_roll"
#        value = gml.rand(1,6)
#        if (player1.bet > 0): rolling = true

#    elif (Collision.is_collision_bottom(1)):

#        if (rolling and y_vel == 0):
    
#            if (rolled): InLevel.scr_shopkeeper_anger(0) # DY:  NO CHEATING!
#            rolled = true
#            rolling = false
    
#        if (value == 1): sprite_index = "dice1"
#        elif (value == 2): sprite_index = "dice2"
#        elif (value == 3): sprite_index = "dice3"
#        elif (value == 4): sprite_index = "dice4"
#        elif (value == 5): sprite_index = "dice5"
#        else: sprite_index = "dice6"
