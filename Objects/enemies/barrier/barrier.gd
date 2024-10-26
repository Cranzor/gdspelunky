extends GMObject


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
#            <argument kind="STRING">with other

#        gml.instance_create(position.x, position.y, "smoke_puff")
#        Audio.play_sound(global.snd_hit)
#        gml.instance_destroy()
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
#        other.y_vel = -2
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
#            <argument kind="STRING">if (other.type == "Bomb"):

#        with other
    
#            sprite_index = s_bomb_armed
#            image_speed = 1
#            alarm_1()randi_range(4,8)
    


#    other.x_vel = -randi_range(4,6)
#    other.y_vel = -2

#    if (other.held):

#        if (character): character.hold_item = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_web_ball():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="web_ball">
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
#            <argument kind="STRING">with other

#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
