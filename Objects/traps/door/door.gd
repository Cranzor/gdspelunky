extends MovingSolid


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


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
#            <argument kind="STRING">PlatformEngine.make_active()
#    Collision.set_collision_bounds(1, 0, 15, 32)
#    invincible = false
#    viscid_top = 1

#    x_vel = 0
#    y_vel = 0
#    my_grav = 1

#    counter = 0

#    status = 0
#    IDLE = 0
#    DROP = 1
#    WAIT = 2
#    RETURN = 3</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func destroy():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DESTROY" id="0">
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
#            <argument kind="STRING">    rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")
#        rubble.sprite_index = s_rubble_tan_small
#        rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")
#        rubble.sprite_index = s_rubble_tan_small</argument>
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
#            <argument kind="STRING">dist = gml.distance_to_object(character)
#    if (status == IDLE):

#        # DY:  nothing

#    elif (status == DROP):

#        y_vel += my_grav
#        if (y_vel > 6): y_vel = 6
#        if (Collision.is_collision_bottom(1)):
    
#            status = WAIT
#            y_vel = 0
#            counter = 100
#            depth = 100
    

#    elif (status == WAIT):

#        if (Collision.is_collision_bottom(1)): position.y -= 1
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
