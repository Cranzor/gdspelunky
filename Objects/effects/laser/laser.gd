extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="0">
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
#            <argument kind="STRING">gml.instance_create(position.x, position.y, "laser_trail")
#    alarm_0(1)</argument>
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

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        status = 2

#        gml.instance_create(position.x, position.y, "laser_explode")
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
#            <argument kind="STRING">if (other.type != "UFO" and other.invincible == 0):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        gml.instance_create(position.x, position.y, "laser_explode")
#        # DY:  global.check_water = true
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
#            <argument kind="STRING">with other

#        if (not invincible):
    
#            if (gml.collision_point(position.x, position.y, "gold", 0, 0)):
        
#                gold = gml.instance_place(position.x, position.y, gold)
#                with gold  gml.instance_destroy() 
        
#            if (gml.collision_point(position.x, position.y, "goldBig", 0, 0)):
        
#                gold = gml.instance_place(position.x, position.y, goldBig)
#                with gold  gml.instance_destroy() 
        
#            gml.instance_destroy()
    
    
#        tile = tile_layer_find(3, position.x, position.y-16)
#        if (tile): tile_delete(tile)


#    gml.instance_create(position.x, position.y, "laser_explode")
#    # DY:  global.check_water = true
#    gml.instance_destroy()</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func create():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
#      <actions>
#        <action id="604" library="1">
#          <!--action name: Inherited-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>false</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_inherited</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
#        </action>
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
#            <argument kind="STRING">y_vel = 0
#    y_acc = 0.6
#    alarm_0(1)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func outside room():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="0">
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
#            <argument kind="STRING">position.y += y_vel
#    y_vel += y_acc
#    if (y_vel > 4): y_vel = 0

#    /*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
#        gml.collision_point(position.x, position.y, "darkFall", 0, 0) or
#        gml.collision_point(position.x, position.y, "ice", 0, 0))

#        gml.instance_destroy()
#    */</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
