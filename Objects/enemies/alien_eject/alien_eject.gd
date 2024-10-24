extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
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
#            <argument kind="STRING">if (sprite_index == s_alien_deploy): sprite_index = s_alien_parachute</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_player1():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="player1">
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
#    if (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y-3 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        other.fall_timer = 0
#        Audio.play_sound(global.snd_hit)
#        for repetition in range(1, 3):
    
#            gml.instance_create(other.position.x+8, other.position.y+8, "blood")
    
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[15] += 1
#            global.aliens += 1
#            global.kills += 1
    
#        gml.instance_destroy()

#    elif (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.y < position.y):
#            other.y_vel = -6
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0): global.plife -= 1
#        Audio.play_sound(global.snd_hurt)

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_web():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="web">
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
#            <argument kind="STRING">gml.instance_create(position.x-8, position.y-12, "alien")
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
#            <argument kind="STRING">PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    x_vel = 0
#    y_vel = -6
#    image_speed = 0.6

#    # DY:  stats
#    type = "Alien Eject"
#    hp = 1
#    invincible = 0
#    counts_as_kill = true

#    EJECT = 0
#    DEPLOY = 1
#    FLOAT = 2

#    status = 0

#    dir = randi_range(0,1)
#    counter = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func outside room():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="0">
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+16))

#    position.x += x_vel
#    position.y += y_vel

#    if (status == EJECT):

#        x_vel = 0
#        y_vel += 0.5
#        if (y_vel >= 0 or Collision.is_collision_top(1)):
    
#            y_vel = 0
#            status = FLOAT
#            sprite_index = s_alien_deploy
    
#        if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(0,3)-randi_range(0,3), position.y+randi_range(0,3)-randi_range(0,3), "burn")

#    elif (status == FLOAT):

#        x_vel = 0
#        y_vel = 2
#        if (gml.collision_point(position.x, position.y+6, "solid", 0, 0)):
    
#            gml.instance_create(position.x-8, position.y-12, "alien")
#            gml.instance_destroy()
    
#        elif (dir == 0):
    
#            x_vel = -1
#            if (gml.collision_point(position.x-8, position.y, "solid", 0, 0)): dir = 99
    
#        elif (dir == 1):
    
#            x_vel = 1
#            if (gml.collision_point(position.x+8, position.y, "solid", 0, 0)): dir = 99
    

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
