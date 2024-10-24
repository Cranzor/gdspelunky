extends Platform


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
#            <argument kind="STRING">if (global.cemetary): sprite_index = s_leaves_dead

#    if (gml.collision_point(position.x-16, position.y, "tree", 0, 0) or gml.collision_point(position.x-16, position.y, "leaves", 0, 0)):

#        if (global.cemetary): sprite_index = s_leaves_deadR
#        else: sprite_index = s_leaves_right


#    sprite_set = false</argument>
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
#            <argument kind="STRING">if (sprite_index != s_leaves_dead and sprite_index != s_leaves_deadR):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "leaf")
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "leaf")
#    </argument>
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
#            <argument kind="STRING">if (not sprite_set):

#        if ((gml.collision_point(position.x-16, position.y, "tree", 0, 0) or gml.collision_point(position.x-16, position.y, "leaves", 0, 0))and:
#        (gml.collision_point(position.x+16, position.y, "tree", 0, 0) or gml.collision_point(position.x+16, position.y, "leaves", 0, 0)))
    
#            sprite_index = s_leaves_top
    


#    if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16)

#        if (sprite_index == s_leaves_top):
    
#            if ((not gml.collision_point(position.x-16, position.y, "tree", 0, 0) and not gml.collision_point(position.x-16, position.y, "leaves", 0, 0)) or:
#                (not gml.collision_point(position.x+16, position.y, "tree", 0, 0) and not gml.collision_point(position.x+16, position.y, "leaves", 0, 0)))
        
#                gml.instance_destroy()
        
    
#        elif (sprite_index == s_leaves or sprite_index == s_leavesDead):
    
#            if (not gml.collision_point(position.x+16, position.y, "tree", 0, 0) and not gml.collision_point(position.x+16, position.y, "leaves", 0, 0)):
        
#                gml.instance_destroy()
        
    
#        elif (sprite_index == s_leavesRight or sprite_index == s_leavesDeadR):
    
#            if (not gml.collision_point(position.x-16, position.y, "tree", 0, 0) and not gml.collision_point(position.x-16, position.y, "leaves", 0, 0)):
        
#                gml.instance_destroy()
        
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
