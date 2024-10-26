extends Enemy


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="0">
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
#            <argument kind="STRING">whipped = false</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_blood():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="blood">
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
#            <argument kind="STRING">hp += 1
#    with other  gml.instance_destroy() </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_character():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="character">
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
#            <argument kind="STRING">if (abs(other.position.x-(position.x+8)) > 8):

#        # DY:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

#        # DY:  Jumped on
#        if (status < STUNNED):
    
#            other.y_vel=-6-0.2*other.y_vel
#            if (global.has_spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#            else: hp -= (1 * (floor(other.fall_timer/16)+1))
#            other.fall_timer = 0
#            counts_as_kill = true
#            status = STUNNED
#            counter = stun_time
#            y_vel = -6
#            if (other.position.x < position.x+8): x_vel += 1
#            else: x_vel -= 1
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
    

#    elif (other.invincible == 0):

#        if (status < STUNNED):
    
#            other.blink = 30
#            other.invincible = 30
#            if (other.position.y < position.y):
#                other.y_vel = -6
#            if (other.position.x < position.x):
#                other.x_vel = -6
#            else:
#                other.x_vel = 6
#            gml.instance_create(other.position.x, other.position.y, "blood")
    
#            if (global.plife > 0): global.plife -= 1
#            Audio.play_sound(global.snd_hurt)
    
#    </argument>
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
#            <argument kind="STRING">if (status < STUNNED or other.type == "Machete"):

#        hp -= other.damage
#        MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_whip_pre():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="whip_pre">
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
#            <argument kind="STRING">if (status < STUNNED or other.type == "Machete"):

#        hp -= other.damage
#        MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)
#    </argument>
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
#            <argument kind="STRING">PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5

#    # DY:  stats
#    type = "Vampire"
#    hp = 6
#    invincible = 0
#    my_grav = 0.2
#    my_gravNorm = 0.2

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    THROW = 3
#    RECOVER = 4
#    BOUNCE = 5
#    HANG = 6
#    FLY = 7
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    whipped = false
#    bloodless = true
#    bounced = false
#    dead = false
#    counter = 0
#    stun_time = 60
#    sight_counter = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func step():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    if (status == STUNNED): my_grav = 0.6

#    PlatformEngine.move_to(x_vel,y_vel)

#    col_left = false
#    col_right = false
#    col_bot = false
#    col_top = false
#    if (Collision.is_collision_left(1)): col_left = true
#    if (Collision.is_collision_right(1)): col_right = true
#    if (Collision.is_collision_bottom(1)): col_bot = true
#    if (Collision.is_collision_top(1)): col_top = true

#    if (not held and status != HANG and status != FLY): y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (status >= STUNNED):

#        if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0)):
    
#            gml.instance_create(position.x+8, position.y+8, "smoke_puff")
#            Audio.play_sound(global.snd_caveman_die)
#            gml.instance_destroy()
    

#    elif (not held):

#        if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):
    
#            gml.instance_create(position.x+8, position.y+8, "smoke_puff")
#            Audio.play_sound(global.snd_caveman_die)
#            gml.instance_destroy()
    


#    if (Collision.is_collision_bottom(1) and status != STUNNED):
#        y_vel = 0

#    if (status != DEAD and status != STUNNED and hp < 1):

#        status = DEAD


#    if (burning > 0):

#        if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(4,12), position.y+randi_range(4,12), "burn")
#        burning -= 1


#    dist = distance_tpoint(player1.position.x-8, player1.position.y-8)

#    if (status == IDLE):

#        bounced = false
#        if (col_bot and:
#            (gml.collision_point(position.x-1, position.y, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            y_vel = -6
#            if (facing == LEFT): x_vel = -1
#            else: x_vel = 1
#            counter -= 10
    
    
#        if (y_vel < 0 and Collision.is_collision_top(1)):
    
#            y_vel = 0
    

#        if (Collision.is_collision_bottom(1) and counter > 0): counter -= 1    
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = WALK
    
    
#        if (dist < 96):
    
#            if (player1.position.x < position.x+8): facing = LEFT
#            elif (player1.position.x > position.x+8): facing = RIGHT
#            status = ATTACK
    

#    elif (status == WALK):

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
    
#        if (not col_bot):
    
#            # DY:  do nothing
    
#        elif (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    
#        elif (facing == LEFT):
    
#            x_vel = -1.5
#            if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
#                y_vel = 0
        
    
#        elif (facing == RIGHT):
    
#            x_vel = 1.5
#            if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
#                y_vel = 0
         
    
    
#        if (dist < 96): status = ATTACK

#    elif (status == ATTACK):

#        image_speed = 1
#        if (facing == LEFT and Collision.is_collision_left(4)):
    
#            if (Collision.is_collision_top(1)): facing = RIGHT
#            else: status = BOUNCE
    
#        elif (facing == RIGHT and Collision.is_collision_right(4)):
    
#            if (Collision.is_collision_top(1)): facing = LEFT
#            else: status = BOUNCE
    
#        elif (facing == LEFT):
    
#            if (not gml.collision_point(position.x-8, position.y+16, "solid", 0, 0)):
        
#                status = BOUNCE
        
    
#        elif (facing == RIGHT):
    
#            if (not gml.collision_point(position.x+8, position.y+16, "solid", 0, 0)):
        
#                status = BOUNCE
        
    
    
#        if (abs(player1.position.x-position.x) < 32 and player1.position.y < position.y+8 and not gml.collision_point(position.x+8, position.y+8, "water", 0, 0)): status = FLY
    
#        if (facing == LEFT): x_vel = -4
#        else: x_vel = 4

#    elif (status == RECOVER):

#        if (facing == LEFT and Collision.is_collision_left(1)):
    
#            facing = RIGHT
#            x_vel = -x_vel
    
#        elif (facing == RIGHT and Collision.is_collision_right(1)):
    
#            facing = LEFT
#            x_vel = -x_vel
    
#        elif (col_bot):
    
#            status = IDLE
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(40,100)
    
#        elif (not gml.collision_point(position.x+8, position.y+8, "water", 0, 0)):
    
#            if (randi_range(1,100) == 1): status = FLY
#            elif (gml.collision_point(position.x+8, position.y+24, "water", 0, 0)): status = FLY
    

#    elif (status == BOUNCE):

#        if (col_bot):
    
#            y_vel = -1 * randi_range(3,6)
    
#        else:
    
#            status = RECOVER
    

#    elif (status == STUNNED):

#        if (col_bot):
    
#            # DY:  do nothing
    
#        else:
    
#            if (x_vel == 0 and hp > 0): sprite_index = s_vampire_stun_l
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = s_vampire_bounce_l
#                else: sprite_index = s_vampire_fall_l
        
#            else:
        
#                if (abs(x_vel) > 0): sprite_index = s_vampire_die_ll
#                else: sprite_index = s_vampire_die_lr
        
    
    
#        if (col_bot and: not bounced)
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
    
    
#        if (held or col_bot):
    
#            if (counter > 0): counter -= 1
#            elif (hp > 0):
        
#                status = IDLE
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
        
    

#    elif (status == DEAD):

#        for repetition in range(1, 3):
    
#            gml.instance_create(other.position.x+8, other.position.y+8, "bone")
    
#        obj = gml.instance_create(other.position.x+8, other.position.y+8, "skull")
#        obj.y_vel = -randi_range(1,3)
#        obj.x_vel = randi_range(0,3)-randi_range(0,3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[7] += 1
#            global.vampires += 1
#            global.kills += 1
    
#        Audio.play_sound(global.snd_caveman_die)
#        obj = gml.instance_create(position.x+8, position.y+8, "cape_pickup")
#        obj.cost = 0
#        obj.for_sale = false
#        gml.instance_destroy()

#    elif (status == HANG):

#        x_vel = 0
#        y_vel = 0

#        if (not player1.dead and not player1.swimming and:
#            ((dist < 90 and player1.position.y > position.y + 16) or not gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)))
    
#            status = FLY
#            Audio.play_sound(global.snd_bat)
    

#    elif (status == FLY and gml.instance_exists("player1") and not player1.swimming and not player1.dead):

#        x_vel = 0
#        y_vel = 0

#        if (dist < 160):
    
#            dir = point_direction(position.x+8, position.y+8, player1.position.x, player1.position.y)
#            if (Collision.is_collision_right(1) and player1.position.x > position.x+8):
        
#                if (player1.position.y < position.y+8): dir = 90
#                else: dir = 270
        
#            if (Collision.is_collision_left(1) and player1.position.x < position.x+8):
        
#                if (player1.position.y < position.y+8): dir = 90
#                else: dir = 270
        
#            if (Collision.is_collision_top(1) and player1.position.y < position.y+8 and abs(player1.position.x - position.x) > 8):
        
#                if (player1.position.x < position.x+8): dir = 180
#                else: dir = 0
        
#            if (Collision.is_collision_bottom(1) and player1.position.y > position.y+8 and abs(player1.position.x - position.x) > 8):
        
#                if (player1.position.x < position.x+8): dir = 180
#                else: dir = 0
        
        
#            if (gml.collision_point(position.x+8, position.y+16, "water", 0, 0) and dir > 180 and dir < 360):
        
#                dir = 90
        
        
#            if (not gml.collision_point(position.x, position.y+12, "water", 0, 0) or player1.position.y < position.y):
        
#                x_vel = 2 * cos(degtorad(dir))
#                y_vel = -2 * sin(degtorad(dir))
        
    
#        else:
    
#            if (gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): status = HANG
#            else:
        
#                dir = 90
#                x_vel = 2 * cos(degtorad(dir))
#                y_vel = -2 * sin(degtorad(dir))  
        
    
    
#        if (player1.position.x < position.x+8): facing = LEFT
#        else: facing = RIGHT

#        if (col_bot or gml.collision_point(position.x, position.y, "water", 0, 0)):
    
#            status = IDLE
    

#    elif (status == FLY):

#        x_vel = 0
#        y_vel = 0
    
#        if (gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): status = HANG
#        else:
    
#            dir = 90
#            x_vel = 1 * cos(degtorad(dir))
#            y_vel = -1 * sin(degtorad(dir))  
    


#    if (status >= STUNNED):

#        scr_check_collisions()
    
#        if (x_vel == 0 and y_vel == 0 and hp < 1): status = DEAD


#    # DY: if (Collision.is_collision_solid()): position.y -= 2

#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (status == HANG): sprite_index = s_vampire_bat_hang
#    elif (status < STUNNED and status != THROW):

#        if (status == FLY): sprite_index = s_vampire_bat_left
#        elif (status == RECOVER): sprite_index = s_vampire_jump_l
#        elif (abs(x_vel) > 0): sprite_index = s_vampire_run_l
#        else: sprite_index = s_vampire_left

#    if (held):

#        if (hp > 0): sprite_index = s_vampire_held_l
#        else: sprite_index = s_vampire_d_held_l

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
