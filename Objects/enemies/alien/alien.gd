extends Enemy


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
#    Collision.set_collision_bounds(2, 6, 14, 16)
#    x_vel = 2.5
#    image_speed = 0.5

#    # DY:  stats
#    type = "Alien"
#    hp = 1
#    invincible = 0

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    bounced = false
#    dead = false
#    counter = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[15] += 1
#            global.aliens += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    y_vel += 0.6

#    if (Collision.is_collision_bottom(1) and status != STUNNED):
#        y_vel = 0

#    if (status == IDLE):

#        if (counter > 0): counter -= 1    
#        if (counter == 0):
    
#            facing = randi_range(0,1)
#            status = WALK
    

#    elif (status == WALK):

#        if (Collision.is_collision_right(1)):
    
#            facing = LEFT
    
#        if (Collision.is_collision_left(1)):
    
#            facing = RIGHT
    
#        if (facing == LEFT and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and:
#            not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1))
    
#            facing = RIGHT
    
#        elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and:
#                 not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1))
    
#            facing = LEFT
    
#        if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and:
#            (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = RIGHT
#            else: facing = LEFT
#            x_vel = 0
    
#        elif (facing == LEFT): x_vel = -1
#        else: x_vel = 1
    
#        if (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    


#    # DY: if (Collision.is_collision_solid()):
#    # DY:     position.y -= 2</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
