extends Item


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_bullet():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="bullet">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">gml.instance_destroy()</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_whip():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="whip">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">Audio.play_sound(global.snd_break)
#    gml.instance_create(position.x, position.y, "smoke_puff")
#    for (i = 0 i < 3 i += 1)

#        piece = gml.instance_create(position.x-2, position.y-2, "rubble_small")
#        piece.x_vel = randi_range(1,3)-randi_range(1,3)

    
#    if (randi_range(1,3) == 1): gml.instance_create(position.x, position.y, "gold_chunk")
#    elif (randi_range(1,6) == 1): gml.instance_create(position.x, position.y, "gold_nugget")
#    elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "emerald_big")
#    elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "sapphire_big")
#    elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "ruby_big")
#    elif (randi_range(1,6) == 1): gml.instance_create(position.x-8, position.y-8, "spider")
#    elif (randi_range(1,12) == 1): gml.instance_create(position.x-8, position.y-8, "snake")
#    if (held):

#        player1.hold_item = 0
#        player1.pickup_item_type = ""

#    gml.instance_destroy()</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func create():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
#      <actions>
#        <action id="604" library="1">
#          <!--action name: Inherited-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>false</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_inherited</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
#        </action>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">type = "Jar"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -6, 4, 6)
#    break_pieces = true</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func destroy():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DESTROY" id="0">
#      <actions>
#        <action id="604" library="1">
#          <!--action name: Inherited-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>false</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_inherited</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
#        </action>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">if (break_pieces):

#        Audio.play_sound(global.snd_break)
#        gml.instance_create(position.x, position.y, "smoke_puff")
#        for (i = 0 i < 3 i += 1)
    
#            piece = gml.instance_create(position.x-2, position.y-2, "rubble_small")
#            if (col_left): piece.x_vel = randi_range(1,3)
#            elif (col_right): piece.x_vel = -randi_range(1,3)
#            else: piece.x_vel = randi_range(1,3)-randi_range(1,3)
#            if (col_top): piece.y_vel = randi_range(0,3)
#            else: piece.y_vel = -randi_range(0,3)
    
    
#        if (randi_range(1,3) == 1): gml.instance_create(position.x, position.y, "gold_chunk")
#        elif (randi_range(1,6) == 1): gml.instance_create(position.x, position.y, "gold_nugget")
#        elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "emerald_big")
#        elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "sapphire_big")
#        elif (randi_range(1,12) == 1): gml.instance_create(position.x, position.y, "ruby_big")
#        elif (randi_range(1,6) == 1): gml.instance_create(position.x-8, position.y-8, "spider")
#        elif (randi_range(1,12) == 1):
    
#            if (col_left): gml.instance_create(position.x, position.y-8, "snake")
#            elif (col_right): gml.instance_create(position.x-16, position.y-8, "snake")
#            else: gml.instance_create(position.x-8, position.y-8, "snake")
    
    
#        if (held):
    
#            player1.hold_item = 0
#            player1.pickup_item = ""
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func step():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
#      <actions>
#        <action id="605" library="1">
#          <!--action name: Comment-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>false</can_apply_to>
#          <action_type>NONE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">overrides parent step</argument>
#          </arguments>
#        </action>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">destroy = false
#    col_top = false
#    col_left = false
#    col_right = false
#    col_bot = false
#    if (held):

#        if (character.facing == LEFT):
    
#            position.x = character.position.x - 4  
    
#        elif (character.facing == RIGHT):
    
#            position.x = character.position.x + 4  
    
    
#        if (character.state == DUCKING and abs(character.x_vel) < 2): position.y = character.position.y + 4
#        else: position.y = character.position.y  
#        depth = 1

#    else:

#        PlatformEngine.move_to(x_vel, y_vel)

#        if (y_vel < 6):
    
#            y_vel += my_grav
    
    
#        if (Collision.is_collision_top(1)): col_top = true    
#        if (Collision.is_collision_left(1)): col_left = true
#        if (Collision.is_collision_right(1)): col_right = true
#        if (Collision.is_collision_bottom(1)): col_bot = true

#        if (col_top and y_vel < 0):
    
#            if (y_vel < -3): destroy = true
#            y_vel = -y_vel * 0.8
    
    
#        if (col_left or col_right):
    
#            if (abs(x_vel) > 3): destroy = true
#            x_vel = -x_vel * 0.5
    
    
#        if (gml.collision_point(position.x, position.y, "solid", 0, 0)): destroy = true
    
#        if (col_bot):
    
#            if (y_vel > 3): destroy = true
    
#            # DY:  bounce
#            if (y_vel > 1): y_vel = -y_vel * 0.5
#            else: y_vel = 0
        
#            # DY:  friction
#            if (abs(x_vel) < 0.1): x_vel = 0
#            elif (abs(x_vel) != 0): x_vel *= 0.3
    
    
#        if (col_left):
    
#            if (not col_right): position.x += 1
#            y_vel = 0
    
#        elif (col_right):
    
#            position.x -= 1
#            y_vel = 0
    
    
#        if (Collision.is_collision_bottom(0) and abs(y_vel) < 1):
    
#            position.y -= 1
#            y_vel = 0
    

#        depth = 100
    
#        if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0)):
    
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0
#            position.y += 0.05
    
#        if (gml.collision_point(position.x, position.y-5, "lava", 0, 0)):
    
#            if (type == "Bomb"):
        
#                gml.instance_create(position.x, position.y, "explosion")
#                for (i = 0 i < 3 i += 1)
            
#                    gml.instance_create(position.x, position.y, "flame")
            

#                Audio.play_sound(global.snd_explosion)
        
#            gml.instance_destroy()
    


#    if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "enemy", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

#        enemy = instance_nearest(position.x, position.y, enemy)
#        if (not enemy.invincible):
    
#            enemy.x_vel = x_vel
#            with enemy
        
#                if (type == "Caveman" or type == "Man_trap" or type == "Yeti" or type == "Hawkman" or type == "Shopkeeper"):
            
#                    if (status != 98):
                
#                        if (type == "Caveman" or type == "Yeti" or type == "Hawkman" or type == "Shopkeeper"):
                    
#                            for (i = 0 i < 1 i += 1)
                        
#                                gml.instance_create(position.x, position.y, "blood")
                        
                    
#                        status = STUNNED
#                        counter = stun_time
#                        y_vel = -6
#                        Audio.play_sound(global.snd_hit)
                
            
#                else:
            
#                    gml.instance_create(position.x+8, position.y+8, "blood")
#                    hp -= 1
#                    orig_x = position.x
#                    orig_y = position.y
#                    shake_counter = 10
#                    Audio.play_sound(global.snd_hit)
            
        
#            enemy.x_vel = x_vel * 0.3
        
#            if (type == "Arrow" or type == "Fish Bone"):
#                gml.instance_destroy()
    
    
#        destroy = true


#    if (type != "Damsel" and gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "damsel", 0, 0) and (abs(x_vel) > 2 or abs(y_vel) > 2)):

#        enemy = instance_nearest(position.x, position.y, damsel)
#        if (not enemy.invincible and (abs(x_vel) > 1 or abs(y_vel) > 1)):
    
#            for (i = 0 i < 1 i += 1)
        
#                gml.instance_create(position.x, position.y, "blood")
        
    
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
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
