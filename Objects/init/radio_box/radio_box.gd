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
#            <argument kind="STRING">on = false

#    if (position.y == 24 and global.screen_scale == 1):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 32 and global.screen_scale == 2):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 40 and global.screen_scale == 3):

#        on = true
#        sprite_index = s_box_marked

#    elif (position.y == 48 and global.screen_scale == 4):

#        on = true
#        sprite_index = s_box_marked

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

#        with radibox
    
#            on = false
#            sprite_index = s_box
    

#        on = true
#        sprite_index = s_boxMarked
    
#        if (position.y == 24): global.screen_scale = 1
#        elif (position.y == 32): global.screen_scale = 2
#        elif (position.y == 40): global.screen_scale = 3
#        elif (position.y == 48): global.screen_scale = 4
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
