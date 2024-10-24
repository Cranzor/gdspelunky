extends Item


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
#            <argument kind="STRING">type = "Ball"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-5, -5, 5, 5)
#    heavy = true
#    my_grav = 1</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func step():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
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
#            <argument kind="STRING">if (gml.distance_to_object(player1) >= 24):

#        if (abs(player1.position.x - position.x) >= 24 or not col_bot):
    
#            if (abs(player1.position.x-position.x) < 1):
        
#                position.x = player1.position.x
#                x_vel = 0
        
        
#            if (player1.position.x > position.x):
        
#                if (player1.x_vel > 0 and position.y >= player1.position.y): x_vel = player1.x_vel
#                elif (x_vel < 0): x_vel *= -0.5
#                elif (x_vel == 0): x_vel = 2
        
#            elif (player1.position.x < position.x):
        
#                if (player1.x_vel < 0 and position.y >= player1.position.y): x_vel = player1.x_vel
#                elif (x_vel > 0): x_vel *= -0.5
#                elif (x_vel == 0): x_vel = -2
        
    
#        else:
    
#            x_vel *= 0.5
#            if (abs(x_vel) < 0.5): x_vel = 0
    
    
#        if (abs(player1.position.y - position.y) >= 24):
    
#            if (player1.position.y < position.y): y_vel = 0
    

#    elif (col_bot):

#        x_vel = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
