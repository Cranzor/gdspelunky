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
#            <argument kind="STRING">image_speed = 0.5
#    status = 0
#    if (global.is_damsel): sprite_index = s_camel_damsel
#    elif (global.is_tunnel_man): sprite_index = s_camel_tunnel</argument>
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
#            <argument kind="STRING">if (status == 0):

#        position.x -= 1
#        if (position.x <= 160):
    
#            play_music(global.mus_credits, false)
#            status = 1
    

#    elif (status == 1):

#        position.x -= 0.01

#    elif (status == 2):

#        position.x -= 2


#    if (InLevel.is_room("r_credits1") and position.x < -64): credits1.fade_out = true</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
