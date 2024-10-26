extends Enemy


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="7">
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
#            <argument kind="STRING">if (sprite_index == s_yeti_king_turn_r):

#        facing = RIGHT
#        status = WALK

#    if (sprite_index == s_yeti_king_turn_l):

#        facing = LEFT
#        status = WALK

#    if (sprite_index == s_yeti_king_yell_l or sprite_index == s_yeti_king_yell_r):

#        status = IDLE
#        counter = 30
#        image_speed = 0.25
#    </argument>
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
#            <argument kind="STRING"># DY:  jumped on - caveman, man_trap replaces this script with its own
#    if (abs(other.position.x-(position.x+16)) > 16):

#        # DY:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        if (global.has_spike_shoes):  hp -= (3 * ceil(other.fall_timer/16)) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#        else: hp -= (1 * ceil(other.fall_timer/16))
#        other.fall_timer = 0
#        counts_as_kill = true
#        gml.instance_create(position.x+16, position.y+8, "blood")
#        Audio.play_sound(global.snd_hit)

#    elif (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.y < position.y):
#            other.y_vel = -6
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0 and InLevel.is_real_level()):
    
#            global.plife -= 2
#            if (global.plife <= 0): global.enemy_deaths[14] += 1
    
#        Audio.play_sound(global.snd_hurt)

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
#            <argument kind="STRING">if (whipped == 0 and other.position.y < position.y+12):

#        if (other.puncture):
    
#            hp -= other.damage
#            counts_as_kill = true
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            Audio.play_sound(global.snd_hit)
#            whipped = 10
    
#        else:
    
#            Audio.play_sound(global.snd_hit)
#            whipped = 10
    

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
#    Collision.set_collision_bounds(6, 0, 26, 32)
#    x_vel = 2.5
#    image_speed = 0.25

#    # DY:  stats
#    type = "Yeti King"
#    hp = 30
#    invincible = 0
#    heavy = true

#    IDLE = 0
#    WALK = 1
#    TURN = 2
#    ATTACK = 3
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    can_pick_up = false
#    bounced = false
#    dead = false
#    whipped = 0
#    counter = 0
#    attack_timer = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func draw():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DRAW" id="0">
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
#            <argument kind="STRING">draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha)</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-36 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-36 and position.y < view_yview[0] + view_hview[0]))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (gml.collision_point(position.x+16, position.y+16, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+14+randi_range(0,4), position.y+14+randi_range(0,4), 3)
#        for repetition in range(1, 4):
    
#            gml.instance_create(position.x+14+randi_range(0,4), position.y+14+randi_range(0,6), "bone")
    
#        for repetition in range(1, 4):
    
#            if (randi_range(1,12) == 1):
        
#                obj = gml.instance_create(position.x+16, position.y+16, "spike_shoes")
#                obj.cost = 0
#                obj.for_sale = false
        
#            elif (randi_range(1,2) == 1): obj = gml.instance_create(position.x+16, position.y+16, "sapphire_big")
#            else:
        
#                obj = gml.instance_create(position.x+16, position.y+16, "rope_pile")
#                obj.cost = 0
#                obj.for_sale = false
        
#            obj.x_vel = randi_range(0,3)-randi_range(0,3)
#            obj.y_vel = -randi_range(1,2)
    
#        if (counts_as_kill):
    
#            global.enemy_kills[14] += 1
#            global.yetikings += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.is_collision_bottom(1) and status != STUNNED): y_vel = 0

#    if (attack_timer > 0): attack_timer -= 1
#    if (whipped > 0): whipped -= 1
    
#    if (status == IDLE):

#        if (counter > 0): counter -= 1    
#        if (counter <= 0):
    
#            status = WALK
    

#    elif (status == WALK):

#        if (counter > 0): counter -= 1
    
#        if (facing == LEFT):
    
#            if (Collision.is_collision_left(1) or:
#                (player1.position.x > position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0))
        
#                sprite_index = s_yeti_king_turn_r
#                status = TURN
#                counter = 30
        
#            elif (player1.position.x < position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
        
#                status = ATTACK
#                sprite_index = s_yeti_king_yell_l
#                image_index = 0
#                x_vel = 0
        
#            else: x_vel = -1
    
#        elif (facing == RIGHT):
    
#            if (Collision.is_collision_right(1) or:
#                (player1.position.x < position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0))
        
#                sprite_index = s_yeti_king_turn_l
#                status = TURN
#                counter = 30
        
#            elif (player1.position.x > position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
        
#                status = ATTACK
#                sprite_index = s_yeti_king_yell_r
#                image_index = 0
#                x_vel = 0
        
#            else: x_vel = 1
    

#    elif (status == TURN):

#        x_vel = 0

#    elif (status == ATTACK):

#        x_vel = 0
#        image_speed = 0.5
#        attack_timer = 100
#        if (image_index >= 7 and image_index <= 12):
    
#            if (not SS.is_sound_playing(global.snd_yeti_yell)): Audio.play_sound(global.snd_yeti_yell)
#            with ice
        
#                if (gml.instance_exists("yeti_king")):
            
#                    if (randi_range(1,60) == 1 and:
#                        abs((yeti_king.position.x+16)-(position.x+8)) > 16 and
#                        point_distance(position.x, position.y, yeti_king.position.x, yeti_king.position.y) < 96)
                
#                        gml.instance_create(position.x, position.y, "iceBlock")
#                        gml.instance_destroy()
                
            
        
#            with thin_ice
        
#                thickness -= 2
        
    


#    if (Collision.is_collision_solid()):
#        position.y -= 2

#    if (facing == LEFT):
   
#        if (status == WALK): sprite_index = s_yeti_king_walk_l
#        elif (status == IDLE): sprite_index = s_yeti_king_left

#    if (facing == RIGHT):
   
#        if (status == WALK): sprite_index = s_yeti_king_walk_r
#        elif (status == IDLE): sprite_index = s_yeti_king_right

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
