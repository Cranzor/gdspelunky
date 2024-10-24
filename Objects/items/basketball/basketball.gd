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
#            <argument kind="STRING">type = "Basketball"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    bounce_factor = 0.7
#    bounces = 0
#    wall_bounce = false
#    friction_factor = 0.6
#    going_in = false</argument>
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
#            <argument kind="STRING">if (col_left or col_right): wall_bounce = true
#    elif (col_bot): wall_bounce = false

#    if (gml.collision_rectangle(position.x-1, position.y+4, position.x+1,  position.y+5, "rim_deflect", 0, 0) and not going_in and bounces < 40):

#        y_vel = -y_vel * 0.8
#        obj = instance_nearest(position.x, position.y, rim_deflect)
#        if (position.x < (obj.position.x+8) and abs((obj.position.x+8)-position.x) > 7):
    
#            x_vel = -2
#            y_vel = -0.5
    
#        elif (position.x > (obj.position.x+8) and abs((obj.position.x+8)-position.x) > 7):
    
#            x_vel = 2
#            y_vel = -0.5
    
#        elif (abs((obj.position.x+8)-position.x) < 4):
    
#            if (position.x < (obj.position.x+8)): x_vel = 1
#            else: x_vel = -0.2
#            y_vel = -0.5
    
#        bounces += 10


#    if (bounces > 0): bounces -= 1

#    if (gml.collision_point(position.x, position.y, "rim", 0, 0)):

#        if (not going_in and (y_vel > 0 or (held and player1.state == 16))):
    
#            with moon_room  alarm_0(20) 
#            x_vel = 0
#            y_vel = 0
#            going_in = true
#            obj = instance_nearest(position.x, position.y, basket)
#            obj.sprite_index = s_basket_swoosh
#            obj.image_index = 0
#            if (held):
        
#                moon_room.baskets += 1
#                player1.hold_item = false
        
#            elif (wall_bounce):
        
#                moon_room.baskets += 3
        
#            else:
#                moon_room.baskets += 2
#            held = false
    

#    else: going_in = false

#    if (held and gml.collision_point(position.x, position.y+6, "solid", 0, 0)): sprite_index = s_dribble
#    else: sprite_index = s_basketball</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
