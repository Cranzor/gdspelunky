extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func key up pressed():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="KEYPRESS" id="38">
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
#            <argument kind="STRING">load_level.page -= 1
#    with menu_sel  sprite_index = s_menu_sel_off 
#    instance_activate_object(page_down)
#    if (load_level.page <= 1): instance_deactivate_object(page_up)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING"># DY: sprite_index = s_ok_button</argument>
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
#            <argument kind="STRING"># DY: sprite_index = s_ok_button_pressed</argument>
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
#            <argument kind="STRING">load_level.page -= 1
#    with menu_sel  sprite_index = s_menu_sel_off 
#    instance_activate_object(page_down)
#    if (load_level.page <= 1): instance_deactivate_object(page_up)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
