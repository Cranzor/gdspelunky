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
#    Collision.set_collision_bounds(1, 1, 15, 15)
#    invincible = false
#    viscid_top = 1

#    xv = 0
#    yv = 0
#    xa = 0
#    ya = 0

#    x_vel = 0
#    y_vel = 0
#    x_acc = 0
#    y_acc = 0

#    IDLE = 0
#    ATTACK = 1
#    status = 0

#    hit = false
#    counter = 0

#    dir = randi_range(0,3)
#    RIGHT = 0
#    DOWN = 1
#    LEFT = 2
#    UP = 3</argument>
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
#            <argument kind="STRING">if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
#        rubble.sprite_index = s_rubble_tan
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall
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
#            <argument kind="STRING">if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16)

#    if (status == IDLE):

#        dist = point_distance(position.x, position.y, character.position.x, character.position.y)
#        if (counter > 0): counter -= 1
        
#        if (dist < 90 and counter < 1):
    
#            if (abs(character.position.y - (position.y+8)) < 8 and character.position.x > position.x+8 and not Collision.is_collision_right(2)):
        
#                status = ATTACK
#                dir = RIGHT
#                xa = 0.5
        
#            elif (abs(character.position.x - (position.x+8)) < 8 and character.position.y > position.y+8 and not Collision.is_collision_bottom(2)):
        
#                status = ATTACK
#                dir = DOWN
#                ya = 0.5
        
#            elif (abs(character.position.y - (position.y+8)) < 8 and character.position.x < position.x+8 and not Collision.is_collision_left(2)):
        
#                status = ATTACK
#                dir = LEFT
#                xa = -0.5
        
#            elif (abs(character.position.x - (position.x+8)) < 8 and character.position.y < position.y+8 and not Collision.is_collision_top(2)):
        
#                status = ATTACK
#                dir = UP
#                ya = -0.5
        
    

#    elif (status == ATTACK):

#        col_left = false
#        col_right = false
#        col_top = false
#        col_bot = false
#        if (Collision.is_collision_left(1)): col_left = true
#        if (Collision.is_collision_right(1)): col_right = true
#        if (Collision.is_collision_top(1)): col_top = true
#        if (Collision.is_collision_bottom(1)): col_bot = true

#        if (abs(xv) < 4): xv += xa
#        if (abs(yv) < 4): yv += ya
#        position.x += xv
#        position.y += yv
#        if (dir == RIGHT):
    
#            if (Collision.is_collision_right(2) and col_right):
        
#                position.x -= 2
#                hit = true
        
#            if (col_right):
        
#                position.x -= 1
#                hit = true
        
    
#        elif (dir == DOWN):
    
#            if (Collision.is_collision_bottom(2) and col_bot):
        
#                position.y -= 2
#                hit = true
        
#            if (col_bot):
        
#                position.y -= 1
#                hit = true
        
    
#        elif (dir == LEFT):
    
#            if (Collision.is_collision_left(2) and col_left):
        
#                position.x += 2
#                hit = true
        
#            if (col_left):
        
#                position.x += 1
#                hit = true
        
    
#        elif (dir == UP):
    
#            if (Collision.is_collision_top(2) and col_top):
        
#                position.y += 2
#                hit = true
        
#            if (col_top):
        
#                position.y += 1
#                hit = true
        
    
    
#        if (collision_rectangle(position.x-1,position.y-1,position.x+17,position.y+17,tomb_lord,0,0)): hit = true
    
#        if (hit):
    
#            xv = 0
#            yv = 0
#            xa = 0
#            ya = 0
    
#        if (hit and not col_right and:
#            not col_left and
#            not col_top and
#            not col_bot)
    
#            status = IDLE
#            hit = false
#            counter = 50
    

#    elif (status = 99):

#        xv = 0
#        yv = 0
#        xa = 0
#        ya = 0
#        position.y += 0.05
#        if (gml.collision_point(position.x, position.y-1, "lava", 0, 0)): gml.instance_destroy()


#    if (gml.collision_rectangle(position.x+1, position.y+1, position.x+15,  position.y+15, "lava", 0, 0)):

#        status = 99
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
