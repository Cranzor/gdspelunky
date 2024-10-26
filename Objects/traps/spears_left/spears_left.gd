extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="7">
#      <actions>
#        <action id="203" library="1">
#          <!--action name: Kill_Object-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_kill_object</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
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
#            <argument kind="STRING">if (sprite_index = s_spears_left and not gml.collision_point(position.x+16, position.y, "spear_trap_top", 0, 0) and not gml.collision_point(position.x+16, position.y, "spear_trap_bottom", 0, 0)):

#        gml.instance_destroy()

#    if (sprite_index = s_spears_right and not gml.collision_point(position.x-16, position.y, "spear_trap_top", 0, 0) and not gml.collision_point(position.x-16, position.y, "spear_trap_bottom", 0, 0)):

#        gml.instance_destroy()

#    depth = 995</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
