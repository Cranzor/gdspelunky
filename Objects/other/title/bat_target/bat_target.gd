extends GMObject


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_arrow():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="arrow">
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
#            <argument kind="STRING">Audio.play_sound(global.snd_hit)
#    Audio.play_sound(global.snd_coin)
#    moon_room.baskets += difficulty

#    with other  gml.instance_destroy() 

#    gml.instance_create(x_mid, -64, "bat_target")

#    if (sprite_index = s_ufo): gml.instance_create(position.x, position.y, "ufcrash")
#    else: MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#    gml.instance_destroy()</argument>
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
#    if (abs(other.position.x-(position.x+8)) > 12):

#        # DY:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        Audio.play_sound(global.snd_hit)
#        Audio.play_sound(global.snd_coin)
#        moon_room.baskets += difficulty

#        gml.instance_create(position.x, -64, "bat_target")

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        gml.instance_destroy()

#    elif (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0): global.plife -= 1
#        MiscScripts.scr_create_blood(position.x+4, position.y+4, 1)
#        Audio.play_sound(global.snd_hurt)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func create():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
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
#            <argument kind="STRING">bloodless = false
#    UP = 0
#    DOWN = 1
#    dir = 1
#    if (position.x == 208): difficulty = 2
#    elif (position.x == 256): difficulty = 4
#    else: difficulty = 1
#    x_mid = position.x
#    x_diff = 0
#    if (moon_room.timer <= 20):

#        difficulty += 2
#        sprite_index = s_ufo
#    </argument>
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
#            <argument kind="STRING">if (dir == UP):

#        position.y -= difficulty
#        if (position.y <= 64):
    
#            dir = DOWN
    

#    elif (dir == DOWN):

#        position.y += difficulty
#        if (position.y >= 160):
    
#            dir = UP
    

    
#    if (moon_room.timer <= 20 and position.y > 64):

#        position.x = x_mid - abs(sin(x_diff)*32)
#        x_diff += 0.01
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
