extends MovingSolid


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 1():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="1">
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
#            <argument kind="STRING">sprite_index = s_olmec_start2
#    for (i = 0 i < 6 i += 1)

#        debris = gml.instance_create(position.x+32+randi_range(0,32), position.y+randi_range(0,32), "olmec_debris")
#        debris.x_vel = randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)
#    with hawkman_worship

#        obj = gml.instance_create(position.x, position.y, "hawkman")
#        with obj
    
#            status = 98
#            hp = 1
#            x_vel = -3
#            y_vel = -5
#            counter = 300
    
#        gml.instance_destroy()

#    with caveman_worship

#        image_index = 0
#        image_speed = 0

#    alarm_2(50)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 2():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="2">
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
#            <argument kind="STRING">sprite_index = s_olmec_start3
#    alarm_3(50)
#    for (i = 0 i < 6 i += 1)

#        debris = gml.instance_create(position.x+randi_range(0,32), position.y+randi_range(0,32), "olmec_debris")
#        debris.x_vel = -randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 3():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="3">
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
#            <argument kind="STRING">sprite_index = s_olmec
#    for (i = 0 i < 12 i += 1)

#        debris = gml.instance_create(position.x+randi_range(0,64), position.y+32+randi_range(0,32), "olmec_debris")
#        debris.x_vel = randi_range(1,4)-randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)
#    alarm_4(50)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 4():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="4">
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
#            <argument kind="STRING">toggle = true
#    status = BOUNCE
#    Audio.play_sound(global.snd_big_jump)
#    Audio.play_sound(global.snd_alert)
#    alarm_6(20)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 5():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="5">
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
#            <argument kind="STRING">view_hborder[0] = 128
#    view_vborder[0] = 64
#    view_xview[0] = 0
#    view_object[0] = player1
#    player1.active = true
#    status = 0
#    counter = 100
#    play_music(global.mus_boss, true)
#    # DY: Audio.play_sound(global.snd_boss)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 6():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="6">
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
#            <argument kind="STRING">with caveman_worship

#        obj = gml.instance_create(position.x, position.y, "caveman")
#        obj.facing = 1
#        obj.status = 2
#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING">shop_wall = false
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, 62, 64)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    invincible = true
#    viscid_top = 1
#    carry_player = false
#    image_speed = 0.4

#    LEFT = 0
#    RIGHT = 1
#    facing = randi_range(0,1)

#    # DY:  status
#    START2 = -2
#    START1 = -1
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3
#    DROWNING = 4
#    PREPARE = 5
#    SLAM = 6
#    CREATE = 7
#    DEAD = 99
#    status = -1

#    counter = 0
#    bounce_counter = 0
#    slammed = false

#    view_hborder[0] = 0
#    view_vborder[0] = 0
#    view_yview[0] = 400
#    view_object[0] = olmec
#    </argument>
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
#            <argument kind="STRING">if (carry_player or gml.collision_rectangle(position.x-1, position.y, position.x+66,  position.y+62, "player1", 0, 0)):

#        player1.position.x += x_vel
#        player1.position.y += y_vel

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (y_vel < 6):

#        y_vel += my_grav

    
#    if (Collision.is_collision_top(1)):

#        gml.instance_create(position.x, position.y-16, "olmec_slam")
#        position.y += 1
#        if (y_vel < 0): y_vel = -y_vel * 0.8


#    if (Collision.is_collision_left(1)):

#        position.x += 1
#        x_vel = 0
#        # DY: if (x_vel < 0): x_vel = -x_vel * 0.8

#    if (Collision.is_collision_right(1)):

#        position.x -= 1
#        x_vel = 0
#        # DY: if (x_vel > 0): x_vel = -x_vel * 0.8


#    if (gml.collision_point(position.x, position.y+64, "lava", 0, 0)): status = DROWNING

#    if (gml.collision_point(position.x, position.y-2, "lava", 0, 0)):

#        global.enemy_kills[21] += 1
#        final_boss.olmec_dead = true
#        global.kills += 1
#        gml.instance_destroy()


#    dist = gml.distance_to_object(player1) + 32


#    if (gml.collision_rectangle(position.x, position.y-2, position.x+64,  position.y+64, "player1", 0, 0)): carry_player = true
#    else: carry_player = false

#    if (status == START1):

#        if (view_xview[0] < 176): view_xview[0] += 2
#        else:
    
#            alarm_1(100)
#            status = START2
    
    
#        if (Collision.is_collision_bottom(1)):
#            y_vel = 0

#    elif (status == START2):
   
#        if (Collision.is_collision_bottom(1)):
#            y_vel = 0

#    elif (status == IDLE):

#        if (counter > 0): counter -= 1
#        if (counter == 0): status = BOUNCE
    
#        if (Collision.is_collision_bottom(1)):
    
#            y_vel = 0
    
    
#        toggle = true

#    elif (status == CREATE):

#        for repetition in range(1, 6):
    
#            gml.instance_create(position.x+32+randi_range(0,32)-randi_range(0,32), position.y+14+randi_range(0,32)-randi_range(0,32), "psychic_create2")
    
#        gml.instance_create(position.x+32, position.y+16, "yellow_ball")
#        gml.instance_create(position.x+32, position.y+16, "yellow_ball")
#        gml.instance_create(position.x+32, position.y+16, "yellow_ball")
#        Audio.play_sound(global.snd_psychic)
#        status = IDLE

#    elif (status == RECOVER):

#        if (Collision.is_collision_bottom(1)):
    
#            Audio.play_sound(global.snd_thump)
#            status = IDLE
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(40,100)
    
#        else:
    
#            if (counter > 1): counter -= 1
#            elif (counter == 1):
        
#                if (player1.position.x < position.x): x_vel = -0.25
#                elif (player1.position.x > position.x+64): x_vel = 0.25
#                else: x_vel = 0
#                counter -= 1
        
#            else:
        
#                if (x_vel < 0 and toggle): x_vel -= 0.25
#                elif (x_vel < 0 and not toggle): x_vel += 0.25
#                if (x_vel > 0 and toggle): x_vel += 0.25
#                elif (x_vel > 0 and not toggle): x_vel -= 0.25
#                if (x_vel <= -2 or x_vel >= 2): toggle = not toggle
        

#            if ((not player1.active and y_vel >= 0) or:
#                (player1.position.y > position.y and abs(player1.position.x - (position.x+32)) < 32 and x_vel > -1))
        
#                status = PREPARE
#                y_vel = 0
#                x_vel = 0
#                my_grav = 0
#                counter = 20
        
    

#    elif (status == BOUNCE):

#        if (Collision.is_collision_bottom(1)):
    
#            y_vel = -4
    
#        else:
    
#            counter = 10
#            status = RECOVER
#            Audio.play_sound(global.snd_big_jump)
    

#    elif (status == PREPARE):

#        if (counter > 0): counter -= 1
#        else:
    
#            y_vel = 5
#            my_grav = 0.2
#            status = SLAM
#            slammed = false
    

#    elif (status == SLAM):

#        carry_player = false
#        if (Collision.is_collision_bottom(1)):
    
#            if (not slammed):
        
#                gml.instance_create(position.x, position.y+64, "olmec_slam")
#                slammed = true
#                InLevel.scr_shake(5)
        
#            else:
        
#                if (randi_range(1,2) == 1 or not player1.active): status = IDLE
#                else: status = CREATE
#                x_vel = 0
#                y_vel = 0
#                counter = 60
#                if (not player1.active): alarm_5(50)
        
    

#    elif (status == DROWNING):

#        x_vel = 0
#        y_vel = 0.1
#        my_grav = 0
#        InLevel.scr_shake(10)
#        if (not SS.is_sound_playing(global.snd_flame)): Audio.play_sound(global.snd_flame)


#    if (Collision.is_collision_top(1)):
#        y_vel = 1
#    if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):

#        x_vel = -x_vel


#    if (Collision.is_collision_solid()):
#      position.y -= 2
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
