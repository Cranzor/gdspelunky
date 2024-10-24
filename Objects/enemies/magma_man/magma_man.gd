extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
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
#            <argument kind="STRING">if (sprite_index == s_magma_man_die):

#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_bomb():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="bomb">
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
#            <argument kind="STRING">if (other.sprite_index != s_bomb_armed):

#        with other
    
#            sprite_index = s_bomb_armed
#            image_speed = 1
#            alarm_1()randi_range(8,12)
    


#    if (other.position.x < position.x): other.x_vel = -randi_range(2,4)
#    else: other.x_vel = randi_range(2,4)
#    if (other.position.y < position.y): other.y_vel = -randi_range(2,4)

#    if (other.held):

#        if (character): character.hold_item = 0
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
#            <argument kind="STRING">if (other.invincible == 0):

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
#        gml.instance_create(other.position.x, other.position.y, "blood")
    
#        if (global.plife > 0):
    
#            global.plife -= 2
#            if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[21] += 1
    
#        Audio.play_sound(global.snd_hurt)
#        Audio.play_sound(global.snd_flame)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_enemy():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="enemy">
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
#            <argument kind="STRING">if (other.type != "Magma Man"):

#        other.y_vel = -4
#        if (position.x < other.position.x):
#            other.x_vel = -3
#        else:
#            other.x_vel = 3
#        if (other.status != 98): Audio.play_sound(global.snd_flame)
#        with other
    
#            burning = 100
#            hp -= 2
#            if (type != "Tomb Lord" and type != "Yeti King"):
        
#                status = 98
#                counter = 50
        
    
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
#            <argument kind="STRING">if (not whipped):

#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)
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
#    type = "Magma Man"
#    hp = 200
#    invincible = 0

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    THROW = 3
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    whipped = false

#    bounced = false
#    dead = false
#    counter = 0
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
#            <argument kind="STRING">if (hp > 0): hp -= 1
#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0) or hp < 1):

#        x_vel = 0
#        y_vel = 0
#        status = DEAD
#        sprite_index = s_magma_man_die


#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (Collision.is_collision_bottom(1)):
#        y_vel = 0
#    else:

#        gml.instance_create(position.x+8, position.y+8, "magma")
#        gml.instance_destroy()

#    /*
#    if (status != DEAD and hp < 1):

#        status = DEAD
#    )
#    */

#    if (randi_range(1,20) == 1): gml.instance_create(position.x+randi_range(4,12), position.y+randi_range(4,12), "burn")
#    burning -= 1
    
#    if (status == IDLE):

#        if (y_vel < 0 and Collision.is_collision_top(1)):
    
#            y_vel = 0
    

#        if (Collision.is_collision_bottom(1) and counter > 0): counter -= 1    
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = WALK
#            if (randi_range(1,6) == 1):
        
#                magma = gml.instance_create(position.x+8, position.y+8, "magma")
#                magma.hp = hp
#                gml.instance_destroy()
        
    

#    elif (status == WALK):

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
    
#        if (facing == LEFT):
    
#            x_vel = -1.5
#            if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
        
    
#        else:
    
#            x_vel = 1.5
#            if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
         
    
    
#        if (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    


#    PlatformEngine.move_to(x_vel,y_vel)
#    if (Collision.is_collision_solid()):
#        position.y -= 2

#    if (status < STUNNED and status != THROW):

#        if (abs(x_vel) > 0): sprite_index = s_magma_man_walk_l
#        else: sprite_index = s_magma_man_left
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
