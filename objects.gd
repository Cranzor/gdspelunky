extends Node

#objects
const bricks = preload('res://objects/bricks/bricks.tscn') #\**************************************************/
#const credits1 = preload('res://objects/credits1/credits1.tscn')
#const credits2 = preload('res://objects/credits2/credits2.tscn')
#const curs_obj = preload('res://objects/curs_obj/curs_obj.tscn')
#const end = preload('res://objects/end/end.tscn')
#const end2 = preload('res://objects/end2/end2.tscn')
#const end3 = preload('res://objects/end3/end3.tscn')
#const end_custom = preload('res://objects/end_custom/end_custom.tscn')
#const final_boss = preload('res://objects/final_boss/final_boss.tscn')
const game = preload('res://objects/game/game.tscn')
const gamepad = preload('res://objects/gamepad/gamepad.tscn')
const globals = preload('res://objects/globals/globals.tscn')
#const highscores = preload('res://objects/highscores/highscores.tscn')
const intro = preload('res://objects/intro/intro.tscn')
#const joy_config = preload('res://objects/joy_config/joy_config.tscn')
#const key_config = preload('res://objects/key_config/key_config.tscn')
#const level = preload('res://objects/level/level.tscn')
#const level_editor = preload('res://objects/level_editor/level_editor.tscn')
#const load_level = preload('res://objects/load_level/load_level.tscn')
#const moon_room = preload('res://objects/moon_room/moon_room.tscn')
const music = preload('res://objects/music/music.tscn')
const player1 = preload('res://objects/player1/player1.tscn')
const screen = preload('res://objects/screen/screen.tscn')
#const sprite = preload('res://objects/sprite/sprite.tscn')
#const stars_room = preload('res://objects/stars_room/stars_room.tscn')
#const sun_room = preload('res://objects/sun_room/sun_room.tscn')
const title = preload('res://objects/title/title.tscn')
#const transition = preload('res://objects/transition/transition.tscn')


#basis
#const backdrop = preload('res://objects/basis/backdrop/backdrop.tscn')
#const detritus = preload('res://objects/basis/detritus/detritus.tscn')
#const drawn_sprite = preload('res://objects/basis/drawn_sprite/drawn_sprite.tscn')
#const enemy = preload('res://objects/basis/enemy/enemy.tscn')
#const foreground = preload('res://objects/basis/foreground/foreground.tscn')
const item = preload('res://objects/basis/item/item.tscn')
#const moveable_solid = preload('res://objects/basis/moveable_solid/moveable_solid.tscn')
#const moving_solid = preload('res://objects/basis/moving_solid/moving_solid.tscn')
#const rubble_piece = preload('res://objects/basis/rubble_piece/rubble_piece.tscn')
#const solid = preload('res://objects/basis/solid/solid.tscn')
#const treasure = preload('res://objects/basis/treasure/treasure.tscn')
#const water = preload('res://objects/basis/water/water.tscn')


#blocks
#const alien_ship = preload('res://objects/blocks/alien_ship/alien_ship.tscn')
#const alien_ship_floor = preload('res://objects/blocks/alien_ship_floor/alien_ship_floor.tscn')
#const altar_left = preload('res://objects/blocks/altar_left/altar_left.tscn')
#const altar_right = preload('res://objects/blocks/altar_right/altar_right.tscn')
#const block = preload('res://objects/blocks/block/block.tscn')
const brick = preload('res://objects/blocks/brick/brick.tscn') #\**************************************************/
const brick_smooth = preload('res://objects/blocks/brick_smooth/brick_smooth.tscn') #\**************************************************/
#const cave_bg = preload('res://objects/blocks/cave_bg/cave_bg.tscn')
const dark = preload('res://objects/blocks/dark/dark.tscn')
#const dark_fall = preload('res://objects/blocks/dark_fall/dark_fall.tscn')
#const entrance = preload('res://objects/blocks/entrance/entrance.tscn')
#const exit = preload('res://objects/blocks/exit/exit.tscn')
#const frozen_caveman = preload('res://objects/blocks/frozen_caveman/frozen_caveman.tscn')
#const gold = preload('res://objects/blocks/gold/gold.tscn')
#const gold_big = preload('res://objects/blocks/gold_big/gold_big.tscn')
#const gold_door = preload('res://objects/blocks/gold_door/gold_door.tscn')
#const grave = preload('res://objects/blocks/grave/grave.tscn')
const hard_block = preload('res://objects/blocks/hard_block/hard_block.tscn') #\**************************************************/
#const ice = preload('res://objects/blocks/ice/ice.tscn')
#const ice_block = preload('res://objects/blocks/ice_block/ice_block.tscn')
#const ice_bottom = preload('res://objects/blocks/ice_bottom/ice_bottom.tscn')
#const kali_head = preload('res://objects/blocks/kali_head/kali_head.tscn')
#const lamp = preload('res://objects/blocks/lamp/lamp.tscn')
#const lamp_red = preload('res://objects/blocks/lamp_red/lamp_red.tscn')
#const lava = preload('res://objects/blocks/lava/lava.tscn')
#const lava_solid = preload('res://objects/blocks/lava_solid/lava_solid.tscn')
#const leaves = preload('res://objects/blocks/leaves/leaves.tscn')
#const leaves_tile = preload('res://objects/blocks/leaves_tile/leaves_tile.tscn')
#const lush = preload('res://objects/blocks/lush/lush.tscn')
#const moai = preload('res://objects/blocks/moai/moai.tscn')
#const moai2 = preload('res://objects/blocks/moai2/moai2.tscn')
#const moai3 = preload('res://objects/blocks/moai3/moai3.tscn')
#const moai_inside = preload('res://objects/blocks/moai_inside/moai_inside.tscn')
#const msg_sign = preload('res://objects/blocks/msg_sign/msg_sign.tscn')
#const push_block = preload('res://objects/blocks/push_block/push_block.tscn')
#const sac_altar_left = preload('res://objects/blocks/sac_altar_left/sac_altar_left.tscn')
#const sign = preload('res://objects/blocks/sign/sign.tscn')
#const splash = preload('res://objects/blocks/splash/splash.tscn')
#const temple = preload('res://objects/blocks/temple/temple.tscn')
#const temple_fake = preload('res://objects/blocks/temple_fake/temple_fake.tscn')
#const thin_ice = preload('res://objects/blocks/thin_ice/thin_ice.tscn')
#const tiki_torch = preload('res://objects/blocks/tiki_torch/tiki_torch.tscn')
#const tree = preload('res://objects/blocks/tree/tree.tscn')
#const tree_branch = preload('res://objects/blocks/tree_branch/tree_branch.tscn')
#const tree_branch_tile = preload('res://objects/blocks/tree_branch_tile/tree_branch_tile.tscn')
#const tree_tile = preload('res://objects/blocks/tree_tile/tree_tile.tscn')
#const water_swim = preload('res://objects/blocks/water_swim/water_swim.tscn')
#const x_market = preload('res://objects/blocks/x_market/x_market.tscn')
#const xoc_block = preload('res://objects/blocks/xoc_block/xoc_block.tscn')


#characters
#const damsel = preload('res://objects/characters/damsel/damsel.tscn')
#const damsel_kiss = preload('res://objects/characters/damsel_kiss/damsel_kiss.tscn')
#const shopkeeper = preload('res://objects/characters/shopkeeper/shopkeeper.tscn')
#const shopkeeper2 = preload('res://objects/characters/shopkeeper2/shopkeeper2.tscn')
const tunnel_man = preload('res://objects/characters/tunnel_man/tunnel_man.tscn') #\**************************************************/ check inputs here and see if there's better way to handle
#const yell_help = preload('res://objects/characters/yell_help/yell_help.tscn')


#collectibles
#const ankh = preload('res://objects/collectibles/ankh/ankh.tscn')
#const bomb_bag = preload('res://objects/collectibles/bomb_bag/bomb_bag.tscn')
#const bomb_box = preload('res://objects/collectibles/bomb_box/bomb_box.tscn')
#const bones = preload('res://objects/collectibles/bones/bones.tscn')
#const cape = preload('res://objects/collectibles/cape/cape.tscn')
#const cape_pickup = preload('res://objects/collectibles/cape_pickup/cape_pickup.tscn')
#const chest = preload('res://objects/collectibles/chest/chest.tscn')
#const compass = preload('res://objects/collectibles/compass/compass.tscn')
#const crate = preload('res://objects/collectibles/crate/crate.tscn')
#const crown = preload('res://objects/collectibles/crown/crown.tscn')
#const diamond = preload('res://objects/collectibles/diamond/diamond.tscn')
#const emerald = preload('res://objects/collectibles/emerald/emerald.tscn')
#const emerald_big = preload('res://objects/collectibles/emerald_big/emerald_big.tscn')
#const fake_bones = preload('res://objects/collectibles/fake_bones/fake_bones.tscn')
#const fire_frog_armed = preload('res://objects/collectibles/fire_frog_armed/fire_frog_armed.tscn')
#const flare_crate = preload('res://objects/collectibles/flare_crate/flare_crate.tscn')
#const gloves = preload('res://objects/collectibles/gloves/gloves.tscn')
#const gold_bar = preload('res://objects/collectibles/gold_bar/gold_bar.tscn')
#const gold_bars = preload('res://objects/collectibles/gold_bars/gold_bars.tscn')
#const gold_chunk = preload('res://objects/collectibles/gold_chunk/gold_chunk.tscn')
#const gold_nugget = preload('res://objects/collectibles/gold_nugget/gold_nugget.tscn')
#const jetpack = preload('res://objects/collectibles/jetpack/jetpack.tscn')
#const jordans = preload('res://objects/collectibles/jordans/jordans.tscn')
#const kapala = preload('res://objects/collectibles/kapala/kapala.tscn')
#const key = preload('res://objects/collectibles/key/key.tscn')
#const locked_chest = preload('res://objects/collectibles/locked_chest/locked_chest.tscn')
#const mitt = preload('res://objects/collectibles/mitt/mitt.tscn')
#const para_pickup = preload('res://objects/collectibles/para_pickup/para_pickup.tscn')
#const para_used = preload('res://objects/collectibles/para_used/para_used.tscn')
#const paste = preload('res://objects/collectibles/paste/paste.tscn')
#const rope_bag = preload('res://objects/collectibles/rope_bag/rope_bag.tscn')
#const rope_pile = preload('res://objects/collectibles/rope_pile/rope_pile.tscn')
#const ruby = preload('res://objects/collectibles/ruby/ruby.tscn')
#const ruby_big = preload('res://objects/collectibles/ruby_big/ruby_big.tscn')
#const sapphire = preload('res://objects/collectibles/sapphire/sapphire.tscn')
#const sapphire_big = preload('res://objects/collectibles/sapphire_big/sapphire_big.tscn')
#const spectacles = preload('res://objects/collectibles/spectacles/spectacles.tscn')
#const spike_shoes = preload('res://objects/collectibles/spike_shoes/spike_shoes.tscn')
#const spring_shoes = preload('res://objects/collectibles/spring_shoes/spring_shoes.tscn')
#const udjat_eye = preload('res://objects/collectibles/udjat_eye/udjat_eye.tscn')


#effects
#const big_collect = preload('res://objects/effects/big_collect/big_collect.tscn')
#const blood = preload('res://objects/effects/blood/blood.tscn')
#const blood_spark = preload('res://objects/effects/blood_spark/blood_spark.tscn')
#const blood_trail = preload('res://objects/effects/blood_trail/blood_trail.tscn')
#const bone = preload('res://objects/effects/bone/bone.tscn')
#const bubble = preload('res://objects/effects/bubble/bubble.tscn')
#const bullet = preload('res://objects/effects/bullet/bullet.tscn')
#const burn = preload('res://objects/effects/burn/burn.tscn')
#const drip = preload('res://objects/effects/drip/drip.tscn')
#const explosion = preload('res://objects/effects/explosion/explosion.tscn')
#const flame = preload('res://objects/effects/flame/flame.tscn')
#const flame_trail = preload('res://objects/effects/flame_trail/flame_trail.tscn')
const flare_spark = preload('res://objects/effects/flare_spark/flare_spark.tscn') #\**************************************************/ check 'animation end' function
#const fly = preload('res://objects/effects/fly/fly.tscn')
#const heart = preload('res://objects/effects/heart/heart.tscn')
#const items_get = preload('res://objects/effects/items_get/items_get.tscn')
#const laser = preload('res://objects/effects/laser/laser.tscn')
#const laser_explode = preload('res://objects/effects/laser_explode/laser_explode.tscn')
#const laser_trail = preload('res://objects/effects/laser_trail/laser_trail.tscn')
#const lava_drip = preload('res://objects/effects/lava_drip/lava_drip.tscn')
#const leaf = preload('res://objects/effects/leaf/leaf.tscn')
const poof = preload('res://objects/effects/poof/poof.tscn') #\**************************************************/ check 'animation end' function
#const psychic_create = preload('res://objects/effects/psychic_create/psychic_create.tscn')
#const psychic_create2 = preload('res://objects/effects/psychic_create2/psychic_create2.tscn')
#const psychic_create_p = preload('res://objects/effects/psychic_create_p/psychic_create_p.tscn')
#const psychic_wave = preload('res://objects/effects/psychic_wave/psychic_wave.tscn')
#const psychic_wave_p = preload('res://objects/effects/psychic_wave_p/psychic_wave_p.tscn')
#const rope_burn = preload('res://objects/effects/rope_burn/rope_burn.tscn')
#const rubble_dark = preload('res://objects/effects/rubble_dark/rubble_dark.tscn')
#const rubble_dark_small = preload('res://objects/effects/rubble_dark_small/rubble_dark_small.tscn')
#const shotgun_blast_left = preload('res://objects/effects/shotgun_blast_left/shotgun_blast_left.tscn')
#const shotgun_blast_right = preload('res://objects/effects/shotgun_blast_right/shotgun_blast_right.tscn')
#const small_collect = preload('res://objects/effects/small_collect/small_collect.tscn')
#const smoke_puff = preload('res://objects/effects/smoke_puff/smoke_puff.tscn')
#const volcano_flame = preload('res://objects/effects/volcano_flame/volcano_flame.tscn')
#const web = preload('res://objects/effects/web/web.tscn')
#const web_ball = preload('res://objects/effects/web_ball/web_ball.tscn')
#const yellow_ball = preload('res://objects/effects/yellow_ball/yellow_ball.tscn')
#const yellow_trail = preload('res://objects/effects/yellow_trail/yellow_trail.tscn')


#enemies
#const alien = preload('res://objects/enemies/alien/alien.tscn')
#const alien_boss = preload('res://objects/enemies/alien_boss/alien_boss.tscn')
#const alien_eject = preload('res://objects/enemies/alien_eject/alien_eject.tscn')
#const barrier = preload('res://objects/enemies/barrier/barrier.tscn')
#const barrier_emitter = preload('res://objects/enemies/barrier_emitter/barrier_emitter.tscn')
#const bat = preload('res://objects/enemies/bat/bat.tscn')
#const caveman = preload('res://objects/enemies/caveman/caveman.tscn')
#const caveman_worship = preload('res://objects/enemies/caveman_worship/caveman_worship.tscn')
#const dead_fish = preload('res://objects/enemies/dead_fish/dead_fish.tscn')
#const enemy_sight = preload('res://objects/enemies/enemy_sight/enemy_sight.tscn')
#const entrance_check = preload('res://objects/enemies/entrance_check/entrance_check.tscn')
#const fire_frog = preload('res://objects/enemies/fire_frog/fire_frog.tscn')
#const frog = preload('res://objects/enemies/frog/frog.tscn')
#const ghost = preload('res://objects/enemies/ghost/ghost.tscn')
#const giant_spider = preload('res://objects/enemies/giant_spider/giant_spider.tscn')
#const giant_spider_hang = preload('res://objects/enemies/giant_spider_hang/giant_spider_hang.tscn')
#const hawkman = preload('res://objects/enemies/hawkman/hawkman.tscn')
#const jaws = preload('res://objects/enemies/jaws/jaws.tscn')
#const magma = preload('res://objects/enemies/magma/magma.tscn')
#const magma_man = preload('res://objects/enemies/magma_man/magma_man.tscn')
#const magma_trail = preload('res://objects/enemies/magma_trail/magma_trail.tscn')
#const man_trap = preload('res://objects/enemies/man_trap/man_trap.tscn')
#const monkey = preload('res://objects/enemies/monkey/monkey.tscn')
#const olmec = preload('res://objects/enemies/olmec/olmec.tscn')
#const olmec_debris = preload('res://objects/enemies/olmec_debris/olmec_debris.tscn')
#const olmec_slam = preload('res://objects/enemies/olmec_slam/olmec_slam.tscn')
#const piranha = preload('res://objects/enemies/piranha/piranha.tscn')
#const scarab = preload('res://objects/enemies/scarab/scarab.tscn')
#const skeleton = preload('res://objects/enemies/skeleton/skeleton.tscn')
#const snake = preload('res://objects/enemies/snake/snake.tscn')
#const spider = preload('res://objects/enemies/spider/spider.tscn')
#const spider_hang = preload('res://objects/enemies/spider_hang/spider_hang.tscn')
#const tomb_lord = preload('res://objects/enemies/tomb_lord/tomb_lord.tscn')
#const ufo = preload('res://objects/enemies/ufo/ufo.tscn')
#const ufo_crash = preload('res://objects/enemies/ufo_crash/ufo_crash.tscn')
#const vampire = preload('res://objects/enemies/vampire/vampire.tscn')
#const yeti = preload('res://objects/enemies/yeti/yeti.tscn')
#const yeti_king = preload('res://objects/enemies/yeti_king/yeti_king.tscn')
#const zombie = preload('res://objects/enemies/zombie/zombie.tscn')


#init
#const check_box = preload('res://objects/init/check_box/check_box.tscn')
#const check_box2 = preload('res://objects/init/check_box2/check_box2.tscn')
#const check_box3 = preload('res://objects/init/check_box3/check_box3.tscn')
#const check_box4 = preload('res://objects/init/check_box4/check_box4.tscn')
#const joy_config_button = preload('res://objects/init/joy_config_button/joy_config_button.tscn')
#const key_config_button = preload('res://objects/init/key_config_button/key_config_button.tscn')
#const ok_button = preload('res://objects/init/ok_button/ok_button.tscn')
#const radio_box = preload('res://objects/init/radio_box/radio_box.tscn')
#const slider1 = preload('res://objects/init/slider1/slider1.tscn')
#const slider2 = preload('res://objects/init/slider2/slider2.tscn')


#items
#const arrow = preload('res://objects/items/arrow/arrow.tscn')
#const ball = preload('res://objects/items/ball/ball.tscn')
#const ball2 = preload('res://objects/items/ball2/ball2.tscn')
#const basketball = preload('res://objects/items/basketball/basketball.tscn')
#const bomb = preload('res://objects/items/bomb/bomb.tscn')
#const bow = preload('res://objects/items/bow/bow.tscn')
#const chain = preload('res://objects/items/chain/chain.tscn')
#const chain2 = preload('res://objects/items/chain2/chain2.tscn')
#const crystal_skull = preload('res://objects/items/crystal_skull/crystal_skull.tscn')
#const dice = preload('res://objects/items/dice/dice.tscn')
#const fire_frog_bomb = preload('res://objects/items/fire_frog_bomb/fire_frog_bomb.tscn')
#const fish_bone = preload('res://objects/items/fish_bone/fish_bone.tscn')
const flare = preload('res://objects/items/flare/flare.tscn') #\**************************************************/ see if there is better way to deal with alarm
#const gold_idol = preload('res://objects/items/gold_idol/gold_idol.tscn')
#const jar = preload('res://objects/items/jar/jar.tscn')
#const lamp_item = preload('res://objects/items/lamp_item/lamp_item.tscn')
#const lamp_red_item = preload('res://objects/items/lamp_red_item/lamp_red_item.tscn')
#const machete = preload('res://objects/items/machete/machete.tscn')
#const machete_pre = preload('res://objects/items/machete_pre/machete_pre.tscn')
#const mattock = preload('res://objects/items/mattock/mattock.tscn')
#const mattock_head = preload('res://objects/items/mattock_head/mattock_head.tscn')
#const mattock_hit = preload('res://objects/items/mattock_hit/mattock_hit.tscn')
#const mattock_pre = preload('res://objects/items/mattock_pre/mattock_pre.tscn')
#const parachute = preload('res://objects/items/parachute/parachute.tscn')
#const pistol = preload('res://objects/items/pistol/pistol.tscn')
#const rock = preload('res://objects/items/rock/rock.tscn')
const rope = preload('res://objects/items/rope/rope.tscn') #\**************************************************/
const rope_throw = preload('res://objects/items/rope_throw/rope_throw.tscn') #\**************************************************/
const rope_top = preload('res://objects/items/rope_top/rope_top.tscn') #\**************************************************/
#const sceptre = preload('res://objects/items/sceptre/sceptre.tscn')
#const shotgun = preload('res://objects/items/shotgun/shotgun.tscn')
#const skull = preload('res://objects/items/skull/skull.tscn')
#const slash = preload('res://objects/items/slash/slash.tscn')
#const teleporter = preload('res://objects/items/teleporter/teleporter.tscn')
#const web_cannon = preload('res://objects/items/web_cannon/web_cannon.tscn')
const whip = preload('res://objects/items/whip/whip.tscn') #\**************************************************/
const whip_pre = preload('res://objects/items/whip_pre/whip_pre.tscn') #\**************************************************/ see if something can be done about alarm


#level editor
#const alien_boss_tile = preload('res://objects/level editor/alien_boss_tile/alien_boss_tile.tscn')
#const alien_tile = preload('res://objects/level editor/alien_tile/alien_tile.tscn')
#const edit_button = preload('res://objects/level editor/edit_button/edit_button.tscn')
#const fire_frog_tile = preload('res://objects/level editor/fire_frog_tile/fire_frog_tile.tscn')
#const frog_tile = preload('res://objects/level editor/frog_tile/frog_tile.tscn')
#const giant_spider_tile = preload('res://objects/level editor/giant_spider_tile/giant_spider_tile.tscn')
#const load_button = preload('res://objects/level editor/load_button/load_button.tscn')
#const man_trap_tile = preload('res://objects/level editor/man_trap_tile/man_trap_tile.tscn')
#const mega_mouth_tile = preload('res://objects/level editor/mega_mouth_tile/mega_mouth_tile.tscn')
#const new_button = preload('res://objects/level editor/new_button/new_button.tscn')
#const test_button = preload('res://objects/level editor/test_button/test_button.tscn')
#const tomb_lord_tile = preload('res://objects/level editor/tomb_lord_tile/tomb_lord_tile.tscn')
#const ufo_tile = preload('res://objects/level editor/ufo_tile/ufo_tile.tscn')
#const vampire_tile = preload('res://objects/level editor/vampire_tile/vampire_tile.tscn')
#const yeti_king_tile = preload('res://objects/level editor/yeti_king_tile/yeti_king_tile.tscn')
#const zombie_tile = preload('res://objects/level editor/zombie_tile/zombie_tile.tscn')


#other
const hint_hand = preload('res://objects/other/hint_hand/hint_hand.tscn') #\**************************************************/ check text box and hiding label in physics_process
#const menu_sel = preload('res://objects/other/menu_sel/menu_sel.tscn')
#const page_down = preload('res://objects/other/page_down/page_down.tscn')
#const page_up = preload('res://objects/other/page_up/page_up.tscn')
#const p_dummy = preload('res://objects/other/p_dummy/p_dummy.tscn')
#const p_dummy2 = preload('res://objects/other/p_dummy2/p_dummy2.tscn')
const p_dummy3 = preload('res://objects/other/p_dummy3/p_dummy3.tscn') #\**************************************************/ check alarms and flipped sprite. also put camera under animated sprite
const p_dummy4 = preload('res://objects/other/p_dummy4/p_dummy4.tscn') #\**************************************************/ check alarms
#const p_dummy5 = preload('res://objects/other/p_dummy5/p_dummy5.tscn')
#const p_dummy6 = preload('res://objects/other/p_dummy6/p_dummy6.tscn')
#const wal_damsel = preload('res://objects/other/wal_damsel/wal_damsel.tscn')


#other\end
#const bg_end3 = preload('res://objects/other/end/bg_end3/bg_end3.tscn')
#const big_treasure = preload('res://objects/other/end/big_treasure/big_treasure.tscn')
#const end_plat = preload('res://objects/other/end/end_plat/end_plat.tscn')
#const lava_spray = preload('res://objects/other/end/lava_spray/lava_spray.tscn')
#const player_sil = preload('res://objects/other/end/player_sil/player_sil.tscn')
#const treasure_sil = preload('res://objects/other/end/treasure_sil/treasure_sil.tscn')


#other\intro
const bat_intro = preload('res://objects/other/intro/bat_intro/bat_intro.tscn') #\**************************************************/
#const camel = preload('res://objects/other/intro/camel/camel.tscn')
#const caravan = preload('res://objects/other/intro/caravan/caravan.tscn')
const desert = preload('res://objects/other/intro/desert/desert.tscn') #\**************************************************/
const desert2 = preload('res://objects/other/intro/desert2/desert2.tscn') #\**************************************************/
#const desert_scroll = preload('res://objects/other/intro/desert_scroll/desert_scroll.tscn')
#const desert_scroll2 = preload('res://objects/other/intro/desert_scroll2/desert_scroll2.tscn')
const desert_top = preload('res://objects/other/intro/desert_top/desert_top.tscn') #\**************************************************/
#const desert_top_scroll = preload('res://objects/other/intro/desert_top_scroll/desert_top_scroll.tscn')
const intro_bg = preload('res://objects/other/intro/intro_bg/intro_bg.tscn') #\**************************************************/
const moon = preload('res://objects/other/intro/moon/moon.tscn') #\**************************************************/
#const palm_tree_scroll = preload('res://objects/other/intro/palm_tree_scroll/palm_tree_scroll.tscn')
#const shrub_scroll = preload('res://objects/other/intro/shrub_scroll/shrub_scroll.tscn')

const shrub_dark = preload("res://objects/other/intro/shrub_dark/shrub_dark.tscn")
const cave_bg_entrance = preload("res://objects/blocks/cave_bg_entrance/cave_bg_entrance.tscn")


#other\title
#const basket = preload('res://objects/other/title/basket/basket.tscn')
#const bat_target = preload('res://objects/other/title/bat_target/bat_target.tscn')
#const button_highscore = preload('res://objects/other/title/button_highscore/button_highscore.tscn')
#const target = preload('res://objects/other/title/target/target.tscn')


#supersound
#const re = preload('res://objects/supersound/re/re.tscn')


#traps
#const arrow_repeater_l = preload('res://objects/traps/arrow_repeater_l/arrow_repeater_l.tscn')
#const arrow_repeater_r = preload('res://objects/traps/arrow_repeater_r/arrow_repeater_r.tscn')
#const arrow_trap_left = preload('res://objects/traps/arrow_trap_left/arrow_trap_left.tscn')
#const arrow_trap_right = preload('res://objects/traps/arrow_trap_right/arrow_trap_right.tscn')
#const arrow_trap_test = preload('res://objects/traps/arrow_trap_test/arrow_trap_test.tscn')
#const boulder = preload('res://objects/traps/boulder/boulder.tscn')
#const ceiling_trap = preload('res://objects/traps/ceiling_trap/ceiling_trap.tscn')
#const door = preload('res://objects/traps/door/door.tscn')
#const giant_tiki_head = preload('res://objects/traps/giant_tiki_head/giant_tiki_head.tscn')
#const smash_trap = preload('res://objects/traps/smash_trap/smash_trap.tscn')
#const smash_trap_lit = preload('res://objects/traps/smash_trap_lit/smash_trap_lit.tscn')
#const spears_left = preload('res://objects/traps/spears_left/spears_left.tscn')
#const spear_trap_bottom = preload('res://objects/traps/spear_trap_bottom/spear_trap_bottom.tscn')
#const spear_trap_top = preload('res://objects/traps/spear_trap_top/spear_trap_top.tscn')
#const spikes = preload('res://objects/traps/spikes/spikes.tscn')
#const spring_trap = preload('res://objects/traps/spring_trap/spring_trap.tscn')
#const temp = preload('res://objects/traps/temp/temp.tscn')
#const thwomp_trap = preload('res://objects/traps/thwomp_trap/thwomp_trap.tscn')
#const trap_block = preload('res://objects/traps/trap_block/trap_block.tscn')

#-----
#objects
##var bricks = res://objects/bricks/bricks.tscn
##var credits1 = res://objects/credits1/credits1.tscn
##var credits2 = res://objects/credits2/credits2.tscn
##var curs_obj = res://objects/curs_obj/curs_obj.tscn
##var end = res://objects/end/end.tscn
##var end2 = res://objects/end2/end2.tscn
##var end3 = res://objects/end3/end3.tscn
##var end_custom = res://objects/end_custom/end_custom.tscn
##var final_boss = res://objects/final_boss/final_boss.tscn
##var game = res://objects/game/game.tscn
##var gamepad = res://objects/gamepad/gamepad.tscn
##var globals = res://objects/globals/globals.tscn
##var highscores = res://objects/highscores/highscores.tscn
##var intro = res://objects/intro/intro.tscn
##var joy_config = res://objects/joy_config/joy_config.tscn
##var key_config = res://objects/key_config/key_config.tscn
##var level = res://objects/level/level.tscn
##var level_editor = res://objects/level_editor/level_editor.tscn
##var load_level = res://objects/load_level/load_level.tscn
##var moon_room = res://objects/moon_room/moon_room.tscn
##var music = res://objects/music/music.tscn
##var player1 = res://objects/player1/player1.tscn
##var room = res://objects/room/room.tscn
##var screen = res://objects/screen/screen.tscn
##var sprite = res://objects/sprite/sprite.tscn
##var stars_room = res://objects/stars_room/stars_room.tscn
##var sun_room = res://objects/sun_room/sun_room.tscn
##var title = res://objects/title/title.tscn
##var transition = res://objects/transition/transition.tscn


#basis
##var backdrop = res://objects/basis/backdrop/backdrop.tscn
##var character = res://objects/basis/character/character.tscn
##var detritus = res://objects/basis/detritus/detritus.tscn
##var drawn_sprite = res://objects/basis/drawn_sprite/drawn_sprite.tscn
##var enemy = res://objects/basis/enemy/enemy.tscn
##var foreground = res://objects/basis/foreground/foreground.tscn
##var frill = res://objects/basis/frill/frill.tscn
##var item = res://objects/basis/item/item.tscn
##var ladder = res://objects/basis/ladder/ladder.tscn
##var menu = res://objects/basis/menu/menu.tscn
##var moveable_solid = res://objects/basis/moveable_solid/moveable_solid.tscn
##var moving_solid = res://objects/basis/moving_solid/moving_solid.tscn
##var platform = res://objects/basis/platform/platform.tscn
##var rubble_piece = res://objects/basis/rubble_piece/rubble_piece.tscn
##var solid = res://objects/basis/solid/solid.tscn
##var treasure = res://objects/basis/treasure/treasure.tscn
##var water = res://objects/basis/water/water.tscn


#blocks
##var alien_ship = res://objects/blocks/alien_ship/alien_ship.tscn
##var alien_ship_floor = res://objects/blocks/alien_ship_floor/alien_ship_floor.tscn
##var altar_left = res://objects/blocks/altar_left/altar_left.tscn
##var altar_right = res://objects/blocks/altar_right/altar_right.tscn
##var black_fade_up = res://objects/blocks/black_fade_up/black_fade_up.tscn
##var block = res://objects/blocks/block/block.tscn
##var brick = res://objects/blocks/brick/brick.tscn
##var brick_smooth = res://objects/blocks/brick_smooth/brick_smooth.tscn
##var cave_bg = res://objects/blocks/cave_bg/cave_bg.tscn
##var cave_bg2 = res://objects/blocks/cave_bg2/cave_bg2.tscn
##var cave_bg_entrance = res://objects/blocks/cave_bg_entrance/cave_bg_entrance.tscn
##var dark = res://objects/blocks/dark/dark.tscn
##var dark_fall = res://objects/blocks/dark_fall/dark_fall.tscn
##var entrance = res://objects/blocks/entrance/entrance.tscn
##var exit = res://objects/blocks/exit/exit.tscn
##var frozen_caveman = res://objects/blocks/frozen_caveman/frozen_caveman.tscn
##var gold = res://objects/blocks/gold/gold.tscn
##var gold_big = res://objects/blocks/gold_big/gold_big.tscn
##var gold_door = res://objects/blocks/gold_door/gold_door.tscn
##var grave = res://objects/blocks/grave/grave.tscn
##var hard_block = res://objects/blocks/hard_block/hard_block.tscn
##var ice = res://objects/blocks/ice/ice.tscn
##var ice_block = res://objects/blocks/ice_block/ice_block.tscn
##var ice_bottom = res://objects/blocks/ice_bottom/ice_bottom.tscn
##var kali_head = res://objects/blocks/kali_head/kali_head.tscn
##var ladder_orange = res://objects/blocks/ladder_orange/ladder_orange.tscn
##var ladder_top = res://objects/blocks/ladder_top/ladder_top.tscn
##var lamp = res://objects/blocks/lamp/lamp.tscn
##var lamp_red = res://objects/blocks/lamp_red/lamp_red.tscn
##var lava = res://objects/blocks/lava/lava.tscn
##var lava_solid = res://objects/blocks/lava_solid/lava_solid.tscn
##var leaves = res://objects/blocks/leaves/leaves.tscn
##var leaves_tile = res://objects/blocks/leaves_tile/leaves_tile.tscn
##var lush = res://objects/blocks/lush/lush.tscn
##var moai = res://objects/blocks/moai/moai.tscn
##var moai2 = res://objects/blocks/moai2/moai2.tscn
##var moai3 = res://objects/blocks/moai3/moai3.tscn
##var moai_inside = res://objects/blocks/moai_inside/moai_inside.tscn
##var msg_sign = res://objects/blocks/msg_sign/msg_sign.tscn
##var push_block = res://objects/blocks/push_block/push_block.tscn
##var sac_altar_left = res://objects/blocks/sac_altar_left/sac_altar_left.tscn
##var sac_altar_right = res://objects/blocks/sac_altar_right/sac_altar_right.tscn
##var sign = res://objects/blocks/sign/sign.tscn
##var splash = res://objects/blocks/splash/splash.tscn
##var temple = res://objects/blocks/temple/temple.tscn
##var temple_fake = res://objects/blocks/temple_fake/temple_fake.tscn
##var thin_ice = res://objects/blocks/thin_ice/thin_ice.tscn
##var tiki_torch = res://objects/blocks/tiki_torch/tiki_torch.tscn
##var tree = res://objects/blocks/tree/tree.tscn
##var tree_branch = res://objects/blocks/tree_branch/tree_branch.tscn
##var tree_branch_tile = res://objects/blocks/tree_branch_tile/tree_branch_tile.tscn
##var tree_tile = res://objects/blocks/tree_tile/tree_tile.tscn
##var vine = res://objects/blocks/vine/vine.tscn
##var vine_top = res://objects/blocks/vine_top/vine_top.tscn
##var water_swim = res://objects/blocks/water_swim/water_swim.tscn
##var x_gold = res://objects/blocks/x_gold/x_gold.tscn
##var x_market = res://objects/blocks/x_market/x_market.tscn
##var xoc_block = res://objects/blocks/xoc_block/xoc_block.tscn


#characters
##var damsel = res://objects/characters/damsel/damsel.tscn
##var damsel_kiss = res://objects/characters/damsel_kiss/damsel_kiss.tscn
##var shopkeeper = res://objects/characters/shopkeeper/shopkeeper.tscn
##var shopkeeper2 = res://objects/characters/shopkeeper2/shopkeeper2.tscn
##var tunnel_man = res://objects/characters/tunnel_man/tunnel_man.tscn
##var yell_help = res://objects/characters/yell_help/yell_help.tscn


#collectibles
##var ankh = res://objects/collectibles/ankh/ankh.tscn
##var bomb_bag = res://objects/collectibles/bomb_bag/bomb_bag.tscn
##var bomb_box = res://objects/collectibles/bomb_box/bomb_box.tscn
##var bones = res://objects/collectibles/bones/bones.tscn
##var cape = res://objects/collectibles/cape/cape.tscn
##var cape_pickup = res://objects/collectibles/cape_pickup/cape_pickup.tscn
##var chest = res://objects/collectibles/chest/chest.tscn
##var compass = res://objects/collectibles/compass/compass.tscn
##var crate = res://objects/collectibles/crate/crate.tscn
##var crown = res://objects/collectibles/crown/crown.tscn
##var diamond = res://objects/collectibles/diamond/diamond.tscn
##var emerald = res://objects/collectibles/emerald/emerald.tscn
##var emerald_big = res://objects/collectibles/emerald_big/emerald_big.tscn
##var fake_bones = res://objects/collectibles/fake_bones/fake_bones.tscn
##var fire_frog_armed = res://objects/collectibles/fire_frog_armed/fire_frog_armed.tscn
##var flare_crate = res://objects/collectibles/flare_crate/flare_crate.tscn
##var gloves = res://objects/collectibles/gloves/gloves.tscn
##var gold_bar = res://objects/collectibles/gold_bar/gold_bar.tscn
##var gold_bars = res://objects/collectibles/gold_bars/gold_bars.tscn
##var gold_chunk = res://objects/collectibles/gold_chunk/gold_chunk.tscn
##var gold_nugget = res://objects/collectibles/gold_nugget/gold_nugget.tscn
##var jetpack = res://objects/collectibles/jetpack/jetpack.tscn
##var jordans = res://objects/collectibles/jordans/jordans.tscn
##var kapala = res://objects/collectibles/kapala/kapala.tscn
##var key = res://objects/collectibles/key/key.tscn
##var locked_chest = res://objects/collectibles/locked_chest/locked_chest.tscn
##var mitt = res://objects/collectibles/mitt/mitt.tscn
##var para_pickup = res://objects/collectibles/para_pickup/para_pickup.tscn
##var para_used = res://objects/collectibles/para_used/para_used.tscn
##var paste = res://objects/collectibles/paste/paste.tscn
##var rope_bag = res://objects/collectibles/rope_bag/rope_bag.tscn
##var rope_pile = res://objects/collectibles/rope_pile/rope_pile.tscn
##var ruby = res://objects/collectibles/ruby/ruby.tscn
##var ruby_big = res://objects/collectibles/ruby_big/ruby_big.tscn
##var sapphire = res://objects/collectibles/sapphire/sapphire.tscn
##var sapphire_big = res://objects/collectibles/sapphire_big/sapphire_big.tscn
##var spectacles = res://objects/collectibles/spectacles/spectacles.tscn
##var spike_shoes = res://objects/collectibles/spike_shoes/spike_shoes.tscn
##var spring_shoes = res://objects/collectibles/spring_shoes/spring_shoes.tscn
##var udjat_eye = res://objects/collectibles/udjat_eye/udjat_eye.tscn


#effects
##var big_collect = res://objects/effects/big_collect/big_collect.tscn
##var blood = res://objects/effects/blood/blood.tscn
##var blood_spark = res://objects/effects/blood_spark/blood_spark.tscn
##var blood_trail = res://objects/effects/blood_trail/blood_trail.tscn
##var bone = res://objects/effects/bone/bone.tscn
##var bubble = res://objects/effects/bubble/bubble.tscn
##var bullet = res://objects/effects/bullet/bullet.tscn
##var burn = res://objects/effects/burn/burn.tscn
##var drip = res://objects/effects/drip/drip.tscn
##var explosion = res://objects/effects/explosion/explosion.tscn
##var flame = res://objects/effects/flame/flame.tscn
##var flame_trail = res://objects/effects/flame_trail/flame_trail.tscn
##var flare_spark = res://objects/effects/flare_spark/flare_spark.tscn
##var fly = res://objects/effects/fly/fly.tscn
##var heart = res://objects/effects/heart/heart.tscn
##var items_get = res://objects/effects/items_get/items_get.tscn
##var laser = res://objects/effects/laser/laser.tscn
##var laser_explode = res://objects/effects/laser_explode/laser_explode.tscn
##var laser_trail = res://objects/effects/laser_trail/laser_trail.tscn
##var lava_drip = res://objects/effects/lava_drip/lava_drip.tscn
##var leaf = res://objects/effects/leaf/leaf.tscn
##var poof = res://objects/effects/poof/poof.tscn
##var psychic_create = res://objects/effects/psychic_create/psychic_create.tscn
##var psychic_create2 = res://objects/effects/psychic_create2/psychic_create2.tscn
##var psychic_create_p = res://objects/effects/psychic_create_p/psychic_create_p.tscn
##var psychic_wave = res://objects/effects/psychic_wave/psychic_wave.tscn
##var psychic_wave_p = res://objects/effects/psychic_wave_p/psychic_wave_p.tscn
##var rope_burn = res://objects/effects/rope_burn/rope_burn.tscn
##var rubble = res://objects/effects/rubble/rubble.tscn
##var rubble_dark = res://objects/effects/rubble_dark/rubble_dark.tscn
##var rubble_dark_small = res://objects/effects/rubble_dark_small/rubble_dark_small.tscn
##var rubble_small = res://objects/effects/rubble_small/rubble_small.tscn
##var shotgun_blast_left = res://objects/effects/shotgun_blast_left/shotgun_blast_left.tscn
##var shotgun_blast_right = res://objects/effects/shotgun_blast_right/shotgun_blast_right.tscn
##var small_collect = res://objects/effects/small_collect/small_collect.tscn
##var smoke_puff = res://objects/effects/smoke_puff/smoke_puff.tscn
##var volcano_flame = res://objects/effects/volcano_flame/volcano_flame.tscn
##var web = res://objects/effects/web/web.tscn
##var web_ball = res://objects/effects/web_ball/web_ball.tscn
##var yellow_ball = res://objects/effects/yellow_ball/yellow_ball.tscn
##var yellow_trail = res://objects/effects/yellow_trail/yellow_trail.tscn


#enemies
##var alien = res://objects/enemies/alien/alien.tscn
##var alien_boss = res://objects/enemies/alien_boss/alien_boss.tscn
##var alien_eject = res://objects/enemies/alien_eject/alien_eject.tscn
##var barrier = res://objects/enemies/barrier/barrier.tscn
##var barrier_emitter = res://objects/enemies/barrier_emitter/barrier_emitter.tscn
##var bat = res://objects/enemies/bat/bat.tscn
##var caveman = res://objects/enemies/caveman/caveman.tscn
##var caveman_worship = res://objects/enemies/caveman_worship/caveman_worship.tscn
##var dead_fish = res://objects/enemies/dead_fish/dead_fish.tscn
##var enemy_sight = res://objects/enemies/enemy_sight/enemy_sight.tscn
##var entrance_check = res://objects/enemies/entrance_check/entrance_check.tscn
##var fire_frog = res://objects/enemies/fire_frog/fire_frog.tscn
##var frog = res://objects/enemies/frog/frog.tscn
##var ghost = res://objects/enemies/ghost/ghost.tscn
##var giant_spider = res://objects/enemies/giant_spider/giant_spider.tscn
##var giant_spider_hang = res://objects/enemies/giant_spider_hang/giant_spider_hang.tscn
##var hawkman = res://objects/enemies/hawkman/hawkman.tscn
##var hawkman_worship = res://objects/enemies/hawkman_worship/hawkman_worship.tscn
##var jaws = res://objects/enemies/jaws/jaws.tscn
##var magma = res://objects/enemies/magma/magma.tscn
##var magma_man = res://objects/enemies/magma_man/magma_man.tscn
##var magma_trail = res://objects/enemies/magma_trail/magma_trail.tscn
##var man_trap = res://objects/enemies/man_trap/man_trap.tscn
##var monkey = res://objects/enemies/monkey/monkey.tscn
##var olmec = res://objects/enemies/olmec/olmec.tscn
##var olmec_debris = res://objects/enemies/olmec_debris/olmec_debris.tscn
##var olmec_slam = res://objects/enemies/olmec_slam/olmec_slam.tscn
##var piranha = res://objects/enemies/piranha/piranha.tscn
##var scarab = res://objects/enemies/scarab/scarab.tscn
##var skeleton = res://objects/enemies/skeleton/skeleton.tscn
##var snake = res://objects/enemies/snake/snake.tscn
##var spider = res://objects/enemies/spider/spider.tscn
##var spider_hang = res://objects/enemies/spider_hang/spider_hang.tscn
##var tomb_lord = res://objects/enemies/tomb_lord/tomb_lord.tscn
##var ufo = res://objects/enemies/ufo/ufo.tscn
##var ufo_crash = res://objects/enemies/ufo_crash/ufo_crash.tscn
##var vampire = res://objects/enemies/vampire/vampire.tscn
##var yeti = res://objects/enemies/yeti/yeti.tscn
##var yeti_king = res://objects/enemies/yeti_king/yeti_king.tscn
##var zombie = res://objects/enemies/zombie/zombie.tscn


#init
##var check_box = res://objects/init/check_box/check_box.tscn
##var check_box2 = res://objects/init/check_box2/check_box2.tscn
##var check_box3 = res://objects/init/check_box3/check_box3.tscn
##var check_box4 = res://objects/init/check_box4/check_box4.tscn
##var joy_config_button = res://objects/init/joy_config_button/joy_config_button.tscn
##var key_config_button = res://objects/init/key_config_button/key_config_button.tscn
##var ok_button = res://objects/init/ok_button/ok_button.tscn
##var radio_box = res://objects/init/radio_box/radio_box.tscn
##var slider1 = res://objects/init/slider1/slider1.tscn
##var slider2 = res://objects/init/slider2/slider2.tscn
##var slider_bg = res://objects/init/slider_bg/slider_bg.tscn


#items
##var arrow = res://objects/items/arrow/arrow.tscn
##var ball = res://objects/items/ball/ball.tscn
##var ball2 = res://objects/items/ball2/ball2.tscn
##var basketball = res://objects/items/basketball/basketball.tscn
##var bomb = res://objects/items/bomb/bomb.tscn
##var bow = res://objects/items/bow/bow.tscn
##var chain = res://objects/items/chain/chain.tscn
##var chain2 = res://objects/items/chain2/chain2.tscn
##var crystal_skull = res://objects/items/crystal_skull/crystal_skull.tscn
##var dice = res://objects/items/dice/dice.tscn
##var fire_frog_bomb = res://objects/items/fire_frog_bomb/fire_frog_bomb.tscn
##var fish_bone = res://objects/items/fish_bone/fish_bone.tscn
##var flare = res://objects/items/flare/flare.tscn
##var gold_idol = res://objects/items/gold_idol/gold_idol.tscn
##var jar = res://objects/items/jar/jar.tscn
##var lamp_item = res://objects/items/lamp_item/lamp_item.tscn
##var lamp_red_item = res://objects/items/lamp_red_item/lamp_red_item.tscn
##var machete = res://objects/items/machete/machete.tscn
##var machete_pre = res://objects/items/machete_pre/machete_pre.tscn
##var mattock = res://objects/items/mattock/mattock.tscn
##var mattock_head = res://objects/items/mattock_head/mattock_head.tscn
##var mattock_hit = res://objects/items/mattock_hit/mattock_hit.tscn
##var mattock_pre = res://objects/items/mattock_pre/mattock_pre.tscn
##var parachute = res://objects/items/parachute/parachute.tscn
##var pistol = res://objects/items/pistol/pistol.tscn
##var rock = res://objects/items/rock/rock.tscn
##var rope = res://objects/items/rope/rope.tscn
##var rope_throw = res://objects/items/rope_throw/rope_throw.tscn
##var rope_top = res://objects/items/rope_top/rope_top.tscn
##var sceptre = res://objects/items/sceptre/sceptre.tscn
##var shotgun = res://objects/items/shotgun/shotgun.tscn
##var skull = res://objects/items/skull/skull.tscn
##var slash = res://objects/items/slash/slash.tscn
##var teleporter = res://objects/items/teleporter/teleporter.tscn
##var web_cannon = res://objects/items/web_cannon/web_cannon.tscn
##var whip = res://objects/items/whip/whip.tscn
##var whip_pre = res://objects/items/whip_pre/whip_pre.tscn


#level editor
##var alien_boss_tile = res://objects/level editor/alien_boss_tile/alien_boss_tile.tscn
##var alien_tile = res://objects/level editor/alien_tile/alien_tile.tscn
##var bat_tile = res://objects/level editor/bat_tile/bat_tile.tscn
##var bomb_bag_tile = res://objects/level editor/bomb_bag_tile/bomb_bag_tile.tscn
##var bomb_box_tile = res://objects/level editor/bomb_box_tile/bomb_box_tile.tscn
##var bomb_paste_tile = res://objects/level editor/bomb_paste_tile/bomb_paste_tile.tscn
##var bones_tile = res://objects/level editor/bones_tile/bones_tile.tscn
##var bow_tile = res://objects/level editor/bow_tile/bow_tile.tscn
##var cape_tile = res://objects/level editor/cape_tile/cape_tile.tscn
##var caveman_tile = res://objects/level editor/caveman_tile/caveman_tile.tscn
##var chest_tile = res://objects/level editor/chest_tile/chest_tile.tscn
##var compass_tile = res://objects/level editor/compass_tile/compass_tile.tscn
##var crate_tile = res://objects/level editor/crate_tile/crate_tile.tscn
##var crystal_skull_tile = res://objects/level editor/crystal_skull_tile/crystal_skull_tile.tscn
##var damsel_tile = res://objects/level editor/damsel_tile/damsel_tile.tscn
##var diamond_tile = res://objects/level editor/diamond_tile/diamond_tile.tscn
##var edit_button = res://objects/level editor/edit_button/edit_button.tscn
##var emerald_big_tile = res://objects/level editor/emerald_big_tile/emerald_big_tile.tscn
##var fire_frog_tile = res://objects/level editor/fire_frog_tile/fire_frog_tile.tscn
##var frog_tile = res://objects/level editor/frog_tile/frog_tile.tscn
##var giant_spider_tile = res://objects/level editor/giant_spider_tile/giant_spider_tile.tscn
##var gloves_tile = res://objects/level editor/gloves_tile/gloves_tile.tscn
##var gold_bars_tile = res://objects/level editor/gold_bars_tile/gold_bars_tile.tscn
##var gold_bar_tile = res://objects/level editor/gold_bar_tile/gold_bar_tile.tscn
##var gold_idol_tile = res://objects/level editor/gold_idol_tile/gold_idol_tile.tscn
##var hawkman_tile = res://objects/level editor/hawkman_tile/hawkman_tile.tscn
##var ice_tile = res://objects/level editor/ice_tile/ice_tile.tscn
##var jar_tile = res://objects/level editor/jar_tile/jar_tile.tscn
##var jetpack_tile = res://objects/level editor/jetpack_tile/jetpack_tile.tscn
##var lava_tile = res://objects/level editor/lava_tile/lava_tile.tscn
##var load_button = res://objects/level editor/load_button/load_button.tscn
##var machete_tile = res://objects/level editor/machete_tile/machete_tile.tscn
##var man_trap_tile = res://objects/level editor/man_trap_tile/man_trap_tile.tscn
##var mattock_tile = res://objects/level editor/mattock_tile/mattock_tile.tscn
##var mega_mouth_tile = res://objects/level editor/mega_mouth_tile/mega_mouth_tile.tscn
##var mitt_tile = res://objects/level editor/mitt_tile/mitt_tile.tscn
##var monkey_tile = res://objects/level editor/monkey_tile/monkey_tile.tscn
##var new_button = res://objects/level editor/new_button/new_button.tscn
##var parachute_tile = res://objects/level editor/parachute_tile/parachute_tile.tscn
##var piranha_tile = res://objects/level editor/piranha_tile/piranha_tile.tscn
##var pistol_tile = res://objects/level editor/pistol_tile/pistol_tile.tscn
##var rock_tile = res://objects/level editor/rock_tile/rock_tile.tscn
##var rope_pile_tile = res://objects/level editor/rope_pile_tile/rope_pile_tile.tscn
##var ruby_big_tile = res://objects/level editor/ruby_big_tile/ruby_big_tile.tscn
##var sapphire_big_tile = res://objects/level editor/sapphire_big_tile/sapphire_big_tile.tscn
##var shopkeeper_tile = res://objects/level editor/shopkeeper_tile/shopkeeper_tile.tscn
##var shotgun_tile = res://objects/level editor/shotgun_tile/shotgun_tile.tscn
##var skeleton_tile = res://objects/level editor/skeleton_tile/skeleton_tile.tscn
##var smash_trap_tile = res://objects/level editor/smash_trap_tile/smash_trap_tile.tscn
##var snake_tile = res://objects/level editor/snake_tile/snake_tile.tscn
##var spear_trap_tile_bot = res://objects/level editor/spear_trap_tile_bot/spear_trap_tile_bot.tscn
##var spear_trap_tile_top = res://objects/level editor/spear_trap_tile_top/spear_trap_tile_top.tscn
##var spectacles_tile = res://objects/level editor/spectacles_tile/spectacles_tile.tscn
##var spider_tile = res://objects/level editor/spider_tile/spider_tile.tscn
##var spike_shoes_tile = res://objects/level editor/spike_shoes_tile/spike_shoes_tile.tscn
##var spring_shoes_tile = res://objects/level editor/spring_shoes_tile/spring_shoes_tile.tscn
##var spring_trap_tile = res://objects/level editor/spring_trap_tile/spring_trap_tile.tscn
##var teleporter_tile = res://objects/level editor/teleporter_tile/teleporter_tile.tscn
##var test_button = res://objects/level editor/test_button/test_button.tscn
##var tomb_lord_tile = res://objects/level editor/tomb_lord_tile/tomb_lord_tile.tscn
##var ufo_tile = res://objects/level editor/ufo_tile/ufo_tile.tscn
##var vampire_tile = res://objects/level editor/vampire_tile/vampire_tile.tscn
##var water_tile = res://objects/level editor/water_tile/water_tile.tscn
##var web_cannon_tile = res://objects/level editor/web_cannon_tile/web_cannon_tile.tscn
##var web_tile = res://objects/level editor/web_tile/web_tile.tscn
##var yeti_king_tile = res://objects/level editor/yeti_king_tile/yeti_king_tile.tscn
##var yeti_tile = res://objects/level editor/yeti_tile/yeti_tile.tscn
##var zombie_tile = res://objects/level editor/zombie_tile/zombie_tile.tscn


#other
##var black = res://objects/other/black/black.tscn
##var black_bg = res://objects/other/black_bg/black_bg.tscn
##var cave_up = res://objects/other/cave_up/cave_up.tscn
##var hint_hand = res://objects/other/hint_hand/hint_hand.tscn
##var menu_bottom = res://objects/other/menu_bottom/menu_bottom.tscn
##var menu_left = res://objects/other/menu_left/menu_left.tscn
##var menu_ll = res://objects/other/menu_ll/menu_ll.tscn
##var menu_lr = res://objects/other/menu_lr/menu_lr.tscn
##var menu_right = res://objects/other/menu_right/menu_right.tscn
##var menu_sel = res://objects/other/menu_sel/menu_sel.tscn
##var menu_top = res://objects/other/menu_top/menu_top.tscn
##var menu_ul = res://objects/other/menu_ul/menu_ul.tscn
##var menu_ur = res://objects/other/menu_ur/menu_ur.tscn
##var page_down = res://objects/other/page_down/page_down.tscn
##var page_up = res://objects/other/page_up/page_up.tscn
##var p_dummy = res://objects/other/p_dummy/p_dummy.tscn
##var p_dummy2 = res://objects/other/p_dummy2/p_dummy2.tscn
##var p_dummy3 = res://objects/other/p_dummy3/p_dummy3.tscn
##var p_dummy4 = res://objects/other/p_dummy4/p_dummy4.tscn
##var p_dummy5 = res://objects/other/p_dummy5/p_dummy5.tscn
##var p_dummy6 = res://objects/other/p_dummy6/p_dummy6.tscn
##var wal_damsel = res://objects/other/wal_damsel/wal_damsel.tscn


#other\end
##var bg_end3 = res://objects/other/end/bg_end3/bg_end3.tscn
##var big_chest = res://objects/other/end/big_chest/big_chest.tscn
##var big_treasure = res://objects/other/end/big_treasure/big_treasure.tscn
##var end2_bg = res://objects/other/end/end2_bg/end2_bg.tscn
##var end_plat = res://objects/other/end/end_plat/end_plat.tscn
##var end_wall = res://objects/other/end/end_wall/end_wall.tscn
##var lava_spray = res://objects/other/end/lava_spray/lava_spray.tscn
##var player_sil = res://objects/other/end/player_sil/player_sil.tscn
##var treasure_sil = res://objects/other/end/treasure_sil/treasure_sil.tscn


#other\intro
##var bat_intro = res://objects/other/intro/bat_intro/bat_intro.tscn
##var camel = res://objects/other/intro/camel/camel.tscn
##var caravan = res://objects/other/intro/caravan/caravan.tscn
##var desert = res://objects/other/intro/desert/desert.tscn
##var desert2 = res://objects/other/intro/desert2/desert2.tscn
##var desert_scroll = res://objects/other/intro/desert_scroll/desert_scroll.tscn
##var desert_scroll2 = res://objects/other/intro/desert_scroll2/desert_scroll2.tscn
##var desert_top = res://objects/other/intro/desert_top/desert_top.tscn
##var desert_top_scroll = res://objects/other/intro/desert_top_scroll/desert_top_scroll.tscn
##var intro_bg = res://objects/other/intro/intro_bg/intro_bg.tscn
##var moon = res://objects/other/intro/moon/moon.tscn
##var palm_tree = res://objects/other/intro/palm_tree/palm_tree.tscn
##var palm_tree_dark = res://objects/other/intro/palm_tree_dark/palm_tree_dark.tscn
##var palm_tree_scroll = res://objects/other/intro/palm_tree_scroll/palm_tree_scroll.tscn
##var shrub = res://objects/other/intro/shrub/shrub.tscn
##var shrub_dark = res://objects/other/intro/shrub_dark/shrub_dark.tscn
##var shrub_scroll = res://objects/other/intro/shrub_scroll/shrub_scroll.tscn


#other\title
##var basket = res://objects/other/title/basket/basket.tscn
##var bat_target = res://objects/other/title/bat_target/bat_target.tscn
##var button_highscore = res://objects/other/title/button_highscore/button_highscore.tscn
##var copy = res://objects/other/title/copy/copy.tscn
##var level13_sign = res://objects/other/title/level13_sign/level13_sign.tscn
##var level5_sign = res://objects/other/title/level5_sign/level5_sign.tscn
##var level9_sign = res://objects/other/title/level9_sign/level9_sign.tscn
##var multi_trophy = res://objects/other/title/multi_trophy/multi_trophy.tscn
##var new = res://objects/other/title/new/new.tscn
##var quit_sign = res://objects/other/title/quit_sign/quit_sign.tscn
##var reset_sign = res://objects/other/title/reset_sign/reset_sign.tscn
##var rim = res://objects/other/title/rim/rim.tscn
##var rim_deflect = res://objects/other/title/rim_deflect/rim_deflect.tscn
##var scores_sign = res://objects/other/title/scores_sign/scores_sign.tscn
##var start_sign = res://objects/other/title/start_sign/start_sign.tscn
##var target = res://objects/other/title/target/target.tscn
##var title_bg = res://objects/other/title/title_bg/title_bg.tscn
##var title_logo = res://objects/other/title/title_logo/title_logo.tscn
##var trophy = res://objects/other/title/trophy/trophy.tscn
##var tutorial_sign = res://objects/other/title/tutorial_sign/tutorial_sign.tscn
##var x_change = res://objects/other/title/x_change/x_change.tscn
##var x_change2 = res://objects/other/title/x_change2/x_change2.tscn
##var x_end = res://objects/other/title/x_end/x_end.tscn
##var x_moon = res://objects/other/title/x_moon/x_moon.tscn
##var x_scores = res://objects/other/title/x_scores/x_scores.tscn
##var x_shortcut13 = res://objects/other/title/x_shortcut13/x_shortcut13.tscn
##var x_shortcut5 = res://objects/other/title/x_shortcut5/x_shortcut5.tscn
##var x_shortcut9 = res://objects/other/title/x_shortcut9/x_shortcut9.tscn
##var x_stars = res://objects/other/title/x_stars/x_stars.tscn
##var x_start = res://objects/other/title/x_start/x_start.tscn
##var x_sun = res://objects/other/title/x_sun/x_sun.tscn
##var x_title = res://objects/other/title/x_title/x_title.tscn
##var x_tutorial = res://objects/other/title/x_tutorial/x_tutorial.tscn


#traps
##var arrow_repeater_l = res://objects/traps/arrow_repeater_l/arrow_repeater_l.tscn
##var arrow_repeater_r = res://objects/traps/arrow_repeater_r/arrow_repeater_r.tscn
##var arrow_trap_left = res://objects/traps/arrow_trap_left/arrow_trap_left.tscn
##var arrow_trap_left_lit = res://objects/traps/arrow_trap_left_lit/arrow_trap_left_lit.tscn
##var arrow_trap_right = res://objects/traps/arrow_trap_right/arrow_trap_right.tscn
##var arrow_trap_right_lit = res://objects/traps/arrow_trap_right_lit/arrow_trap_right_lit.tscn
##var arrow_trap_test = res://objects/traps/arrow_trap_test/arrow_trap_test.tscn
##var boulder = res://objects/traps/boulder/boulder.tscn
##var ceiling_trap = res://objects/traps/ceiling_trap/ceiling_trap.tscn
##var door = res://objects/traps/door/door.tscn
##var giant_tiki_head = res://objects/traps/giant_tiki_head/giant_tiki_head.tscn
##var smash_trap = res://objects/traps/smash_trap/smash_trap.tscn
##var smash_trap_lit = res://objects/traps/smash_trap_lit/smash_trap_lit.tscn
##var spears_left = res://objects/traps/spears_left/spears_left.tscn
##var spear_trap_bottom = res://objects/traps/spear_trap_bottom/spear_trap_bottom.tscn
##var spear_trap_lit = res://objects/traps/spear_trap_lit/spear_trap_lit.tscn
##var spear_trap_top = res://objects/traps/spear_trap_top/spear_trap_top.tscn
##var spikes = res://objects/traps/spikes/spikes.tscn
##var spring_trap = res://objects/traps/spring_trap/spring_trap.tscn
##var temp = res://objects/traps/temp/temp.tscn
##var thwomp_trap = res://objects/traps/thwomp_trap/thwomp_trap.tscn
##var trap_block = res://objects/traps/trap_block/trap_block.tscn
