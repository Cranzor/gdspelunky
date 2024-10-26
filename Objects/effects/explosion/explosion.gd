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

    

#func collision with o_barrier_emitter():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="barrier_emitter">
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
#            <argument kind="STRING">with other  gml.instance_destroy() </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING">for (i = 0 i < 3 i += 1)

#        rubble = gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), "rubble")
#        rubble.sprite_index = s_rubble_tan
#        if (randi_range(1,3) == 1): gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), "rock")

#    for (i = 0 i < 6 i += 1)

#        rubble = gml.instance_create(other.position.x+randi_range(0,15)-randi_range(0,15), other.position.y+randi_range(0,15)-randi_range(0,15), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall


#    with other  gml.instance_destroy() </argument>
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

#        other.hp -= 100
#        if (position.x < other.position.x): other.x_vel = randi_range(4,6)
#        else: other.x_vel = -randi_range(4,6)
#        other.y_vel = -6
#        other.burning = 50
#        other.status = 2
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
#            <argument kind="STRING">if (other.type == "Magma Man"):

#        with other
    
#            flame = gml.instance_create(position.x+8, position.y-4, "magma")
#            flame.y_vel = -randi_range(1,3)
#            flame = gml.instance_create(position.x+8, position.y-4, "magma")
#            flame.y_vel = -randi_range(1,3)
#            gml.instance_destroy()
    

#    elif (not other.invincible):

#        other.hp -= 30
#        if (position.x < other.position.x): other.x_vel = randi_range(4,6)
#        else: other.x_vel = -randi_range(4,6)
#        other.y_vel = -6
#        other.burning = 50
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
#            <argument kind="STRING">if (other.type == "Arrow" or other.type == "Fish Bone" or:
#        other.type == "Jar" or other.type == "Skull")

#        with other  gml.instance_destroy() 

#    elif (other.type == "Bomb"):

#        with other
    
#            sprite_index = s_bomb_armed
#            image_speed = 1
#            alarm_1()randi_range(4,8)
#            enemy_id = 0
    

#        if (other.position.y < position.y): other.y_vel = -randi_range(2,4)
#        if (other.position.x < position.x): other.x_vel = -randi_range(2,4)
#        else: other.x_vel = randi_range(2,4)

#    elif (other.type == "Rope"):

#        if (not other.falling):
    
#            if (other.position.y < position.y): other.y_vel -= 6
#            else: other.y_vel += 6
#            if (position.x > other.position.x): other.x_vel -= randi_range(4,6)
#            else: other.x_vel += randi_range(4,6)
    

#    else:

#        if (other.position.y < position.y): other.y_vel -= 6
#        else: other.y_vel += 6
#        if (position.x > other.position.x): other.x_vel -= randi_range(4,6)
#        else: other.x_vel += randi_range(4,6)


#    if (other.held):

#        with player1
    
#            hold_item = 0
#            pickup_item_type = ""
    
#        other.held = false
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
#            <argument kind="STRING">if (InLevel.is_level("r_tutorial") or (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#         position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16))

#        with other
    
#            repeat (2)
        
#                tile = tile_layer_find(3, position.x+1, position.y-1)
#                if (tile): tile_delete(tile)
        
#            tile = tile_layer_find(3, position.x+1, position.y+16)
#            if (tile): tile_delete(tile)
    
#            if (not invincible): gml.instance_destroy()
    

#        with treasure
    
#            state = 1
    

#        with spikes
    
#            if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):
        
#                gml.instance_destroy()
        
    

#    # DY: global.check_water = true
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_web():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="web">
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
#            <argument kind="STRING">with other  gml.instance_destroy() </argument>
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
#        <action id="611" library="1">
#          <!--action name: Variable-->
#          <kind>VARIABLE</kind>
#          <allow_relative>true</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">image_speed</argument>
#            <argument kind="EXPRESSION">0.8</argument>
#          </arguments>
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
#            <argument kind="STRING">Audio.play_sound(global.snd_explosion)
#    InLevel.scr_shake(5)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
