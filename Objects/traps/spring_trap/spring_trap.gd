extends GMObject


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
#            <argument kind="STRING">if (status == SPRUNG):

#        status = IDLE
#        sprite_index = s_spring_trap
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
#            <argument kind="STRING">if (status == IDLE and abs(other.position.x-position.x) < 6 and counter = 0 and not other.flying):

#        sprite_index = s_spring_trap_sprung
#        Audio.play_sound(global.snd_boing)
#        status = SPRUNG
#        with other
    
#            position.y -= 16
#            y_vel = -8
#            if (facing == 0): x_vel -= 1
#            else: x_vel += 1
    
#        counter = 10
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_item():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="item">
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
#            <argument kind="STRING">if (status == IDLE and abs(other.position.x-(position.x+8)) < 6 and not other.held and counter = 0 and:
#        other.active)

#        sprite_index = s_spring_trap_sprung
#        Audio.play_sound(global.snd_boing)
#        status = SPRUNG
#        with other
    
#            position.y -= 24
#            y_vel = -8
#            if (type == "Damsel"):
        
#                if (facing == 18): x_vel -= 1
#                else: x_vel += 1
        
        
    
#        counter = 10
#    </argument>
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
#            <argument kind="STRING">if (status == IDLE and abs(other.position.x-(position.x+8)) < 6 and counter = 0):

#        if (other.state <= 13 and other.sprite_index != s_p_exit and other.sprite_index != s_damsel_exit):
    
#            sprite_index = s_spring_trap_sprung
#            Audio.play_sound(global.snd_boing)
#            status = SPRUNG
#            with other
        
#                position.y -= 16
#                y_vel = -16
        
#            counter = 10
    
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
#            <argument kind="STRING">IDLE = 0
#    SPRUNG = 1
#    status = IDLE
#    counter = 0</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]))

#        if (counter > 0): counter -= 1
#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
