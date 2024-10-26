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
#            <argument kind="STRING">image_speed = 0.5
#    Collision.set_collision_bounds(2, 2, 14, 14)
#    orig_x = 0
#    orig_y = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2

#    # DY:  stats
#    hp = 1
#    invincible = 0
#    flying = true

#    # DY:  status
#    HANG = 0
#    ATTACK = 1

#    status = HANG

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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    PlatformEngine.move_to(x_vel, y_vel)

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[0] += 1
#            global.bats += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    dir = 0
#    dist = point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y)

#    if (status == HANG):

#      if (not player1.swimming and not player1.dead and:
#          ((dist < 90 and player1.position.y > position.y + 16) or not gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)))
  
#        status = ATTACK
#        Audio.play_sound(global.snd_bat)
  
  
#      sprite_index = s_bat_hang

#    elif (gml.instance_exists("player1") and not player1.swimming and not player1.dead):

#        if (dist < 160):
    
#            dir = point_direction(position.x+8, position.y+8, player1.position.x, player1.position.y)
#            if (Collision.is_collision_right(1) and player1.position.x > position.x+8):
        
#                if (player1.position.y < position.y+8): dir = 90
#                else: dir = 270
        
#            if (Collision.is_collision_left(1) and player1.position.x < position.x+8):
        
#                if (player1.position.y < position.y+8): dir = 90
#                else: dir = 270
        
#            if (Collision.is_collision_top(1) and player1.position.y < position.y+8 and abs(player1.position.x - position.x) > 8):
        
#                if (player1.position.x < position.x+8): dir = 180
#                else: dir = 0
        
#            if (Collision.is_collision_bottom(1) and player1.position.y > position.y+8 and abs(player1.position.x - position.x) > 8):
        
#                if (player1.position.x < position.x+8): dir = 180
#                else: dir = 0
        
        
#            if (gml.collision_point(position.x+8, position.y+16, "water", 0, 0) and dir > 180 and dir < 360):
        
#                dir = 90
        
        
#            if (not gml.collision_point(position.x, position.y+12, "water", 0, 0) or player1.position.y < position.y):
        
#                x_vel = 1 * cos(degtorad(dir))
#                y_vel = -1 * sin(degtorad(dir))
        
    
#        else:
    
#            if (gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): status = HANG
#            else:
        
#                dir = 90
#                x_vel = 1 * cos(degtorad(dir))
#                y_vel = -1 * sin(degtorad(dir))  
        
    
  
#        if (player1.position.x < position.x+8):
#            sprite_index = s_bat_left
#        else:
#            sprite_index = s_bat_right

#    else:

#        if (gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): status = HANG
#        else:
    
#            dir = 90
#            x_vel = 1 * cos(degtorad(dir))
#            y_vel = -1 * sin(degtorad(dir))  
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
