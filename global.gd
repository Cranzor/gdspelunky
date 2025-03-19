extends Node

var key
var locked_chest: bool
var tomb_lord
var alien_craft
var alienbosses
var aliens
var arrows
var ash_grave
var bats
var bigemeralds
var bigrubies
var bigsapphires
var black_market
var blood_level
var bombs
var cavemen
var cemetary
var check_water
var city_of_gold
var clean_solids
var collect
var collect_counter
var craps_point
var curr_level: int:
	set(value):
		curr_level = value
var custom_level
var custom_level_author
var custom_level_name
var damsels
var damsels_bought
var damsels_grabbed = 0 #---[FLAG] setting to 0
var damsels_killed
var damsels_killed_total: int
var damsels_saved_total: int
var dark_level
var darkness_lerp
var deadfish
var diamonds
var dice_games_lost
var dice_games_played
var dice_games_won
var dice_rolled
var dice_value
var dll_ss_free_sound
var dll_ss_get_sound_bytes_per_second
var dll_ss_get_sound_freq
var dll_ss_get_sound_length
var dll_ss_get_sound_pan
var dll_ss_get_sound_position
var dll_ss_get_sound_vol
var dll_ss_init
var dll_ss_is_sound_looping
var dll_ss_is_sound_paused
var dll_ss_is_sound_playing
var dll_ss_load_sound
var dll_ss_loop_sound
var dll_ss_pause_sound
var dll_ss_play_sound
var dll_ss_resume_sound
var dll_ss_set_sound_freq
var dll_ss_set_sound_pan
var dll_ss_set_sound_position
var dll_ss_set_sound_vol
var dll_ss_stop_sound
var dll_ss_unload
var down_to_run
var draw_hud
var emeralds
var end_room_x
var end_room_y
var enemy_deaths: Dictionary[int, int] = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, \
				6 : 0, 7 : 0, 8 : 0, 9 : 0, 10 : 0, 11 : 0, 12 : 0, 13 : 0, 14 : 0, 15 : 0, \
				16 : 0, 17 : 0, 18 : 0, 19 : 0, 20 : 0, 21 : 0, 22 : 0, 23 : 0, 24 : 0}
var enemy_kills: Dictionary[int, int] = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, \
				6 : 0, 7 : 0, 8 : 0, 9 : 0, 10 : 0, 11 : 0, 12 : 0, 13 : 0, 14 : 0, 15 : 0, \
				16 : 0, 17 : 0, 18 : 0, 19 : 0, 20 : 0, 21 : 0}
var entity_gen
var exit_x
var exit_y
var favor
var firefrogs
var first_custom_level
var first_time
var flares
var frogs
var fullscreen
var fullscreenargument
var game_start
var gamepad_on = false
var gen_black_market
var gen_giant_spider
var gen_gold_entrance
var gen_market_entrance
var gen_tomb_lord
var gen_udjat_eye
var ghost_exists
var giant_spider
var giantspiders
var gold
var gold_chance
var gold_entrance
var goldbar
var goldbars
var graphics_high
var had_dark_level
var has_ankh
var has_cape
var has_compass
var has_crown
var has_gloves
var has_jetpack
var has_jordans
var has_kapala
var has_mitt
var has_ninja_suit
var has_parachute
var has_spectacles
var has_spike_shoes
var has_spring_shoes
var has_sticky_bombs
var has_udjat_eye
var hawkmen
var idols
var idols_converted: int
var idols_grabbed: int
var is_damsel
var is_tunnel_man
var items_bought
var items_stolen: int
var joy_attack_val = "attack"
var joy_bomb_val = "bomb"
var joy_flare_val = "flare"
var joy_item_val = "item"
var joy_jump_val = "jump"
var joy_pay_val = "pay"
var joy_rope_val = "rope"
var joy_run_val = "run"
var joy_start_val = "start"
var kali_gift
var kali_punish
var keep_score
var key_attack_val = "attack"
var key_bomb_val = "bomb"
var key_down_val = "down"
var key_flare_val = "flare"
var key_item_val = "item"
var key_jump_val = "jump"
var key_left_val = "left"
var key_pay_val = "pay"
var key_right_val = "right"
var key_rope_val = "rope"
var key_run_val = "run"
var key_up_val = "up"
var kills
var kisses_bought
var lake
var level_deaths: Array
var level_select
var level_type = 0 #temp for testing
var locked_chest_chance
var made_black_market
var made_gold_entrance
var made_market_entrance
var made_moai
var made_udjat_eye
var mantraps
var market_chance
var market_entrance
var megamouths
var message
var message2
var message_timer
var mini1
var mini2
var mini3
var misc_deaths: Dictionary[int, int] = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, \
				6 : 0, 7 : 0, 8 : 0, 9 : 0, 10 : 0, 11 : 0}
var money
var monkeys
var murderer = false
var mus_boss
var mus_cave
var mus_credits
var mus_ice
var mus_lush
var mus_temple
var mus_title
var mus_victory
var music
var music_vol
var my_font = "main_font"
var my_font_small = "small_font"
var new_kills
var new_money
var new_saves
var new_time
var next_custom_level
var no_dark_level
var nuggets
var pickup_item
var piranhas
var plife
var prev_custom_level
var prob_alien
var prob_cemetary
var prob_dark_level
var prob_lake
var prob_sac_pit
var prob_snake_pit = 8
var prob_yeti_lair
var room_path = {[0,0]:0, [0,1]:0, [0,2]:0, [0,3]:0, #adjust?
	[1,0]:0, [1,1]:0, [1,2]: 0, [1,3]:0,
	[2,0]:0, [2,1]:0, [2,2]:0, [2,3]:0,
	[3,0]:0, [3,1]: 0, [3,2]:0, [3,3]:0}
var room_poss: Dictionary
var rope
var rubies
var sacrifice_pit
var sapphires
var scarabs
var scores_start
var screen_scale
var shake
var shake_toggle
var shop
var shopkeepers
var skeletons
var skulls
var snake_pit
var snakes
var snd_alert
var snd_alien
var snd_arrow_trap
var snd_bat
var snd_big_jump
var snd_blink1
var snd_blink2
var snd_boing
var snd_bossargument
var snd_bow_pull
var snd_break
var snd_caveman_die
var snd_chest_open
var snd_click
var snd_climb1
var snd_climb2
var snd_coin
var snd_crunch
var snd_damsel
var snd_die
var snd_explosion
var snd_flame
var snd_flameargument
var snd_frog
var snd_gem
var snd_ghost
var snd_ghostargument
var snd_giant_spider
var snd_giant_spiderargument
var snd_hit
var snd_hurt
var snd_ignite
var snd_jetpack
var snd_jetpackargument
var snd_jump
var snd_kiss
var snd_land
var snd_laser
var snd_laser_charge
var snd_mattock_break
var snd_monkey
var snd_p_fall
var snd_p_fallargument
var snd_pickup
var snd_psychic
var snd_push
var snd_shotgun
var snd_slam
var snd_slamargument
var snd_small_explode
var snd_small_explodeargument
var snd_spider_jump
var snd_splash
var snd_step1
var snd_step2
var snd_steps
var snd_t_fall
var snd_t_fallargument
var snd_teleport
var snd_throw
var snd_throwargument
var snd_thud
var snd_thump
var snd_thumpargument
var snd_trap
var snd_whip
var snd_yeti_yell
var snd_zombie
var sound_vol
var spiders
var start_room_x
var start_room_y
var temp1
var temp2
var temp3
var test_level
var thief_level = 0
var time
var title_start
var tofu
var tomblords
var total_chests: int
var total_crates: int
var total_monkey_kills: int
var tunnel1
var tunnel1_max
var tunnel2
var tunnel2_max
var tunnel3_max
var udjat_blink
var udjat_counter
var ufos
var used_shortcut
var vampires
var water_counter
var water_loop_safety
var xdamsels
var xmoney
var xtime
var xview
var xview_prev
var y_shake_diff
var yeti_lair
var yetikings
var yetis
var yview
var yview_prev
var zombies

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
