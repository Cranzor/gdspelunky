extends DrawnSprite


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
#            <argument kind="STRING">type = "None"
#    held = false
#    LEFT = 18
#    RIGHT = 19
#    my_grav = 0.6
#    trigger = false
#    value = 0
#    can_collect = false
#    y_off = 4
#    x_vel = 0
#    y_vel = 0

#    STATIC = 0
#    ACTIVE = 1
#    state = ACTIVE</argument>
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
#            <argument kind="STRING"># DY:  treasure only active within view
#    if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16 and
#            state == ACTIVE)

#        col_left = false
#        col_right = false
#        col_bot = false
#        if (Collision.is_collision_left(1)): col_left = true
#        if (Collision.is_collision_right(1)): col_right = true
#        if (Collision.is_collision_bottom(1)): col_bot = true

#        PlatformEngine.move_to(x_vel, y_vel)

#        if (not col_bot): y_vel += my_grav
#        if (y_vel > 8): y_vel = 8
    
#        if (Collision.is_collision_top(1)):
    
#            if (y_vel < 0): y_vel = -y_vel * 0.8
#            else: position.y += 1
    
    
#        if (col_left or col_right):
    
#            x_vel = -x_vel * 0.5
    
    
#        if (col_bot):
    
#            /*
#            # DY:  bounce
#            if (y_vel > 1): y_vel = -y_vel * 0.5
#            else: y_vel = 0
#            */
        
#            # DY:  friction
#            if (abs(x_vel) < 0.1): x_vel = 0
#            elif (abs(x_vel) != 0): x_vel *= 0.3
        
#            position.y -= 1
        
#            if (not Collision.is_collision_bottom(1)):
        
#                position.y += 1
#                status = STATIC
        
#            y_vel = 0
    
#        # DY:  else: status = STATIC
    
#        if (col_left):
    
#            if (not col_right): position.x += 1
#            # DY: y_vel = 0
    
#        elif (col_right):
    
#            position.x -= 1
#            # DY: y_vel = 0
    

#        if (global.has_spectacles or global.has_udjat_eye):
    
#            depth = 0
    
#        else: depth = 101
    
#        if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "lava", 0, 0)):
    
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0
#            position.y += 0.05
    
#        if (gml.collision_point(position.x, position.y-5, "lava", 0, 0)):
    
#            gml.instance_destroy()
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
