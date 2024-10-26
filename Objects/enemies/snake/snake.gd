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
#    Collision.set_collision_bounds(2, 0, 14, 16)
#    x_vel = 2.5
#    image_speed = 0.4

#    # DY:  stats
#    type = "Snake"
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

#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[1] += 1
#            global.snakes += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.is_collision_bottom(1) and status != STUNNED): y_vel = 0

#    if (status == IDLE):

#        if (counter > 0): counter -= 1    
#        else:
    
#            facing = randi_range(0,1)
#            status = WALK
    

#    elif (status == WALK):

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
    
#        if (facing == LEFT and not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
    
#            facing = RIGHT
    
#        elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
    
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
    

#    elif (status == ATTACK):

#        # DY:  ?


#    if (Collision.is_collision_solid()):
#        position.y -= 2

#    if (status != STUNNED):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = s_snake_walk_l

#    /*
#    if (status != STUNNED and facing == RIGHT):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = s_snake_walk_r

#    */
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
