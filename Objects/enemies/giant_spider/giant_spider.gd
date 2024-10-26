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
#            <argument kind="STRING">if (sprite_index != s_giant_spider_squirt):

#        status = BOUNCE
#        sprite_index = s_giant_spider_jump
#        if (Collision.is_collision_bottom(1)):
    
#            sprite_index = s_giant_spider
#            y_vel = -1 * randi_range(2,5)
#            if (character.position.x < position.x+16):
        
#                x_vel = -2.5
        
#            else:
        
#                x_vel = 2.5
        
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 1():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="1">
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
#            <argument kind="STRING"># DY: sprite_index = s_spider_drown</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING">if (sprite_index == s_giant_spider_flip):

#        sprite_index = s_giant_spider
#        image_speed = 0.4

#    elif (sprite_index == s_giant_spiderSquirt):

#        status = IDLE
#        image_speed = 0.4
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

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+16 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        if (global.has_spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#        else: hp -= (1 * (floor(other.fall_timer/16)+1))
#        other.fall_timer = 0
#        gml.instance_create(position.x+16, position.y+24, "blood")
#        Audio.play_sound(global.snd_hit)

#    elif (other.invincible == 0):

#        if (true):
    
#            other.blink = 30
#            other.invincible = 30
#            if (other.position.y < position.y):
#                other.y_vel = -6
#            if (other.position.x < position.x):
#                other.x_vel = -6
#            else:
#                other.x_vel = 6
    
#            if (global.plife > 0):
        
#                global.plife -= 2
#                if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[3] += 1
        
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
#            <argument kind="STRING">if (whipped == 0):

#        hp -= 1
#        gml.instance_create(position.x+16, position.y+24, "blood")
#        Audio.play_sound(global.snd_hit)
#        whipped = 10

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
#            <argument kind="STRING">type = "Giant Spider"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 16, 30, 32)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.3
#    my_gravNorm = 0.3
#    image_speed = 0.8

#    # DY:  stats
#    hp = 1
#    invincible = 0
#    whipped = 10
#    squirt_timer = randi_range(100,1000)

#    # DY:  status
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    CRAWL = 3
#    DROWNED = 4
#    SQUIRT = 5

#    status = 0
#    bounce_counter = 0

#    shake_counter = 0
#    shake_toggle = 1

#    Audio.play_sound(global.snd_giant_spider)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func step():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-32 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-32 and position.y < view_yview[0] + view_hview[0]))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (whipped > 0): whipped -= 1

#    if (gml.collision_point(position.x+16, position.y+24, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        repeat(randi_range(1,3))
    
#            n = randi_range(1,3)
#            match (n)
        
#                1:  gem = gml.instance_create(position.x+16, position.y+24, "emerald_big")  
#                2:  gem = gml.instance_create(position.x+16, position.y+24, "sapphire_big")  
#                3:  gem = gml.instance_create(position.x+16, position.y+24, "ruby_big")  
        
#            gem.x_vel = randi_range(0,3) - randi_range(0,3)
#            gem.y_vel = -2
    
#        obj = gml.instance_create(position.x+16, position.y+24, "paste")
#        obj.cost = 0
#        obj.for_sale = false
#        MiscScripts.scr_create_blood(position.x+16, position.y+24, 4)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[3] += 1
#            global.giantspiders += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.is_collision_right(1)):

#        x_vel = 1


#    if (Collision.is_collision_left(1)):

#        x_vel = -1


#    if (Collision.is_collision_top(1) and Collision.is_collision_bottom(1) and status != CRAWL):

#        status = CRAWL
#        if (character.position.x < position.x+16):
#            x_vel = -1
#        else:
#            x_vel = 1


#    dist = gml.distance_to_object(character)

#    if (squirt_timer > 0): squirt_timer -= 1

#    if (status == IDLE):

#        if (sprite_index != s_giant_spider_flip): sprite_index = s_giant_spider
#        alarm_0()randi_range(5,20)
#        if (squirt_timer == 0): status = SQUIRT
#        else: status = RECOVER

#    elif (status == CRAWL):

#        sprite_index = s_giant_spiderCrawl
#        if (not Collision.is_collision_top(1) or not Collision.is_collision_bottom(1)): status = IDLE
#        elif (Collision.is_collision_right(1)): x_vel = -1
#        elif (Collision.is_collision_left(1)): x_vel = 1

#    elif (status == SQUIRT):

#        sprite_index = s_giant_spiderSquirt
#        if (image_index >= 5 and squirt_timer == 0):
    
#            gml.instance_create(position.x+16, position.y+16, "web_ball")
#            squirt_timer = randi_range(100,1000)
    

#    elif (status == RECOVER):

#        if (Collision.is_collision_bottom(1)): x_vel = 0

#    elif (status == BOUNCE and dist < 120):

#        sprite_index = s_giant_spiderJump
#        if (Collision.is_collision_bottom(1)):
    
#            sprite_index = s_giant_spider
#            y_vel = -1 * randi_range(3,6)
#            if (character.position.x < position.x+16):
        
#                x_vel = -2.5
        
#            else:
        
#                x_vel = 2.5
        
#            Audio.play_sound(global.snd_spider_jump)
        
#            if (randi_range(1,4) == 1):  status = IDLE x_vel = 0 y_vel = 0 
    

#    elif (status != DROWNED):

#        status = IDLE
#        # DY: x_vel = 0


#    if (Collision.is_collision_top(1)):
#        y_vel = 1
#    /*
#    if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):

#        x_vel = -x_vel

#    */

#    # DY: if (Collision.is_collision_solid()):
#    # DY:   position.y -= 2
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
