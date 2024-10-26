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
#    Collision.set_collision_bounds(0, 0, 16, 16)
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

#        if (player1.position.y > position.y and dist < 96 and abs(player1.position.x - position.x) < 8):
    
#            status = DROP
    

#    elif (status == DROP):

#        y_vel += my_grav
#        if (y_vel > 6): y_vel = 6
#        if (Collision.is_collision_bottom(1)):
    
#            status = WAIT
#            y_vel = 0
#            counter = 100
    

#    elif (status == WAIT):

#        if (Collision.is_collision_bottom(1)): position.y -= 1
#        if (counter > 0): counter -= 1
#        else:
    
#            status = RETURN
#            y_vel = -1
    

#    elif (status == RETURN):

#        if (Collision.is_collision_top(1)):
    
#            y_vel = 0
#            status = IDLE
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
