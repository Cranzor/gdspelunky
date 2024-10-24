extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


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
#            <argument kind="STRING">if (other.sprite_index != s_p_exit and other.sprite_index != s_damsel_exit and other.sprite_index != s_tunnel_exit):

#        if (global.plife > 0):
    
#            global.plife -= 2
#            if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[20] += 1
    
#        other.x_vel = x_vel
#        other.y_vel = -4

#        with other
    
#            gml.instance_create(position.x, position.y, "blood")
#            stunned = true
#            stun_timer = 20
    

#        Audio.play_sound(global.snd_hurt)
#        gml.instance_destroy()

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_damsel():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="damsel">
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
#            <argument kind="STRING">if (not other.invincible):

#        if (other.blood_left > 0):
    
#            with other
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
    
#        with other
    
#            if (held):
        
#                held = false
#                with player1  hold_item = 0 
        
#            hp -= 2
#            y_vel = -6
#            status = 2
#            counter = 120
    
#        other.x_vel = x_vel * 0.3
#        Audio.play_sound(global.snd_damsel)
#        gml.instance_destroy()
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
#            <argument kind="STRING">if (other.type != "Tomb Lord"):

#        if (other.heavy):
    
#            other.x_vel = x_vel*0.5
#            other.y_vel = -2
    
#        else:
    
#            other.x_vel = x_vel
#            other.y_vel = -4
    
#        other.x_vel = x_vel
#        other.y_vel = -4

#        with other
    
#            hp -= 2
#            if (blood_left > 0):
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
#            status = 98
#            counter = 20
    

#        Audio.play_sound(global.snd_hit)
#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_solid():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="solid">
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
#            <argument kind="STRING">gml.instance_create(position.x, position.y, "smoke_puff")
#    Audio.play_sound(global.snd_hit)
#    gml.instance_destroy()</argument>
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
#            <argument kind="STRING">x_vel = 0
#    y_vel = -random(3)+0.5</argument>
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
#            <argument kind="STRING">position.x += x_vel
#    position.y += y_vel

#    if (x_vel < 0): sprite_index = s_fly_left
#    else: sprite_index = s_fly_right</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
