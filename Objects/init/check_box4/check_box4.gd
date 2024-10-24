extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


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
#            <argument kind="STRING">if (global.gamepad_on): on = true
#    else:

#        on = false
#        sprite_index = s_box
#    </argument>
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
#            <argument kind="STRING">if (not on):

#        on = true
#        sprite_index = s_box_checked
#        global.gamepad_on = true

#    else:

#        on = false
#        sprite_index = s_box
#        global.gamepad_on = false
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
