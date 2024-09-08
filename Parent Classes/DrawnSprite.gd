extends Node2D
class_name DrawnSprite

var sprites_and_offsets = {'black': Vector2(0, 0), 'black_fade_up': Vector2(0, 0), 'font': Vector2(0, 0), 'font_old': Vector2(0, 0), 'font_small': Vector2(0, 0), 'lvl': Vector2(0, 0), 'red': Vector2(0, 0), 'room': Vector2(0, 0), 'metal_block': Vector2(0, 0), 'metal_door': Vector2(0, 0), 'alien_floor': Vector2(0, 0), 'alien_front': Vector2(0, 0), 'alien_front2': Vector2(0, 0), 'alien_front3': Vector2(0, 0), 'alien_top': Vector2(0, 0), 'barrier': Vector2(0, 0), 'barrier_emitter': Vector2(0, 0), 'altar_left': Vector2(0, 0), 'altar_right': Vector2(0, 0), 'sac_altar': Vector2(0, 0), 'sac_altar_left': Vector2(0, 0), 'sac_altar_right': Vector2(0, 0), 'skull_block': Vector2(0, 0), 'cave_bg': Vector2(0, 0), 'cave_bg1': Vector2(0, 0), 'cave_bg2': Vector2(0, 0), 'cave_bg_entrance': Vector2(0, 0), 'entrance': Vector2(0, 0), 'exit': Vector2(0, 0), 'gold_door': Vector2(0, 0), 'msg_sign': Vector2(0, 0), 'dark': Vector2(0, 0), 'dark_bottom': Vector2(0, 0), 'dark_down': Vector2(0, 0), 'dark_fall': Vector2(0, 0), 'dark_gold': Vector2(0, 0), 'dark_gold_big': Vector2(0, 0), 'dark_left': Vector2(0, 0), 'dark_plat': Vector2(0, 0), 'dark_right': Vector2(0, 0), 'dark_smooth': Vector2(0, 0), 'dark_top': Vector2(0, 0), 'dark_top2': Vector2(0, 0), 'dark_up': Vector2(0, 0), 'dark_up2': Vector2(0, 0), 'ice': Vector2(0, 0), 'ice_block': Vector2(0, 0), 'ice_bottom': Vector2(0, 0), 'ice_bottom2': Vector2(0, 0), 'ice_caveman': Vector2(0, 0), 'ice_dl': Vector2(0, 0), 'ice_dlr': Vector2(0, 0), 'ice_down': Vector2(0, 0), 'ice_dr': Vector2(0, 0), 'ice_left': Vector2(0, 0), 'ice_lr': Vector2(0, 0), 'ice_right': Vector2(0, 0), 'ice_udl': Vector2(0, 0), 'ice_udr': Vector2(0, 0), 'ice_ul': Vector2(0, 0), 'ice_ulr': Vector2(0, 0), 'ice_up': Vector2(0, 0), 'ice_up2': Vector2(0, 0), 'ice_ur': Vector2(0, 0), 'moai': Vector2(0, 0), 'moai2': Vector2(0, 0), 'moai3': Vector2(0, 0), 'moai_inside': Vector2(0, 0), 'thin_ice1': Vector2(0, 0), 'thin_ice2': Vector2(0, 0), 'thin_ice3': Vector2(0, 0), 'thin_ice4': Vector2(0, 0), 'thin_ice5': Vector2(0, 0), 'thin_ice6': Vector2(0, 0), 'gold': Vector2(0, 0), 'gold_big': Vector2(0, 0), 'gold_block': Vector2(0, 0), 'lady_xoc': Vector2(0, 0), 'grave': Vector2(0, 0), 'grave2': Vector2(0, 0), 'grave3': Vector2(0, 0), 'grave4': Vector2(0, 0), 'grave5': Vector2(0, 0), 'grave6': Vector2(0, 0), 'grave_ash': Vector2(0, 0), 'ladder': Vector2(0, 0), 'ladder_top': Vector2(0, 0), 'vine': Vector2(0, 0), 'vine_bottom': Vector2(0, 0), 'vine_source': Vector2(0, 0), 'vine_top': Vector2(0, 0), 'leaves': Vector2(0, 0), 'leaves_dead': Vector2(0, 0), 'leaves_dead_r': Vector2(0, 0), 'leaves_right': Vector2(0, 0), 'leaves_top': Vector2(0, 0), 'lush': Vector2(0, 0), 'lush_bottom': Vector2(0, 0), 'lush_bottom2': Vector2(0, 0), 'lush_down': Vector2(0, 0), 'lush_gold': Vector2(0, 0), 'lush_gold_big': Vector2(0, 0), 'lush_left': Vector2(0, 0), 'lush_right': Vector2(0, 0), 'lush_smooth': Vector2(0, 0), 'lush_top': Vector2(0, 0), 'lush_top2': Vector2(0, 0), 'lush_up': Vector2(0, 0), 'lush_up2': Vector2(0, 0), 'lush_up3': Vector2(0, 0), 'tiki_torch': Vector2(0, 0), 'tree_branch_dead_l': Vector2(0, 0), 'tree_branch_dead_r': Vector2(0, 0), 'tree_branch_left': Vector2(0, 0), 'tree_branch_right': Vector2(0, 0), 'tree_top': Vector2(0, 0), 'tree_top_dead': Vector2(0, 0), 'tree_trunk': Vector2(0, 0), 'block': Vector2(0, 0), 'brick': Vector2(0, 0), 'brick2': Vector2(0, 0), 'brick_down': Vector2(0, 0), 'brick_gold': Vector2(0, 0), 'brick_gold_big': Vector2(0, 0), 'cave_bottom': Vector2(0, 0), 'cave_bottom_l': Vector2(0, 0), 'cave_bottom_r': Vector2(0, 0), 'cave_left': Vector2(0, 0), 'cave_right': Vector2(0, 0), 'cave_smooth': Vector2(0, 0), 'cave_top': Vector2(0, 0), 'cave_top2': Vector2(0, 0), 'cave_up': Vector2(0, 0), 'cave_up2': Vector2(0, 0), 'lamp': Vector2(0, 0), 'lamp_red': Vector2(0, 0), 'sign': Vector2(0, 0), 'sign_bomb': Vector2(0, 0), 'sign_clothing': Vector2(0, 0), 'sign_craps': Vector2(0, 0), 'sign_general': Vector2(0, 0), 'sign_kissing': Vector2(0, 0), 'sign_rare': Vector2(0, 0), 'sign_weapon': Vector2(0, 0), 'button': Vector2(0, 0), 'button_pushed': Vector2(0, 0), 'g_temple': Vector2(0, 0), 'g_temple_down': Vector2(0, 0), 'g_temple_up': Vector2(0, 0), 'g_temple_up2': Vector2(0, 0), 'g_temple_up3': Vector2(0, 0), 'g_temple_up4': Vector2(0, 0), 'g_temple_up5': Vector2(0, 0), 'g_temple_up6': Vector2(0, 0), 'g_temple_up7': Vector2(0, 0), 'g_temple_up8': Vector2(0, 0), 'temple': Vector2(0, 0), 'temple_bottom': Vector2(0, 0), 'temple_down': Vector2(0, 0), 'temple_gold': Vector2(0, 0), 'temple_gold_big': Vector2(0, 0), 'temple_left': Vector2(0, 0), 'temple_right': Vector2(0, 0), 'temple_top': Vector2(0, 0), 'temple_top2': Vector2(0, 0), 'temple_up': Vector2(0, 0), 'temple_up2': Vector2(0, 0), 'temple_up3': Vector2(0, 0), 'temple_up4': Vector2(0, 0), 'temple_up5': Vector2(0, 0), 'temple_up6': Vector2(0, 0), 'temple_up7': Vector2(0, 0), 'temple_up8': Vector2(0, 0), 'lava': Vector2(0, 0), 'lava_top': Vector2(0, 0), 'water': Vector2(0, 0), 'water_bottom': Vector2(0, 0), 'water_bottom2': Vector2(0, 0), 'water_bottom3': Vector2(0, 0), 'water_bottom4': Vector2(0, 0), 'water_bottom_tall1': Vector2(0, 0), 'water_bottom_tall2': Vector2(0, 0), 'water_top': Vector2(0, 0), 'tunnel_man_left': Vector2(-8, -8), 'tunnel_man_right': Vector2(-8, -8), 'yell_help': Vector2(-8, -8), 'damsel_attack_l': Vector2(-8, -8), 'damsel_bounce_l': Vector2(-8, -8), 'damsel_climb': Vector2(-8, -8), 'damsel_climb2': Vector2(-8, -16), 'damsel_climb3': Vector2(-8, -16), 'damsel_crawl_l': Vector2(-8, -8), 'damsel_die_l': Vector2(-8, -8), 'damsel_die_ll': Vector2(-8, -8), 'damsel_die_lr': Vector2(-8, -8), 'damsel_dt_hl': Vector2(-24, -8), 'damsel_duck_l': Vector2(-8, -8), 'damsel_exit': Vector2(-8, -8), 'damsel_exit2': Vector2(-8, -8), 'damsel_fall_l': Vector2(-8, -8), 'damsel_hang_l': Vector2(-8, -8), 'damsel_hold_l': Vector2(-8, -8), 'damsel_kiss_l': Vector2(-8, -8), 'damsel_kiss_r': Vector2(-8, -8), 'damsel_left': Vector2(-8, -8), 'damsel_left_ico': Vector2(0, 0), 'damsel_look_l': Vector2(-8, -8), 'damsel_push_l': Vector2(-8, -8), 'damsel_run_l': Vector2(-8, -8), 'damsel_stun_l': Vector2(-8, -8), 'damsel_whoa_l': Vector2(-8, -8), 'damsel_yell_l': Vector2(-8, -8), 'damsel_yell_r': Vector2(-8, -8), 'wal_damsel': Vector2(0, 0), 'attack_left': Vector2(-8, -8), 'climb_up': Vector2(-8, -8), 'climb_up2': Vector2(-8, -16), 'climb_up3': Vector2(-8, -16), 'crawl_left': Vector2(-9, -8), 'die_l': Vector2(-8, -8), 'die_l_bounce': Vector2(-8, -8), 'die_l_fall': Vector2(-8, -8), 'die_ll': Vector2(-8, -8), 'die_lr': Vector2(-8, -8), 'duck_left': Vector2(-8, -8), 'duck_to_hang_l': Vector2(-24, -8), 'fall_left': Vector2(-8, -8), 'hang_left': Vector2(-8, -8), 'jump_left': Vector2(-8, -8), 'look_left': Vector2(-8, -8), 'look_run_l': Vector2(-8, -8), 'p_exit': Vector2(-8, -8), 'p_kiss_l': Vector2(-8, -8), 'p_kiss_r': Vector2(-8, -8), 'push_left': Vector2(-8, -8), 'run_left': Vector2(-8, -8), 'stand_left': Vector2(-8, -8), 'stand_left_ico': Vector2(0, 0), 'stun_l': Vector2(-8, -8), 'throw_left': Vector2(-8, -8), 'whoa_left': Vector2(-12, -16), 'yell_left': Vector2(-8, -8), 'yell_right': Vector2(-8, -8), 'tunnel_attack_l': Vector2(-8, -8), 'tunnel_climb': Vector2(-8, -8), 'tunnel_climb2': Vector2(-8, -16), 'tunnel_climb3': Vector2(-8, -16), 'tunnel_crawl_l': Vector2(-9, -8), 'tunnel_die_l': Vector2(-8, -8), 'tunnel_die_ll': Vector2(-8, -8), 'tunnel_die_lr': Vector2(-8, -8), 'tunnel_dt_hl': Vector2(-24, -8), 'tunnel_duck_l': Vector2(-9, -8), 'tunnel_exit': Vector2(-8, -8), 'tunnel_fall_l': Vector2(-8, -8), 'tunnel_hang_l': Vector2(-8, -8), 'tunnel_jump_l': Vector2(-8, -8), 'tunnel_l_bounce': Vector2(-8, -8), 'tunnel_left': Vector2(-8, -8), 'tunnel_l_fall': Vector2(-8, -8), 'tunnel_look_l': Vector2(-8, -8), 'tunnel_look_run_l': Vector2(-8, -8), 'tunnel_push_l': Vector2(-8, -8), 'tunnel_run_l': Vector2(-8, -8), 'tunnel_stun_l': Vector2(-8, -8), 'tunnel_whoa_l': Vector2(-12, -16), 'big_collect': Vector2(-8, -8), 'blood': Vector2(-4, -4), 'blood_spark': Vector2(-4, -4), 'blood_trail': Vector2(-4, -4), 'bone': Vector2(-4, -4), 'bubble': Vector2(-4, -4), 'bullet': Vector2(-4, 0), 'burn': Vector2(-4, -4), 'drip': Vector2(-1, -1), 'explosion': Vector2(-24, -24), 'flame': Vector2(-4, -4), 'flame_trail': Vector2(-4, -4), 'laser': Vector2(-4, -4), 'laser_explode': Vector2(-16, -16), 'laser_trail': Vector2(-4, -4), 'lava_drip': Vector2(-4, -4), 'leaf': Vector2(-4, -4), 'leaf_still': Vector2(-4, -4), 'poof': Vector2(-4, -4), 'psychic_create': Vector2(-8, -8), 'psychic_wave': Vector2(-8, -8), 'psychic_wave_p': Vector2(-8, -8), 'rubble': Vector2(-4, -4), 'rubble_dark': Vector2(-4, -4), 'rubble_dark_small': Vector2(-4, -4), 'rubble_lush': Vector2(-4, -4), 'rubble_lush_small': Vector2(-4, -4), 'rubble_small': Vector2(-4, -4), 'rubble_tan': Vector2(-4, -4), 'rubble_tan_small': Vector2(-4, -4), 'shotgun_blast_left': Vector2(-8, -8), 'shotgun_blast_right': Vector2(-8, -8), 'small_collect': Vector2(-4, -4), 'smoke_puff': Vector2(-4, -4), 'smooch_heart': Vector2(-8, -8), 'splash': Vector2(-8, -8), 'yellow_ball': Vector2(-8, -8), 'yellow_trail': Vector2(-8, -8), 'alien': Vector2(0, 0), 'alien_boss': Vector2(0, 0), 'alien_boss_dead': Vector2(0, 0), 'alien_boss_die': Vector2(0, 0), 'alien_boss_disp': Vector2(-8, -8), 'alien_boss_hurt': Vector2(0, 0), 'alien_boss_tile': Vector2(0, 0), 'alien_deploy': Vector2(-8, -12), 'alien_eject': Vector2(-8, -12), 'alien_parachute': Vector2(-8, -12), 'bat_hang': Vector2(0, 0), 'bat_left': Vector2(0, 0), 'bat_right': Vector2(0, 0), 'dead_fish_left': Vector2(0, 0), 'dead_fish_left_ico': Vector2(0, 0), 'dead_fish_right': Vector2(0, 0), 'fire_frog_armed_l': Vector2(-8, -8), 'fire_frog_jump_l': Vector2(0, 0), 'fire_frog_left': Vector2(0, 0), 'frog_jump_l': Vector2(0, 0), 'frog_left': Vector2(0, 0), 'olmec_slam': Vector2(0, 0), 'piranha_left': Vector2(0, 0), 'piranha_left_ico': Vector2(0, 0), 'piranha_right': Vector2(0, 0), 'sight': Vector2(0, 0), 'snake_left': Vector2(0, 0), 'snake_walk_l': Vector2(0, 0), 'spider': Vector2(0, 0), 'spider_drown': Vector2(0, 0), 'spider_drowning': Vector2(0, 0), 'spider_flip': Vector2(0, 0), 'spider_hang': Vector2(0, 0), 'ufo': Vector2(0, 0), 'ufo_blast': Vector2(0, 0), 'ufo_crash': Vector2(0, 0), 'zombie_jump_l': Vector2(0, 0), 'zombie_left': Vector2(0, 0), 'caravan1': Vector2(0, 0), 'caravan2': Vector2(0, 0), 'caravan3': Vector2(0, 0), 'caveman_bounce_l': Vector2(0, 0), 'caveman_dead_l': Vector2(0, 0), 'caveman_d_held_l': Vector2(0, 0), 'caveman_die_ll': Vector2(0, 0), 'caveman_die_lr': Vector2(0, 0), 'caveman_fall_l': Vector2(0, 0), 'caveman_held_l': Vector2(0, 0), 'caveman_left': Vector2(0, 0), 'caveman_run_left': Vector2(0, 0), 'caveman_stun_l': Vector2(0, 0), 'cave_man_worship_l': Vector2(0, 0), 'caveman_worship_r': Vector2(0, 0), 'frozen_caveman': Vector2(0, 0), 'ghost_disappear': Vector2(0, 0), 'ghost_left': Vector2(0, 0), 'ghost_right': Vector2(0, 0), 'ghost_turn_left': Vector2(0, 0), 'ghost_turn_right': Vector2(0, 0), 'giant_spider': Vector2(0, 0), 'giant_spider_crawl': Vector2(0, 0), 'giant_spider_disp': Vector2(-8, -8), 'giant_spider_flip': Vector2(0, 0), 'giant_spider_hang': Vector2(0, 0), 'giant_spider_jump': Vector2(0, 0), 'giant_spider_squirt': Vector2(0, 0), 'web': Vector2(0, 0), 'web_ball': Vector2(-8, -8), 'web_create': Vector2(-8, -8), 'hawk_bounce_l': Vector2(0, 0), 'hawk_dead_l': Vector2(-4, 0), 'hawk_d_held_l': Vector2(-4, 0), 'hawk_die_ll': Vector2(0, 0), 'hawk_die_lr': Vector2(0, 0), 'hawk_fall_l': Vector2(0, 0), 'hawk_held_l': Vector2(-4, 0), 'hawk_left': Vector2(0, 0), 'hawk_run_left': Vector2(0, 0), 'hawk_stun_l': Vector2(-4, 0), 'hawk_throw_l': Vector2(0, 0), 'jaws_body1_l': Vector2(0, 0), 'jaws_body1_r': Vector2(0, 0), 'jaws_body2_l': Vector2(0, 0), 'jaws_body2_r': Vector2(0, 0), 'jaws_body3_l': Vector2(0, 0), 'jaws_body3_r': Vector2(0, 0), 'jaws_left': Vector2(0, 0), 'jaws_right': Vector2(0, 0), 'jaws_turn_l': Vector2(0, 0), 'jaws_turn_r': Vector2(0, 0), 'mega_mouth': Vector2(-8, -8), 'magma': Vector2(-8, -8), 'magma_man_create': Vector2(-8, -8), 'magma_man_die': Vector2(0, 0), 'magma_man_left': Vector2(0, 0), 'magma_man_walk_l': Vector2(0, 0), 'magma_trail': Vector2(-8, -8), 'man_trap_eat_caveman_l': Vector2(-8, -16), 'man_trap_eat_damsel_l': Vector2(-8, -16), 'man_trap_eat_l': Vector2(-8, -16), 'man_trap_eat_shopkeeper_l': Vector2(-8, -16), 'man_trap_eat_tunnel_l': Vector2(-8, -16), 'man_trap_left': Vector2(0, 0), 'man_trap_sleep_l': Vector2(0, 0), 'man_trap_stun_l': Vector2(0, 0), 'man_trap_temp': Vector2(-8, -16), 'monkey_climb_l': Vector2(0, 0), 'monkey_hang_l': Vector2(0, 0), 'monkey_jump_l': Vector2(0, 0), 'monkey_left': Vector2(0, 0), 'monkey_walk_l': Vector2(0, 0), 'olmec': Vector2(0, 0), 'olmec_debris': Vector2(-6, -6), 'olmec_debris2': Vector2(-6, -6), 'olmec_debris3': Vector2(-6, -6), 'olmec_start1': Vector2(0, 0), 'olmec_start2': Vector2(0, 0), 'olmec_start3': Vector2(0, 0), 'shop_bounce_l': Vector2(0, 0), 'shop_d_held_l': Vector2(0, 0), 'shop_die_l': Vector2(0, 0), 'shop_die_ll': Vector2(0, 0), 'shop_die_lr': Vector2(0, 0), 'shop_fall_l': Vector2(0, 0), 'shop_held_l': Vector2(0, 0), 'shop_left': Vector2(0, 0), 'shop_left_ico': Vector2(0, 0), 'shop_run_left': Vector2(0, 0), 'shop_stun_l': Vector2(0, 0), 'shop_throw_l': Vector2(-4, 0), 'skeleton_create_l': Vector2(0, 0), 'skeleton_create_r': Vector2(0, 0), 'skeleton_left': Vector2(0, 0), 'skeleton_walk_left': Vector2(0, 0), 'fly_left': Vector2(-4, -4), 'fly_right': Vector2(-4, -4), 'tomb_lord_attack_l': Vector2(0, 0), 'tomb_lord_attack_r': Vector2(0, 0), 'tomb_lord_disp': Vector2(-8, -8), 'tomb_lord_left': Vector2(0, 0), 'tomb_lord_right': Vector2(0, 0), 'tomb_lord_turn_l': Vector2(0, 0), 'tomb_lord_turn_r': Vector2(0, 0), 'tomb_lord_walk_l': Vector2(0, 0), 'tomb_lord_walk_r': Vector2(0, 0), 'vampire_bat_hang': Vector2(0, 0), 'vampire_bat_left': Vector2(0, 0), 'vampire_bat_right': Vector2(0, 0), 'vampire_bounce_l': Vector2(0, 0), 'vampire_dead_l': Vector2(0, 0), 'vampire_d_held_l': Vector2(0, 0), 'vampire_die_ll': Vector2(0, 0), 'vampire_die_lr': Vector2(0, 0), 'vampire_fall_l': Vector2(0, 0), 'vampire_held_l': Vector2(0, 0), 'vampire_jump_l': Vector2(0, 0), 'vampire_left': Vector2(0, 0), 'vampire_run_l': Vector2(0, 0), 'vampire_stun_l': Vector2(0, 0), 'yeti_bounce_l': Vector2(0, 0), 'yeti_dead_l': Vector2(-4, 0), 'yeti_d_held_l': Vector2(-4, 0), 'yeti_die_ll': Vector2(0, 0), 'yeti_die_lr': Vector2(0, 0), 'yeti_fall_l': Vector2(0, 0), 'yeti_held_l': Vector2(-4, 0), 'yeti_left': Vector2(0, 0), 'yeti_run_left': Vector2(0, 0), 'yeti_stun_l': Vector2(-4, 0), 'yeti_throw_l': Vector2(-4, 0), 'yeti_king_disp': Vector2(-8, -8), 'yeti_king_left': Vector2(0, 0), 'yeti_king_right': Vector2(0, 0), 'yeti_king_turn_l': Vector2(0, 0), 'yeti_king_turn_r': Vector2(0, 0), 'yeti_king_walk_l': Vector2(0, 0), 'yeti_king_walk_r': Vector2(0, 0), 'yeti_king_yell_l': Vector2(0, 0), 'yeti_king_yell_r': Vector2(0, 0), 'arrow_icon': Vector2(0, 0), 'bomb_icon': Vector2(0, 0), 'cape_icon': Vector2(0, 0), 'compass_icon': Vector2(0, 0), 'damsel_icon': Vector2(0, 0), 'death_mask': Vector2(-8, -8), 'dollar_sign': Vector2(0, 0), 'gloves_icon': Vector2(0, 0), 'heart': Vector2(0, 0), 'hint_point': Vector2(0, 0), 'hold_item_icon': Vector2(0, 0), 'hoops_icon': Vector2(0, 0), 'jetpack_icon': Vector2(0, 0), 'kapala_icon': Vector2(0, 0), 'mitt_icon': Vector2(0, 0), 'parachute_icon': Vector2(0, 0), 'rope_icon': Vector2(0, 0), 'shopkeeper_icon': Vector2(0, 0), 'spectacles_icon': Vector2(0, 0), 'spike_shoes_icon': Vector2(0, 0), 'spring_shoes_icon': Vector2(0, 0), 'sticky_bomb_icon': Vector2(0, 0), 'timer_icon': Vector2(0, 0), 'bombs_get': Vector2(-4, 0), 'bones_left': Vector2(0, 0), 'chest': Vector2(-8, -8), 'chest_open': Vector2(-8, -8), 'crate': Vector2(-8, -8), 'crate_open': Vector2(-8, -8), 'dice1': Vector2(-8, -8), 'dice2': Vector2(-8, -8), 'dice3': Vector2(-8, -8), 'dice4': Vector2(-8, -8), 'dice5': Vector2(-8, -8), 'dice6': Vector2(-8, -8), 'dice_roll': Vector2(-8, -8), 'fake_bones_left': Vector2(0, 0), 'flare_crate': Vector2(-8, -8), 'item_get': Vector2(-4, 0), 'locked_chest': Vector2(-8, -8), 'locked_chest_open': Vector2(-8, -8), 'para_used': Vector2(0, 0), 'red_arrow_down': Vector2(-8, -8), 'rope_get': Vector2(-4, 0), 'ankh': Vector2(-8, -8), 'ankh_icon': Vector2(0, 0), 'bomb_bag': Vector2(-8, -6), 'bomb_box': Vector2(-8, -8), 'bow_disp': Vector2(-8, -8), 'bow_left': Vector2(-8, -8), 'bow_right': Vector2(-8, -8), 'cape': Vector2(-8, -8), 'cape_back': Vector2(-8, -8), 'cape_dl': Vector2(-8, -6), 'cape_dr': Vector2(-8, -6), 'cape_left': Vector2(-8, -8), 'cape_right': Vector2(-8, -8), 'cape_ul': Vector2(-8, -16), 'cape_ur': Vector2(-8, -16), 'compass': Vector2(-8, -6), 'compass_down': Vector2(0, 0), 'compass_left': Vector2(0, 0), 'compass_ll': Vector2(0, 0), 'compass_lr': Vector2(0, 0), 'compass_right': Vector2(0, 0), 'compass_small_down': Vector2(0, 0), 'compass_small_left': Vector2(0, 0), 'compass_small_ll': Vector2(0, 0), 'compass_small_lr': Vector2(0, 0), 'compass_small_right': Vector2(0, 0), 'crown': Vector2(-8, -8), 'crown_icon': Vector2(0, 0), 'death_mask_pickup': Vector2(-8, -8), 'death_mask_wear': Vector2(-8, -8), 'glove': Vector2(-8, -8), 'jetpack_back': Vector2(-8, -8), 'jetpack_left': Vector2(-8, -8), 'jetpack_right': Vector2(-8, -8), 'jordans': Vector2(-8, -6), 'kapala': Vector2(-8, -8), 'key_left': Vector2(-8, -6), 'key_right': Vector2(-8, -8), 'machete_left': Vector2(-8, -6), 'machete_right': Vector2(-8, -6), 'mattock_left': Vector2(-8, -6), 'mattock_right': Vector2(-8, -6), 'mitt': Vector2(-8, -8), 'ninja_suit': Vector2(-8, -8), 'parachute': Vector2(0, 0), 'para_open': Vector2(0, 0), 'para_pickup': Vector2(-8, -6), 'paste': Vector2(-8, -6), 'pistol_left': Vector2(-8, -4), 'pistol_right': Vector2(-8, -4), 'rope_pile': Vector2(-8, -5), 'sceptre_left': Vector2(-8, -6), 'sceptre_right': Vector2(-8, -6), 'spectacles': Vector2(-8, -6), 'spike_shoes': Vector2(-8, -6), 'spring_shoes': Vector2(-8, -6), 'teleporter': Vector2(-8, -12), 'udjat_eye': Vector2(-8, -6), 'udjat_eye_icon': Vector2(0, 0), 'udjat_eye_icon2': Vector2(0, 0), 'web_cannon_l': Vector2(-8, -4), 'web_cannon_r': Vector2(-8, -4), 'bell': Vector2(0, 0), 'crystal_skull': Vector2(-8, -12), 'crystal_skull_ico': Vector2(-8, -12), 'diamond': Vector2(-4, -4), 'emerald': Vector2(-2, -2), 'emerald_big': Vector2(-4, -4), 'gold_bar': Vector2(-4, -4), 'gold_bar_draw': Vector2(-4, -4), 'gold_bars': Vector2(-8, -8), 'gold_bars_draw': Vector2(-8, -8), 'gold_chunk': Vector2(-2, -2), 'gold_egg': Vector2(-4, -4), 'gold_idol': Vector2(-8, -12), 'gold_idol_ico': Vector2(-8, -8), 'gold_nugget': Vector2(-4, -4), 'lamp_item': Vector2(-8, -12), 'lamp_red_item': Vector2(-8, -12), 'ruby': Vector2(-2, -2), 'ruby_big': Vector2(-4, -4), 'sapphire': Vector2(-2, -2), 'sapphire_big': Vector2(-4, -4), 'scarab': Vector2(0, 0), 'scarab_disp': Vector2(-8, -8), 'arrow_left': Vector2(-4, -4), 'arrow_right': Vector2(-4, -4), 'ball': Vector2(-8, -10), 'basketball': Vector2(-4, -4), 'bomb': Vector2(-4, -4), 'bomb_armed': Vector2(-4, -4), 'bomb_arrow_left': Vector2(-8, -8), 'bomb_arrow_right': Vector2(-8, -8), 'chain': Vector2(-8, -8), 'dribble': Vector2(-4, -4), 'egg': Vector2(-4, -4), 'fish_bone': Vector2(-4, -4), 'jar': Vector2(-8, -8), 'machete_pre_l': Vector2(-8, -8), 'machete_pre_r': Vector2(-8, -8), 'mattock_head': Vector2(-8, -4), 'mattock_hit_l': Vector2(-8, -8), 'mattock_hit_r': Vector2(-8, -8), 'mattock_pre_l': Vector2(-8, -8), 'mattock_pre_r': Vector2(-8, -8), 'rock': Vector2(-4, -4), 'rope': Vector2(-4, -4), 'rope_end': Vector2(-4, -4), 'rope_top': Vector2(-4, -4), 'shotgun_left': Vector2(-8, -4), 'shotgun_right': Vector2(-8, -4), 'skull': Vector2(-4, -4), 'slash_left': Vector2(-4, -24), 'slash_right': Vector2(-28, -24), 'target': Vector2(0, -16), 'whip_left': Vector2(-8, -8), 'whip_pre_l': Vector2(-8, -8), 'whip_pre_r': Vector2(-8, -8), 'whip_right': Vector2(-8, -8), 'bomb_bag_tile': Vector2(0, 0), 'bomb_box_tile': Vector2(0, 0), 'bomb_paste_tile': Vector2(0, 0), 'bow_tile': Vector2(0, 0), 'cape_tile': Vector2(0, 0), 'chest_tile': Vector2(0, 0), 'compass_tile': Vector2(0, 0), 'crate_tile': Vector2(0, 0), 'crystal_skull_tile': Vector2(0, 0), 'diamond_tile': Vector2(0, 0), 'emerald_big_tile': Vector2(0, 0), 'gloves_tile': Vector2(0, 0), 'gold_bars_tile': Vector2(0, 0), 'gold_bar_tile': Vector2(0, 0), 'gold_idol_tile': Vector2(0, 0), 'jar_tile': Vector2(0, 0), 'jetpack_tile': Vector2(0, 0), 'machete_tile': Vector2(0, 0), 'mattock_tile': Vector2(0, 0), 'mega_mouth_tile': Vector2(0, 0), 'mitt_tile': Vector2(0, 0), 'parachute_tile': Vector2(0, 0), 'piranha_tile': Vector2(0, 0), 'pistol_tile': Vector2(0, 0), 'rock_tile': Vector2(0, 0), 'rope_pile_tile': Vector2(0, 0), 'ruby_big_tile': Vector2(0, 0), 'sapphire_big_tile': Vector2(0, 0), 'shotgun_tile': Vector2(0, 0), 'spectacles_tile': Vector2(0, 0), 'spike_shoes_tile': Vector2(0, 0), 'spring_shoes_tile': Vector2(0, 0), 'teleporter_tile': Vector2(0, 0), 'web_cannon_tile': Vector2(0, 0), 'web_tile': Vector2(0, 0), 'mushroom1': Vector2(0, 0), 'mushroom2': Vector2(0, 0), 'mushroom3': Vector2(0, 0), 'mushroom4': Vector2(0, 0), 'mushroom5': Vector2(0, 0), 'mushroom6': Vector2(0, 0), 'mushroom7': Vector2(0, 0), 'mushroom8': Vector2(0, 0), 'basket': Vector2(0, 0), 'basket_swoosh': Vector2(0, 0), 'box': Vector2(0, 0), 'box_checked': Vector2(0, 0), 'box_marked': Vector2(0, 0), 'edit_button': Vector2(0, 0), 'edit_button_pressed': Vector2(0, 0), 'end_plat': Vector2(0, 0), 'joy_config_button': Vector2(0, 0), 'joy_config_button_pressed': Vector2(0, 0), 'key_config_button': Vector2(0, 0), 'key_config_button_pressed': Vector2(0, 0), 'load_button': Vector2(0, 0), 'load_button_pressed': Vector2(0, 0), 'menu_bottom': Vector2(0, 0), 'menu_left': Vector2(0, 0), 'menu_ll': Vector2(0, 0), 'menu_lr': Vector2(0, 0), 'menu_right': Vector2(0, 0), 'menu_sel_off': Vector2(0, 0), 'menu_sel_on': Vector2(0, 0), 'menu_top': Vector2(0, 0), 'menu_ul': Vector2(0, 0), 'menu_ur': Vector2(0, 0), 'new_button': Vector2(0, 0), 'new_button_pressed': Vector2(0, 0), 'ok_button': Vector2(0, 0), 'ok_button_pressed': Vector2(0, 0), 'page_down': Vector2(0, 0), 'page_up': Vector2(0, 0), 'rim': Vector2(0, 0), 'rim_deflect': Vector2(0, 0), 'slider': Vector2(0, 0), 'slider_bg': Vector2(0, 0), 'test_button': Vector2(0, 0), 'test_button_pressed': Vector2(0, 0), 'big_chest': Vector2(0, 0), 'big_chest_open': Vector2(0, 0), 'big_treasure': Vector2(0, 0), 'end2_bg': Vector2(0, 0), 'end_wall': Vector2(0, 0), 'lava_spray': Vector2(0, 0), 'player_sil': Vector2(0, 0), 'treasure_sil': Vector2(0, 0), 'volcano_flame': Vector2(0, 0), 'bg_end3': Vector2(0, 0), 'camel': Vector2(0, 0), 'camel_damsel': Vector2(0, 0), 'camel_tunnel': Vector2(0, 0), 'desert': Vector2(0, 0), 'desert2': Vector2(0, 0), 'desert_night': Vector2(0, 0), 'desert_night2': Vector2(0, 0), 'desert_top': Vector2(0, 0), 'desert_top_night': Vector2(0, 0), 'flare': Vector2(-4, -4), 'flare_spark': Vector2(-2, -2), 'intro_bg': Vector2(0, 0), 'moon': Vector2(0, 0), 'palm_tree': Vector2(0, 0), 'palm_tree_dark': Vector2(0, 0), 'shrub': Vector2(0, 0), 'shrub_dark': Vector2(0, 0), 'bronze_trophy': Vector2(0, 0), 'changing_door': Vector2(0, 0), 'copy': Vector2(0, 0), 'gold_trophy': Vector2(0, 0), 'level13_sign': Vector2(0, 0), 'level5_sign': Vector2(0, 0), 'level9_sign': Vector2(0, 0), 'moon_door': Vector2(0, 0), 'multi_gold': Vector2(0, 0), 'new': Vector2(0, 0), 'quit_sign': Vector2(0, 0), 'reset_sign': Vector2(0, 0), 'scores_sign': Vector2(0, 0), 'silver_trophy': Vector2(0, 0), 'star_door': Vector2(0, 0), 'start_sign': Vector2(0, 0), 'sun_door': Vector2(0, 0), 'title': Vector2(0, 0), 'title_bg': Vector2(0, 0), 'tutorial_sign': Vector2(0, 0), 'arrow_trap_left': Vector2(0, 0), 'arrow_trap_left_lit': Vector2(0, 0), 'arrow_trap_right': Vector2(0, 0), 'arrow_trap_right_lit': Vector2(0, 0), 'boulder': Vector2(-16, -16), 'boulder_rotate_l': Vector2(-16, -16), 'boulder_rotate_r': Vector2(-16, -16), 'ceiling_trap': Vector2(0, 0), 'ceiling_trap_s': Vector2(0, 0), 'door': Vector2(0, 0), 'giant_tiki_head': Vector2(-16, -16), 'gth_hole': Vector2(-16, -16), 'kali_head1': Vector2(-16, -16), 'kali_head2': Vector2(-16, -16), 'kali_head3': Vector2(-16, -16), 'smash_trap': Vector2(0, 0), 'smash_trap_lit': Vector2(0, 0), 'spears_left': Vector2(0, 0), 'spears_right': Vector2(0, 0), 'spear_trap1': Vector2(0, 0), 'spear_trap2': Vector2(0, 0), 'spear_trap_lit': Vector2(0, 0), 'spikes': Vector2(0, 0), 'spikes_blood': Vector2(0, 0), 'spring_trap': Vector2(0, 0), 'spring_trap_sprung': Vector2(0, 0), 'thwomp_trap': Vector2(0, 0)}
var object_database = ObjectDatabase.new()

var sprite
var solid = false

var moving_object = false

@export var object_name: String

@export var depth: int = 0:
	set(new_depth):
		if new_depth > 0: #--- changing positive GML depth to negative in case it is not already changed
			new_depth = -new_depth
		
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			animated_sprite.z_index = new_depth
		else:
			z_index = new_depth
		depth = new_depth
	get:
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			return animated_sprite.z_index
		else:
			return z_index
		
var persistent = false
var parent
var mask

var type
var blink_toggle

#--- want access to these for all objects, so defining here
var collision_bounds_offset_left_x
var collision_bounds_offset_top_y
var collision_bounds_offset_right_x
var collision_bounds_offset_bottom_y

var invincible
var IDLE
var WALK
var ATTACK
var bounced
var dead
var shake_toggle
var sprite_index:
	set(new_sprite):
		sprite_index = new_sprite
		set_animation(new_sprite)
		set_sprite_offset(new_sprite)
		
	get:
		var current_animation = get_animation()
		return current_animation
		
var image_speed:
	set(new_speed):
		image_speed = new_speed
		set_animation_speed_scale(new_speed)
	
	get:
		var current_speed_scale = get_animation_speed_scale()
		return current_speed_scale
		
var image_index:
	set(new_index):
		image_index = new_index
		set_image_index(new_index)
	get:
		var animated_sprite = get_animated_sprite_2d()
		var index = animated_sprite.get_frame()
		return index


		
var status
var facing
var armed
var active
var held #--- seems easier to put this here since both items and enemies use it
var grav
var bounce
var my_grav
var safe
var heavy
var value
var col_bot
var can_pick_up
var bounce_factor
var friction_factor
var bloodless
var cost
var for_sale
var cimg
var sticky
var enemy_id
var col_left
var col_right
var col_top
var STUNNED = 98 #--- making this a variable and not a constant because it is set to 1 in p_dummy2 (all other cases are 98)
var stun_time
var damage
var puncture

var x_vel = 0
var y_vel = 0
var x_acc = 0
var y_acc = 0

var sprite_offset = Vector2(0, 0)
var object_id = ''

@export var object_size: Vector2 #--- created by me for collision purposes

func drawn_sprite_create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0

func get_animated_sprite_2d():
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D", true, false)
	return animated_sprite

func set_animation(new_sprite):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	#assert(animated_sprite.sprite_frames.has_animation(new_sprite))
	if animated_sprite.sprite_frames.has_animation(new_sprite):
		animated_sprite.play(new_sprite)
	else:
		var sprite_folder = Sprites.sprite_database[new_sprite]["folder_path"]
		animated_sprite.sprite_frames = sprite_animation_setup(new_sprite, animated_sprite.sprite_frames)
		assert(animated_sprite.sprite_frames.has_animation(new_sprite))
		animated_sprite.play(new_sprite)

func get_animation():
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	
	if animated_sprite != null:
		var current_animation = animated_sprite.animation
		return current_animation
	else:
		return null

func set_animation_speed_scale(new_speed):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	animated_sprite.speed_scale = new_speed

func get_animation_speed_scale():
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	var current_speed_scale = animated_sprite.speed_scale
	return current_speed_scale
	
func set_image_index(new_index):
	var animated_sprite = get_animated_sprite_2d()
	animated_sprite.set_frame(new_index)

func set_sprite_offset(new_sprite):
	var animated_sprite = get_animated_sprite_2d()
	sprite_offset = sprites_and_offsets[new_sprite]
	if !animated_sprite.flip_h:
		animated_sprite.offset = sprite_offset
		
	else:
		var width = object_size.x
		if sprite_offset.x != -width / 2:
			if sprite_offset.x < -width / 2:
				sprite_offset.x = sprite_offset.x + width
				if sprite_offset.x > 0:
					sprite_offset.x = -sprite_offset.x
			else:
				sprite_offset.x = abs(sprite_offset.x) - width
		animated_sprite.offset = sprite_offset
	

var x_velocity = 0
var y_velocity = 0
var tick_start_position: Vector2
var tick_end_position: Vector2

var starting_animation
var updated_animation

var sprite_initialized = false
func smooth_animated_sprite_movement(x_velocity, y_velocity):
	var animated_sprite = get_animated_sprite_2d()
	initialize_sprite_for_smooth_movement(animated_sprite)
	update_sprite_position(animated_sprite)

#--- Setting up arguments here so they don't have to be called every time

func initialize_sprite_for_smooth_movement(animated_sprite):
	if sprite_initialized == false:
		if animated_sprite != null:
			set_up_sprite_parent_node(animated_sprite)
			sprite_initialized = true

func update_sprite_position(animated_sprite):
	animated_sprite.position.x += (x_velocity * 30) * get_process_delta_time()
	animated_sprite.position.y += (y_velocity * 30) * get_process_delta_time()

func find_specific_child(node_name):
	var child = find_child(node_name, true, false)
	return child

func set_up_sprite_parent_node(animated_sprite):
	if animated_sprite != null:
		var parent_node = Node.new()
		add_child(parent_node)
		animated_sprite.reparent(parent_node)
		
		animated_sprite.show_behind_parent = true
		animated_sprite.z_as_relative = false
		
		animated_sprite.position = global_position

func smooth_motion_step_begin():
	if tick_end_position == position:
		x_velocity = 0
		y_velocity = 0
	tick_start_position = position
	
	starting_animation = get_animation()
	

func smooth_motion_step_end():
	tick_end_position = position
	var position_diff = tick_end_position - tick_start_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y
	
	#---uncomment this
	#if position_diff != Vector2(0, 0):
		#gml.update_obj_list_collision(self)
		
	
	updated_animation = get_animation()
	
	#---uncomment this
	#if updated_animation != starting_animation:
		#gml.update_obj_list_collision(self)

var test_prior_tick_position
func handle_smooth_motion_values():
	if did_object_move():
		initialize_prior_tick_position()
		set_x_y_velocity()
	else:
		reset_x_y_velocity()
	
	update_prior_tick_position()

#--------
func object_setup():
	var object_database = object_database.object_database
	var object_entry = object_database[object_name]
	
	depth_setup(object_entry)
	bounding_box_setup()
	sprite_setup(object_entry)
	
func depth_setup(object_entry):
	var object_depth = object_entry["depth"]
	
	#--- In Godot, the value must be negative to display properly
	var converted_depth = -object_depth
	#--- Making sure the value isn't lower than the minimum value
	if converted_depth < -4000:
		converted_depth = -4000
	
	depth = converted_depth

func bounding_box_setup():
	var sprite = get_animation()
	
	if sprite != null:
		object_size = Sprites.sprite_database[sprite]["mask"]["bounding_box"][1]
	else:
		var no_sprite_size = Vector2(0, 0)
		object_size = no_sprite_size

func sprite_setup(object_entry):
	var animated_sprite = get_animated_sprite_2d()
	
	if animated_sprite == null:
		var sprite_to_add = object_entry["sprite"]
		if sprite_to_add != null:
			var sprite_entry = Sprites.sprite_database[sprite_to_add]
			var sprite_folder_path = sprite_entry["folder_path"]
			var new_animated_sprite = AnimatedSprite2D.new()
			var sprite_frames = SpriteFrames.new()		
		
			#var files = DirAccess.get_files_at(sprite_folder_path)
			#for file in files:
				#if file.get_extension() == "png":
					#print(file)
					#var sprite_texture = load(sprite_folder_path + "/" + file)
					#sprite_frames.add_frame(sprite_to_add, sprite_texture)
			sprite_frames = sprite_animation_setup(sprite_to_add, sprite_frames)
			sprite_frames.remove_animation("default")		
			
			new_animated_sprite.sprite_frames = sprite_frames
			new_animated_sprite.name = "AnimatedSprite2D"
			new_animated_sprite.centered = false
			new_animated_sprite.z_as_relative = false
			new_animated_sprite.z_index = depth
			new_animated_sprite.add_to_group("animated_sprite", true)
			add_child(new_animated_sprite)
			new_animated_sprite.play(sprite_to_add)
			
#--- Helper function to set up a single animation for an AnimatedSprite2D
func sprite_animation_setup(sprite_name, sprite_frames):
	sprite_frames.add_animation(sprite_name)
	sprite_frames.set_animation_speed(sprite_name, 30)
	sprite_frames.set_animation_loop(sprite_name, true)
	var sprite_folder_path = Sprites.sprite_database[sprite_name]["folder_path"]
	var files = DirAccess.get_files_at(sprite_folder_path)
	for file in files:
		if file.get_extension() == "png":
			print(file)
			var sprite_texture = load(sprite_folder_path + "/" + file)
			sprite_frames.add_frame(sprite_name, sprite_texture)
	
	return sprite_frames

func object_tick():
	if object_name == "bat_intro" or object_name == "moon" or object_name == "p_dummy3":
		handle_smooth_motion_values()

func object_process():
	if position != test_prior_tick_position:
		moving_object = true
	
	if object_name == "bat_intro" or object_name == "moon" or object_name == "p_dummy3":
		if moving_object: smooth_animated_sprite_movement(x_velocity, y_velocity)

func did_object_move():
	var current_position = position
	if current_position == test_prior_tick_position:
		return false
	else:
		return true

func initialize_prior_tick_position():
	if test_prior_tick_position == null:
		test_prior_tick_position = position

func update_prior_tick_position():
	test_prior_tick_position = position

func set_x_y_velocity():
	var position_diff = position - test_prior_tick_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y

func reset_x_y_velocity():
	x_velocity = 0
	y_velocity = 0
