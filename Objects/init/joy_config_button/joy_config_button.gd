extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="MOUSE" id="11">
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
#            <argument kind="STRING">sprite_index = s_joy_config_button</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func mouse left button pressed():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="MOUSE" id="4">
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
#            <argument kind="STRING">sprite_index = s_joy_config_button_pressed</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func mouse left button released():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="MOUSE" id="7">
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
#            <argument kind="STRING">if (sprite_index == s_joy_config_button_pressed): get_tree().change_scene_to_file("res://r_joy_config.tscn")
#    sprite_index = s_joy_config_button</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
