extends Enemy


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="0">
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
#            <argument kind="STRING">can_bite = true</argument>
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
#            <argument kind="STRING">type = "Piranha"
#    image_speed = 0.5
#    Collision.set_collision_bounds(0, 0, 8, 8)
#    orig_x = 0
#    orig_y = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2
#    dir = 0
#    if (randi_range(1,2) == 1): dir = 180

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    bubble_timer = 0
#    bubble_timerMax = 40

#    # DY:  status
#    IDLE = 0
#    ATTACK = 1
#    PAUSE = 2
#    ATTACK_ENEMY = 3

#    can_bite = true

#    status = 0
#    counter = 0

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
#            <argument kind="STRING">if (active):

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+4, position.y+4, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[11] += 1
#            global.piranhas += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    dist = point_distance(position.x+4, position.y+4, character.position.x, character.position.y)

#    if (status == IDLE):

#        if (dir == 0):
    
#            if (gml.collision_point(position.x+8+2, position.y, "water", 0, 0) and not (gml.collision_point(position.x+10, position.y, "solid", 0, 0))):
#                PlatformEngine.move_to(1,0)
#            else: dir = 180
    
#        else:
    
#            if (gml.collision_point(position.x-2, position.y, "water", 0, 0) and not (gml.collision_point(position.x-2, position.y, "solid", 0, 0))):
#                PlatformEngine.move_to(-1,0)
#            else: dir = 0
    

#        if (dist < 90 and character.swimming and not character.dead):
    
#            status = ATTACK
    
    
#        obj = instance_nearest(position.x, position.y, caveman)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, shopkeeper)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, hawkman)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, yeti)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (obj):
    
#            if (obj.swimming &amp&amp obj.hp > 0):
        
#                status = ATTACK_ENEMY
        
    

#    elif (status == PAUSE):

#        can_bite = true
#        if (counter > 0): counter -= 1
#        else:
    
#            status = IDLE
#            dir = randi_range(0,1)*180
    

#    elif (status == ATTACK &amp&amp gml.instance_exists("character")):

#        if (dist < 90 and character.swimming and not character.dead):
    
#            dir = point_direction(position.x+4, position.y+4, character.position.x, character.position.y)+randi_range(0,1)-randi_range(0,1)
#            if (gml.collision_point(position.x + cos(degtorad(dir)), position.y - sin(degtorad(dir)), "water", 0, 0)):
#                PlatformEngine.move_to(1 * cos(degtorad(dir)), -1 * sin(degtorad(dir)))
    
#        else:
    
#            status = PAUSE
#            counter = randi_range(20,40)
    

#    elif (status == ATTACK_ENEMY):

#        obj = instance_nearest(position.x, position.y, caveman)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, shopkeeper)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, hawkman)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (!obj): obj = instance_nearest(position.x, position.y, yeti)
#        if (obj): if (obj.hp <= 0) obj = 0
#        if (obj):
    
#            if (!obj.swimming || obj.hp <= 0):
        
#                status = PAUSE
        
    
#        else: status = PAUSE
    
#        if (status != PAUSE):
    
#            dir = point_direction(position.x+4, position.y+4, obj.position.x+8, obj.position.y+8)+randi_range(0,1)-randi_range(0,1)
#            if (gml.collision_point(position.x + cos(degtorad(dir)), position.y - sin(degtorad(dir)), "water", 0, 0)):
#                PlatformEngine.move_to(1 * cos(degtorad(dir)), -1 * sin(degtorad(dir)))
#            else:
        
#                status = PAUSE
#                counter = randi_range(20,40)
        
        
#            dist = point_distance(position.x+4, position.y+4, obj.position.x+8, obj.position.y+8)
#            if (dist < 4):
        
#                obj.status = 2
#                if (can_bite):
            
#                    obj.hp -= 1
#                    can_bite = false
#                    alarm_0(10)
#                    MiscScripts.scr_create_blood(position.x+4, position.y+4, 1)
            
        
    
#        else: counter = randi_range(20,40)


#    if (bubble_timer > 0): bubble_timer -= 1
#    else:

#        gml.instance_create(position.x, position.y, "bubble")
#        bubble_timer = (randi_range(bubble_timerMax-10, bubble_timerMax+10))



#    if (dir > 90 and dir < 270):
#        sprite_index = s_piranha_left
#    else:
#        sprite_index = s_piranha_right
    
#    if (not gml.collision_point(position.x+4, position.y+4, "water", 0, 0)):

#        gml.instance_create(position.x, position.y, "fish_bone")
#        gml.instance_destroy()

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
