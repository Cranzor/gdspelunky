extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="7">
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
#            <argument kind="STRING">if (status == YELL):

#        status = IDLE
#        counter = 200


#    if (status == KISS):

#        status = SLAVE


#    if (sprite_index == s_damsel_exit2 or sprite_index = s_p_exit):

#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_whip():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="whip">
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
#            <argument kind="STRING">if (other.type == "Machete" and hit == 0):

#         hp -= other.damage
#         hit = 10
#         Audio.play_sound(global.snd_hit)
#         Audio.play_sound(global.snd_damsel)
#         if (blood_left > 0):
     
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
     

#    elif (status != THROWN and (status < EXIT or status == SLAVE or status == KISS) and hit == 0):

#        y_vel = -2
#        hit = 10
#        Audio.play_sound(global.snd_hit)
#        Audio.play_sound(global.snd_damsel)
#        if (for_sale):
    
#            InLevel.scr_shopkeeper_anger(3)
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_whip_pre():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="whip_pre">
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
#            <argument kind="STRING">if (other.type == "Machete" and hit == 0):

#         hp -= other.damage
#         hit = 10
#         Audio.play_sound(global.snd_hit)
#         Audio.play_sound(global.snd_damsel)
#         if (blood_left > 0):
     
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
     

#    elif (status != THROWN and (status < EXIT or status == SLAVE or status == KISS) and hit == 0):

#        y_vel = -2
#        hit = 10
#        Audio.play_sound(global.snd_hit)
#        Audio.play_sound(global.snd_damsel)
#        if (for_sale):
    
#            InLevel.scr_shopkeeper_anger(3)
    
#    </argument>
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
#            <argument kind="STRING">type = "Damsel"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 8)
#    image_speed = 0.5
#    trigger = true
#    startled = false
#    invincible = false
#    swimming = false
#    heavy = true
#    cost = InLevel.get_kiss_value() * 3
#    if (global.is_damsel): buy_message = "I'LL LET YOU HAVE HIM FOR $" + str\(cost) + "!"
#    else: buy_message = "I'LL LET YOU HAVE HER FOR $" + str\(cost) + "!"

#    hp = 4
#    blood_left = 4
#    favor = 8
#    sac_count = 20

#    IDLE = 0
#    RUN = 1
#    THROWN = 2
#    YELL = 3
#    EXIT = 4
#    SLAVE = 5
#    KISS = 6
#    DEAD = 99
#    dead = false
#    status = IDLE
#    hit = 0

#    facing = LEFT

#    bounced = false
#    burning = false
#    counter = 200
#    stun_max = 120

#    bomb_id = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func destroy():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DESTROY" id="0">
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
#            <argument kind="STRING">if (bomb_id):

#        bomb_id.enemy_id = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func draw():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DRAW" id="0">
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
#            <argument kind="STRING">if (facing == RIGHT): image_xscale = -1
#    else: image_xscale = 1

#    draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    if (cost > 0):

#        draw_sprite_ext(s_small_collect, cimg, position.x, position.y-12, 1, 1, 0, c_white, 1)
#        cimg += 1
#        if (cimg > 9): cimg = 0
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
#            <argument kind="STRING">if (active and:
#        gml.collision_point(position.x, position.y, "exit", 0, 0) and
#        hp > 0 and
#        not held and
#        status != THROWN)

#        global.damsels_saved_total += 1
#        global.damsels += 1
#        global.xdamsels += 1
#        door = gml.instance_place(position.x, position.y, exit)
#        position.x = door.position.x+8
#        position.y = door.position.y+8
#        if (global.is_damsel): sprite_index = s_p_exit
#        else: sprite_index = s_damsel_exit2
#        status = 4
#        x_vel = 0
#        y_vel = 0
#        Audio.play_sound(global.snd_steps)
#        depth = 1000
#        active = false
#        can_pick_up = false


#    if (sprite_index = s_damsel_exit2 or sprite_index = s_p_exit):

#        depth = 1000
#        invincible = true


#    if (hit > 0): hit -= 1

#    if (gml.collision_point(position.x, position.y, "water_swim", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x, position.y, "splash")
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    
#        my_grav = 0.2

#    else:

#        swimming = false
#        my_grav = 0.6


#    # DY:  if damsel dies offscreen sometimes it won't trigger shopkeeper:
#    if (cost > 0 and hp <= 0):

#        InLevel.scr_shopkeeper_anger(3)


#    if (not invincible):

#        if (gml.collision_point(position.x, position.y, "solid", 0, 0) and not held):
    
#            MiscScripts.scr_create_blood(position.x, position.y, 3)
#            if (hp > 0):
        
#                global.damsels_killed_total += 1
#                global.damsels_killed += 1
#                global.kills += 1
        
#            Audio.play_sound(global.snd_damsel)
#            gml.instance_destroy()
    

#        if (burning > 0):
    
#            if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(4,12), position.y+randi_range(4,12), "burn")
#            burning -= 1
    

#        if (gml.collision_point(position.x, position.y+6, "lava", 0, 0)):
    
#            status = DEAD
#            dead = true
#            if (hp > 0):
        
#                hp = 0
#                global.damsels_killed_total += 1
        
#            burning = 1
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0.1
#            depth = 999
    

#        if (gml.collision_point(position.x, position.y+6, "spikes", 0, 0) and y_vel > 2):
    
#            obj = gml.instance_place(position.x, position.y+6, spikes)
#            with obj  sprite_index = s_spikes_blood 
#            if (hp > 0):
        
#                MiscScripts.scr_create_blood(position.x, position.y, 3)
        
#            if (global.is_damsel):
        
#                sprite_index = s_die_l
        
#            else:
        
#                sprite_index = s_damsel_die_l
        
#            status = DEAD
#            dead = true
#            if (hp > 0):
        
#                hp = 0
#                global.damsels_killed_total += 1
        
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0.2
    

#        if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "spears_left", 0, 0) and:
#            (status != THROWN or Collision.is_collision_bottom(1)))
    
#            obj = instance_nearest(position.x, position.y, spears_left)
#            if (obj.image_index >= 19 and obj.image_index < 28):
        
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
#                hp -= 2
#                status = THROWN
#                counter = stun_max
#                y_vel = -6
#                if (obj.position.x < position.x): x_vel = 4
#                else: x_vel = -4
#                image_speed = 0.5
#                Audio.play_sound(global.snd_hit)
#                gml.instance_create(other.position.x+8, other.position.y+8, "blood")
        
    


#    if (not held and y_vel > 2 and status != THROWN):

#        status = THROWN
#        SS_Set_sound_pan(global.snd_damsel, 0)
#        Audio.play_sound(global.snd_damsel)


#    if (held):

#        facing = character.facing

#    elif (status == SLAVE):

#        if (player1.position.x < position.x): facing = LEFT
#        else: facing = RIGHT
#        if (global.is_damsel):
    
#            sprite_index = s_stand_left
    
#        else:
    
#            sprite_index = s_damsel_left
    

#    elif (status == KISS):

#        if ((sprite_index == s_damsel_kiss_l or:
#             sprite_index == s_p_kiss_l) and image_index == 7)
    
#            if (facing == LEFT): gml.instance_create(position.x-8, position.y-8, "heart")
#            else: gml.instance_create(position.x+8, position.y-8, "heart")
#            Audio.play_sound(global.snd_kiss)
    

#    elif (status == IDLE):

#        if (global.is_damsel):
    
#            sprite_index = s_stand_left
    
#        else:
    
#            sprite_index = s_damsel_left
    
#        if (counter > 0): counter -= 1
#        else:
    
#            status = YELL
#            if (global.is_damsel):
        
#                sprite_index = s_yell_left
        
#            else:
        
#                sprite_index = s_damsel_yell_l
        
#            if (player1.position.x < position.x): SS_Set_sound_pan(global.snd_damsel, -10000)
#            elif (player1.position.x > position.x): SS_Set_sound_pan(global.snd_damsel, 10000)
#            else: SS_Set_sound_pan(global.snd_damsel, 0)
#            Audio.play_sound(global.snd_damsel)
    

#    elif (status == YELL):

#        if (image_index == 4):
    
#            gml.instance_create(position.x, position.y-16, "yell_help")
    

#    elif (status == RUN):

#        image_speed = 0.8
#        if (global.is_damsel):
    
#            sprite_index = s_run_left
    
#        else:
    
#            sprite_index = s_damsel_run_l
    
#        if (facing == LEFT and Collision.is_collision_left(2)): facing = RIGHT
#        if (facing == RIGHT and Collision.is_collision_right(2)): facing = LEFT
    
#        if (facing == LEFT):
    
#            x_vel = -1.5
    
#        else:
    
#            x_vel = 1.5
    

#    elif (status == THROWN):

#        # DY:  Collision.set_collision_bounds(-4, -2, 4, 2)

#        if (!startled):
    
#            global.damsels_grabbed += 1
#            startled = true
    
    
#        if (global.is_damsel):
    
#            if (x_vel == 0): sprite_index = s_stun_l
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = s_die_lBounce
#                else: sprite_index = s_die_lFall
        
#            else:
        
#                if (x_vel < 0): sprite_index = s_die_lL
#                else: sprite_index = s_die_lR
        
    
#        else:
    
#            if (x_vel == 0): sprite_index = s_damsel_stun_l
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = s_damsel_bounce_l
#                else: sprite_index = s_damsel_fall_l
        
#            else:
        
#                if (x_vel < 0): sprite_index = s_damsel_die_lL
#                else: sprite_index = s_damsel_die_lR
        
    
    
#        if (Collision.is_collision_bottom(1) and not bounced):
    
#            bounced = true
    
    
#        if (Collision.is_collision_bottom(2) or gml.collision_rectangle(position.x-4, position.y-6, position.x+4,  position.y+8, "web", 0, 0)):
    
#            if (!dead):
        
#                if (counter > 0): counter -= 1
#                else: status = RUN
        
        
#            if (hp <= 0):
        
#                if (global.is_damsel):
            
#                    sprite_index = s_die_l
            
#                else:
            
#                    sprite_index = s_damsel_die_l
            
#                status = DEAD
#                if (!dead):
            
#                    dead = true
#                    global.damsels_killed_total += 1
#                    global.damsels_killed += 1
#                    global.kills += 1
            
        
    


#    # DY:  sacrifice
#    if (status == THROWN or status == DEAD):

#        if (not held and x_vel == 0 and y_vel == 0):
    
#            if (gml.collision_point(position.x, position.y+8, "sac_altar_left", 0, 0)):
        
#                if (sac_count > 0): sac_count -= 1
#                else:
            
#                gml.instance_create(position.x, position.y, "flame")
#                Audio.play_sound(global.snd_small_explode)
#                MiscScripts.scr_create_blood(position.x, position.y, 3)
#                global.message = "KALI ACCEPTS YOUR SACRIFICE!"
#                if (global.favor <= -8):
            
#                    global.message = "KALI DEVOURS YOUR SACRIFICE!"
            
#                elif (global.favor < 0):
            
#                    if (status == 98): global.favor += favor*1.5
#                    else: global.favor += favor
#                    if (favor > 0): favor = 0
            
#                else:
            
#                    if (status == 98): global.favor += favor*1.5
#                    else: global.favor += favor
            
#                scr_get_favor_msg()
#                global.message_timer = 200
#                global.shake = 10
#                gml.instance_destroy()
            
        
    
#        else: sac_count = 20

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
