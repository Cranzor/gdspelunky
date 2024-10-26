extends GMObject


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_boulder():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="boulder">
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0 or:
#             (player1.sprite_index = s_duck_thang_l and player1.image_index > 6) or
#             (player1.sprite_index = s_damsel_dt_hl and player1.image_index > 6) or
#             (player1.sprite_index = s_tunnel_dt_hl and player1.image_index > 6))

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy()
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_moveable_solid():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="moveable_solid">
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_treasure():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="treasure">
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
#            <argument kind="STRING">if (trap_id == 0):

#        gml.instance_destroy()

#    elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):

#        with trap_id
    
#            if (fired == 0):
        
#                if (facing == 0):
            
#                    arrow = gml.instance_create(position.x-2, position.y+4, "arrow")
#                    arrow.x_vel = -8
            
#                else:
            
#                    arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#                    arrow.x_vel = 8
            
#                fired += 1
#                Audio.play_sound(global.snd_arrow_trap)
        
    
#        gml.instance_destroy()
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
#            <argument kind="STRING">trap_id = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
