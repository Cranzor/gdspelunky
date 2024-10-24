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
#            <argument kind="STRING">status = BOUNCE
#    if (Collision.is_collision_bottom(1)):

#        y_vel = -1 * randi_range(2,5)
#        if (character.position.x < position.x):
    
#            x_vel = -2.5
    
#        else:
    
#            x_vel = 2.5
    
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
#            <argument kind="STRING">gml.instance_destroy()</argument>
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
#            <argument kind="STRING">if (sprite_index == s_spider_flip): sprite_index = s_spider</argument>
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
#            <argument kind="STRING">type = "Spider"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(1, 5, 15, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    my_gravNorm = 0.2
#    image_speed = 0.4

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    # DY:  status
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3
#    DROWNED = 4

#    status = 0
#    bounce_counter = 0

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

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[2] += 1
#            global.spiders += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.is_collision_right(1)):

#        x_vel = 1


#    if (Collision.is_collision_left(1)):

#        x_vel = -1


#    dist = gml.distance_to_object(character)

#    if (status == IDLE):

#        alarm_0()randi_range(5,20)
#        status = RECOVER

#    elif (status == RECOVER):

#        if (Collision.is_collision_bottom(1)): x_vel = 0

#    elif (status == BOUNCE and dist < 90):

#        if (Collision.is_collision_bottom(1)):
    
#            y_vel = -1 * randi_range(2,5)
#            if (character.position.x < position.x+8):
        
#                x_vel = -2.5
        
#            else:
        
#                x_vel = 2.5
        
        
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
#            <argument kind="STRING">if (gml.collision_point(position.x+8, position.y+8, "water", 0, 0) and status != DROWNED):

#        status = DROWNED
#        sprite_index = s_spider_drowning
#        alarm_1(30)
#        x_vel = 0
#        y_vel = 0.2
#        gml.instance_create(position.x+8, position.y, "splash")
#        Audio.play_sound(global.snd_splash)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
