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
#            <argument kind="STRING">whipped = false</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

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
#            <argument kind="STRING">if (sprite_index == s_shop_throw_l):

#        status = ATTACK
#        sprite_index = s_shop_left
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

#func collision with o_character():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="character">
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
#            <argument kind="STRING">if (status == IDLE or status == FOLLOW or status == STUNNED or status == DEAD or hp < 1 or other.dead or other.stunned or abs(other.position.x-(position.x+8)) > 8):

#        # DY:  do nothing

#    elif (not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

#        if (status < STUNNED):
	
#            other.y_vel=-6-0.2*other.y_vel
#            if (global.has_spike_shoes):  hp -= (3 * ceil(other.fall_timer/16)) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#            else: hp -= (1 * ceil(other.fall_timer/16))
#            other.fall_timer = 0
#            status = STUNNED
#            counter = stun_time
#            y_vel = -6
#            if (other.position.x < position.x+8): x_vel += 1
#            else: x_vel -= 1
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
	

#    elif (other.invincible == 0 and status < STUNNED):

#        if (gml.collision_point(position.x+8, position.y-4, "solid", 0, 0)):
	
#            other.blink = 30
#            other.invincible = 30
#            if (other.position.x < position.x):
#                other.x_vel = -6
#            else:
#                other.x_vel = 6
#            gml.instance_create(other.position.x, other.position.y, "blood")
	
#            if (global.plife > 0):
		
#                global.plife -= 1
#                if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[19] += 1
		
#            Audio.play_sound(global.snd_hurt)
	
#        elif (status != THROW):
	
#            status = THROW
#            x_vel = 0
#            if (other.position.x > position.x+8):
		
#                facing = RIGHT
#                sprite_index = s_shop_throw_l
#                other.position.x = position.x
#                other.position.y = position.y
#                other.y_vel = -6
#                other.x_vel = 6
		
#            else:
		
#                facing = LEFT
#                sprite_index = s_shop_throw_l
#                other.position.x = position.x + 16
#                other.position.y = position.y
#                other.y_vel = -6
#                other.x_vel = -6
		
		
#            other.stunned = true
#            other.bounced = false
#            other.wall_hurt = 1
		
#            with other
		
#                if (hold_item):
			
#                    if (hold_item.type == "Gold Idol"): hold_item.position.y -= 8
#                    scr_drop_item(x_vel, y_vel)
			
			
	

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

#func collision with o_shotgun():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="shotgun">
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
#            <argument kind="STRING">if (hp > 0 and status == ATTACK and not has_gun):

#        with other
	
#            if (held):
		
#                player1.hold_item = 0
#                player1.pickup_item_type = ""
#                held = false
		
#            gml.instance_destroy()
	
#        has_gun = true
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
#            <argument kind="STRING">if (not whipped):

#        if (other.type == "Machete"):
	
#            hp -= other.damage
#            if (blood_left > 0):
		
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
		
	
#        y_vel = -2
#        if (other.position.x < position.x): x_vel = 1
#        else: x_vel = -1
#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)
#        status = ATTACK
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
#            <argument kind="STRING">if (not whipped):

#        if (other.type == "Machete"):
	
#            hp -= other.damage
#            if (blood_left > 0):
		
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
		
	
#        y_vel = -2
#        if (other.position.x < position.x): x_vel = 1
#        else: x_vel = -1
#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)
#        status = ATTACK
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
#            <argument kind="STRING">PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 0
#    image_speed = 0.5
#    my_grav = 0.6

#    # DY:  stats
#    type = "Shopkeeper"
#    style = "General"
#    hp = 20
#    invincible = 0
#    favor = 12

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    THROW = 3
#    PATROL = 4
#    FOLLOW = 5
#    STUNNED = 98
#    DEAD = 99
#    status = 0

#    whipped = false
#    bounced = false
#    dead = false
#    counter = 0
#    sight_counter = 0
#    turn_timer = 0
#    throw_count = 0
#    stun_time = 5

#    bet_value = 1000 + global.curr_level * 500

#    LEFT = 0
#    RIGHT = 1
#    facing = LEFT

#    shake_counter = 0
#    shake_toggle = 1

#    welcomed = false
#    angered = false

#    has_gun = true
#    firing = 0
#    firing_max = 30</argument>
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
#            <argument kind="STRING">if (facing == RIGHT): draw_sprite_ext(sprite_index, image_index, position.x+16, position.y, -1, image_yscale, image_angle, image_blend, image_alpha)
#    else: draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha)
#    # DY:  draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, 1, 0, c_white, 1)
#    if (has_gun and status != IDLE and status != FOLLOW):

#        if (facing == LEFT): draw_sprite_ext(s_shotgun_left, 0, position.x+6, position.y+10, 1, 1, 0, c_white, 1)
#        else: draw_sprite_ext(s_shotgun_right, 0, position.x+10, position.y+10, 1, 1, 0, c_white, 1)
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0]+view_wview[0]+4 and:
#         position.y > view_yview[0]-20 and position.y < view_yview[0]+view_hview[0]+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (not held): y_vel += my_grav
#    if (y_vel > 8): y_vel = 8

#    col_left = false
#    col_right = false
#    col_bot = false
#    col_top = false
#    if (Collision.is_collision_left(1)): col_left = true
#    if (Collision.is_collision_right(1)): col_right = true
#    if (Collision.is_collision_bottom(1)): col_bot = true
#    if (Collision.is_collision_top(1)): col_top = true

#    if (col_bot and status != STUNNED): y_vel = 0

#    if (throw_count > 0): throw_count -= 1

#    # DY:  crushed
#    if (status >= STUNNED):

#        if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0)):
	
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            Audio.play_sound(global.snd_caveman_die)
#            if (hp > 0):
		
#                if (InLevel.is_real_level()): global.enemy_kills[19] += 1
#                global.shopkeepers += 1
#                global.kills += 1
		
#            global.murderer = true
#            gml.instance_destroy()
	

#    elif (not held and gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        Audio.play_sound(global.snd_caveman_die)
#        if (hp > 0):
	
#            if (InLevel.is_real_level()): global.enemy_kills[19] += 1
#            global.shopkeepers += 1
#            global.kills += 1
	
#        global.murderer = true
#        if (has_gun):
	
#            obj = gml.instance_create(position.x+8, position.y+8, "shotgun")
#            obj.y_vel = randi_range(4,6)
#            if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#            else: obj.x_vel = randi_range(4,6)
#            obj.cost = 0
#            obj.for_sale = false
#            has_gun = false
	
#        gml.instance_destroy()


#    if (status != DEAD and status != STUNNED and hp < 1):

#        status = DEAD


#    dist = gml.distance_to_object(player1)    

#    if (status == IDLE or status == FOLLOW):

#        if (player1.hold_item > 0):
	
#            item = player1.hold_item
#            if (item.cost > 0):
		
#                global.message = item.buy_message
#                if (global.gamepad_on): global.message2 = "PRESS " + scr_get_joy(global.joy_pay_val) + " TO PURCHASE."
#                else: global.message2 = "PRESS " + scr_get_key(global.key_pay_val) + " TO PURCHASE."
#                global.message_timer = 200
		
	


#    if ((status == PATROL or status == WALK)):

#        if (not player1.dead and gml.distance_to_object(player1) < 64 and player1.position.y - (position.y+8) < 16):
	
#            status = ATTACK
	
#        elif (abs(player1.position.x-(position.x+8)) < 4):
	
#            status = ATTACK
	


#    if (status == IDLE):

#        bounced = false
	
#        if (col_left):
	
#            position.x += 1
	
#        if (col_right):
	
#            position.x -= 1
	
#        if (col_left and col_right): status = ATTACK
	
#        if (player1.position.x < position.x+8): facing = LEFT
#        else: facing = RIGHT
	
#        if (y_vel < 0 and col_top):
	
#            y_vel = 0
	
	
#        if (global.murderer or global.thief_level > 0):
	
#            status = PATROL
	
#        elif (not welcomed and (LevelGeneration.scr_get_room_x(player1.position.x) == LevelGeneration.scr_get_room_x(position.x) and LevelGeneration.scr_get_room_y(player1.position.y) == LevelGeneration.scr_get_room_y(position.y))):
	
#            if (style == "Bomb"): global.message = "WELCOME TO " + scr_get_name() + "'S BOMB SHOP!"
#            elif (style == "Weapon"): global.message = "WELCOME TO " + scr_get_name() + "'S ARMORY!"
#            elif (style == "Clothing"): global.message = "WELCOME TO " + scr_get_name() + "'S CLOTHING SHOP!"
#            elif (style == "Rare"): global.message = "WELCOME TO " + scr_get_name() + "'S SPECIALTY SHOP!"
#            elif (style == "Craps"): global.message = "WELCOME TO " + scr_get_name() + "'S DICE HOUSE!"
#            elif (style == "Kissing"): global.message = "WELCOME TO " + scr_get_name() + "'S KISSING PARLOR!"
#            elif (style == "Ankh"): global.message = "I HAVE SOMETHING SPECIAL..."
#            else: global.message = "WELCOME TO " + scr_get_name() + "'S SUPPLY SHOP!"
#            if (style == "Craps"):
		
#                if (global.gamepad_on): global.message2 = "PRESS " + scr_get_joy(global.joy_pay_val) + " TO BET $" + str\(bet_value) + "."
#                else: global.message2 = "PRESS " + scr_get_key(global.key_pay_val) + " TO BET $" + str\(bet_value) + "."
		
#            elif (style == "Kissing"):
		
#                if (global.gamepad_on): global.message2 = "$" + str\(InLevel.get_kiss_value()) + " A KISS. PRESS " + scr_get_joy(global.joy_pay_val) + "."
#                else: global.message2 = "$" + str\(InLevel.get_kiss_value()) + " A KISS. PRESS " + scr_get_key(global.key_pay_val) + "."
		
#            else: global.message2 = ""
#            global.message_timer = 200
#            welcomed = true
	
	
#        # DY: # DY: # DY: # DY: # DY: # DY: # DY: /
#        # DY:  CRAPS
#        # DY: # DY: # DY: # DY: # DY: # DY: # DY: /
	
#        if (style == "Craps"):
	
#            global.dice_rolled = true
#            global.dice_value = 0
#            if (gml.instance_number(dice) == 2 and player1.bet > 0):
		
#                with dice
			
#                    if (not rolled): global.dice_rolled = false
#                    global.dice_value += value
			
		
#            else:
		
#                global.dice_rolled = false
		
		
#            if (global.dice_rolled):
		
#                if (global.dice_value == 7):
			
#                    if (InLevel.is_real_level()): global.dice_games_won += 1
#                    global.message = "YOU ROLLED A SEVEN!"
#                    global.message2 = "YOU WIN A PRIZE!"
#                    global.message_timer = 200
#                    player1.bet = 0
#                    with item
				
#                        if (in_dice_house):
					
#                            obj = gml.instance_create(position.x-4, position.y+6, "poof")
#                            obj.x_vel = -0.4
#                            obj = gml.instance_create(position.x+4, position.y+6, "poof")
#                            obj.x_vel = 0.4
#                            scr_generate_item(position.x, position.y, 1)
#                            obj.in_dice_house = true
#                            if (player1.position.x < position.x): position.x -= 32
#                            else: position.x += 32
#                            obj = gml.instance_create(position.x-4, position.y+6, "poof")
#                            obj.x_vel = -0.4
#                            obj = gml.instance_create(position.x+4, position.y+6, "poof")
#                            obj.x_vel = 0.4
#                            cost = 0
#                            for_sale = false
#                            in_dice_house = false
					
				
			
#                elif (global.dice_value > 7):
			
#                    if (InLevel.is_real_level()): global.dice_games_won += 1
#                    global.message = "YOU ROLLED A " + str\(global.dice_value) + "!"
#                    global.message2 = "CONGRATULATIONS! YOU WIN!"
#                    global.message_timer = 200
#                    global.collect += player1.bet * 2
#                    global.collect_counter += 20
#                    if (global.collect_counter > 100): global.collect_counter = 100
#                    player1.bet = 0
			
#                elif (global.dice_value < 7):
			
#                    if (InLevel.is_real_level()): global.dice_games_lost += 1
#                    global.message = "YOU ROLLED A " + str\(global.dice_value) + "!"
#                    global.message2 = "I'M SORRY, BUT YOU LOSE!"
#                    global.message_timer = 200
#                    player1.bet = 0
			
#                global.dice_rolled = false
#                with dice  rolled = false 
		
	
#        elif (player1.hold_item > 0):
	
#            obj = player1.hold_item
#            if (obj.cost > 0):
		
#                if (LevelGeneration.scr_get_room_x(player1.position.x) == LevelGeneration.scr_get_room_x(position.x) and LevelGeneration.scr_get_room_y(player1.position.y) == LevelGeneration.scr_get_room_y(position.y)):
			
#                    status = FOLLOW
			
		
	

#    elif (status == FOLLOW):

#        image_speed = 0.5
	
#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
	
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
	
	
#        if (turn_timer > 0): turn_timer -= 1
#        elif (abs(player1.position.y - (position.y+8)) < 8 and Collision.is_collision_bottom(1) and dist > 16):
	
#            if (player1.position.x < position.x): facing = LEFT
#            else: facing = RIGHT
#            turn_timer = 10
	
	
#        i = dist/16 * 1.5
#        if (facing == LEFT):
	
#            x_vel = -i
	
#        else:
	
#            x_vel = i
	

#        if (x_vel < -3): x_vel = -3
#        if (x_vel > 3): x_vel = 3
	
#        if (dist < 12 or player1.position.y < position.y): x_vel = 0
	
#        if (player1.hold_item != 0):
	
#            obj = player1.hold_item
#            if (obj == 0 or obj.cost == 0):
		
#                status = IDLE
		
	
#        else:
	
#            status = IDLE
	

#    elif (status == PATROL):

#        bounced = false
	
#        if (y_vel < 0 and Collision.is_collision_top(1)):
	
#            y_vel = 0
	

#        if (col_bot and counter > 0): counter -= 1    
#        if (counter < 1):
	
#            facing = randi_range(0,1)
#            status = WALK
	

#    elif (status == WALK):

#        image_speed = 0.5

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
	
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
	
	
#        if (facing == LEFT):
	
#            if (not gml.collision_point(position.x-1, position.y, "solid", -1, -1)):
		
#                status = PATROL
#                counter = randi_range(20,50)
#                x_vel = 0
		
#            x_vel = -1.5
	
#        else:
	
#            if (not gml.collision_point(position.x+16, position.y, "solid", -1, -1)):
		
#                status = PATROL
#                counter = randi_range(20,50)
#                x_vel = 0
		
#            x_vel = 1.5
	
	
#        if (randi_range(1,100) == 1):
	
#            status = PATROL
#            counter = randi_range(20,50)
#            x_vel = 0
	

#    elif (status == ATTACK):

#        image_speed = 1
	
#        if (not angered):
	
#            with item
		
#                cost = 0
#                for_sale = false
		
#            angered = true
	
	
#        if (turn_timer > 0): turn_timer -= 1
#        elif (abs(player1.position.y - (position.y+8)) < 8 and Collision.is_collision_bottom(1) and dist > 16):
	
#            if (player1.position.x < position.x): facing = LEFT
#            else: facing = RIGHT
#            turn_timer = 20
	
	
#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
	
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
	
	
#        if (facing == LEFT): x_vel = -3
#        else: x_vel = 3
	
#        if (has_gun):
	
#            if (firing > 0): firing -= 1
#            elif (abs(player1.position.y - (position.y+8)) < 32):
		
#                if (facing == LEFT and player1.position.x < position.x+8 and dist < 96):
			
#                    gml.instance_create(position.x, position.y+9, "shotgunBlastLeft")
#                    for (i = 0 i < 6 i+= 1)
				
#                        obj = gml.instance_create(position.x+4, position.y+8, "bullet")
#                        obj.x_vel = (-1 * randi_range(6,8)) + x_vel
#                        if (obj.x_vel >= -6): obj.x_vel = -6
#                        obj.y_vel = random(1) - random(1)
#                        obj.safe = true
#                        with obj  if (gml.collision_point(position.x, position.y, "solid", 0, 0)): gml.instance_destroy() 
				
#                    y_vel -= 1
#                    x_vel += 3
#                    Audio.play_sound(global.snd_shotgun)
#                    firing = firing_max
			
#                if (facing == RIGHT and player1.position.x > position.x+8 and dist < 96):
			
#                    gml.instance_create(position.x+16, position.y+9, "shotgunBlastRight")
#                    for (i = 0 i < 6 i+= 1)
				
#                        obj = gml.instance_create(position.x+12, position.y+8, "bullet")
#                        obj.x_vel = randi_range(6,8) + x_vel
#                        if (obj.x_vel < 6): obj.x_vel = 6
#                        obj.y_vel = random(1) - random(1)
#                        obj.safe = true
#                        with obj  if (gml.collision_point(position.x, position.y, "solid", 0, 0)): gml.instance_destroy() 
				
#                    y_vel -= 1
#                    x_vel -= 3
#                    Audio.play_sound(global.snd_shotgun)
#                    firing = firing_max
			
		
	
	
#        # DY:  jump
#        if (player1.position.y > position.y and abs(player1.position.x - (position.x+8)) < 64):
	
#            # DY:  do nothing
	
#        elif ((facing == LEFT and gml.collision_point(position.x-16, position.y, "solid", -1, -1)) or:
#            (facing == RIGHT and gml.collision_point(position.x+32, position.y, "solid", -1, -1)))
	
#            if (col_bot and not Collision.is_collision_top(4)): y_vel = -1 * randi_range(7,8)
#            /*
#            else:
		
#                if (facing == LEFT): x_vel = -1.5
#                else: x_vel = 1.5
		
#            */
	
#        elif (player1.position.y <= position.y+16 and :
#                 ((facing == LEFT and not gml.collision_point(position.x-16, position.y+16, "solid", -1, -1)) or
#                 (facing == RIGHT and not gml.collision_point(position.x+32, position.y+16, "solid", -1, -1))))
	
#            if (col_bot and not Collision.is_collision_top(4)): y_vel = -1 * randi_range(7,8)
	
	
#        if (not col_bot and player1.position.y > position.y+8):
	
#            if (facing == LEFT): x_vel = -1.5
#            else: x_vel = 1.5
	
	
#        if (player1.dead):
	
#            status = WALK
	

#    elif (status == STUNNED):

#            if (col_bot): sprite_index = s_shop_stun_l
#            elif (bounced):
		
#                if (y_vel < 0): sprite_index = s_shop_bounce_l
#                else: sprite_index = s_shop_fall_l
		
#            else:
		
#                if (x_vel < 0): sprite_index = s_shop_die_ll
#                else: sprite_index = s_shop_die_lr
		
	
#        if (col_bot and not bounced):
	
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
	
	
#        if (held or col_bot):
		  
#            if (counter > 0): counter -= 1
#            elif (hp > 0):
		
#                status = ATTACK
#                if (held):
			
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
			
		
	

#    elif (status == DEAD):

#        if (not dead):
	
#            if (InLevel.is_room("r_stars")):
		
#                if (stars_room.kills < 99): stars_room.kills += 1
		
#            else:
		
#                if (InLevel.is_real_level()): global.enemy_kills[19] += 1
#                global.shopkeepers += 1
#                global.kills += 1
#                global.murderer = true
#                repeat(randi_range(1,4))
			
#                    obj = gml.instance_create(position.x+8, position.y+8, "gold_nugget")
#                    obj.y_vel = -1
#                    obj.x_vel = randi_range(1,3)-randi_range(1,3)
			
		
#            Audio.play_sound(global.snd_caveman_die)
		
#            dead = true
	

#        sprite_index = s_shop_die_l

	
#        if (abs(x_vel) > 0 or abs(y_vel) > 0): status = STUNNED


#    if (status >= STUNNED):

#        if (has_gun):
	
#            obj = gml.instance_create(position.x+8, position.y+8, "shotgun")
#            obj.y_vel = randi_range(4,6)
#            if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#            else: obj.x_vel = randi_range(4,6)
#            obj.cost = 0
#            obj.for_sale = false
#            has_gun = false
	

#        scr_check_collisions()
	
#        if (x_vel == 0 and y_vel == 0 and hp < 1): status = DEAD


#    # DY: if (Collision.is_collision_solid()): position.y -= 2

#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (status < STUNNED and status != THROW):

#        if (abs(x_vel) > 0): sprite_index = s_shop_run_left
#        else: sprite_index = s_shop_left

#    if (held):

#            if (hp > 0): sprite_index = s_shop_held_l
#            else: sprite_index = s_shop_d_held_l

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	
