extends Node

var sounds = ['title.ogg', 'cave.ogg', 'lush.ogg', 'ice.ogg', 'temple.ogg', 'boss.ogg', 'victory.ogg', 'credits.ogg', 'ignite.wav', 'teleport.wav', 'jetpack.wav', 'whip.wav', 'jump.wav', 'throw.wav',
				'climb1.wav', 'climb2.wav', 'shotgun.wav', 'bowpull.wav', 'steps.wav', 'blink1.wav', 'blink2.wav', 'hit.wav', 'hurt.wav', 'die.wav', 'coin.wav', 'gem.wav', 'pickup.wav', 'chestopen.wav',
				'push.wav', 'mattockbreak.wav', 'trap.wav', 'click.wav', 'break.wav', 'thud.wav', 'thump.wav', 'crunch.wav', 'splash.wav', 'flame.wav', 'explosion.wav', 'arrowtrap.wav',
				'boing.wav', 'damsel.wav', 'kiss.wav', 'ghost.wav', 'bat.wav', 'giantspider.wav', 'spiderjump.wav', 'frog.wav', 'zombie.wav', 'monkey.wav', 'alert.wav', 'cavemandie.wav', 'alien.wav',
				'laser.wav', 'lasercharge.wav', 'smallexplode.wav', 'psychic.wav', 'yetiyell.wav', 'bigjump.wav', 'slam.wav', 'pfall.wav', 'tfall.wav']

# Called when the node enters the scene tree for the first time.
func _ready():
	#SS.init() --- should not be needed for anything
	
	global.music = true

	global.mus_title = $title_ogg
	global.mus_cave = $cave_ogg
	global.mus_lush = $lush_ogg
	global.mus_ice = $ice_ogg
	global.mus_temple = $temple_ogg
	global.mus_boss = $boss_ogg
	global.mus_victory = $victory_ogg
	global.mus_credits = $credits_ogg

	global.snd_ignite = $ignite_wav
	global.snd_teleport = $teleport_wav
	global.snd_jetpack = $jetpack_wav
	global.snd_whip = $whip_wav
	global.snd_jump = $jump_wav
	global.snd_throw = $throw_wav
	global.snd_climb1 = $climb1_wav
	global.snd_climb2 = $climb2_wav
	global.snd_shotgun = $shotgun_wav
	global.snd_bow_pull = $bowpull_wav
	global.snd_steps = $steps_wav
	global.snd_blink1 = $blink1_wav
	global.snd_blink2 = $blink2_wav
	global.snd_hit = $hit_wav
	global.snd_hurt = $hurt_wav
	global.snd_die = $die_wav
	global.snd_coin = $coin_wav
	global.snd_gem = $gem_wav
	global.snd_pickup = $pickup_wav
	global.snd_chest_open = $chestopen_wav
	global.snd_push = $push_wav
	global.snd_mattock_break = $mattockbreak_wav
	global.snd_trap = $trap_wav
	global.snd_click = $click_wav
	global.snd_break = $break_wav
	global.snd_thud = $thud_wav
	global.snd_thump = $thump_wav
	global.snd_crunch = $crunch_wav
	global.snd_splash = $splash_wav
	global.snd_flame = $flame_wav
	global.snd_explosion = $explosion_wav
	global.snd_arrow_trap = $arrowtrap_wav
	global.snd_boing = $boing_wav
	global.snd_damsel = $damsel_wav
	global.snd_kiss = $kiss_wav
	global.snd_ghost = $ghost_wav
	global.snd_bat = $bat_wav
	global.snd_giant_spider = $giantspider_wav
	global.snd_spider_jump = $spiderjump_wav
	global.snd_frog = $frog_wav
	global.snd_zombie = $zombie_wav
	global.snd_monkey = $monkey_wav
	global.snd_alert = $alert_wav
	global.snd_caveman_die = $cavemandie_wav
	global.snd_alien = $alien_wav
	global.snd_laser = $laser_wav
	global.snd_laser_charge = $lasercharge_wav
	global.snd_small_explode = $smallexplode_wav
	global.snd_psychic = $psychic_wav
	global.snd_yeti_yell = $yetiyell_wav
	global.snd_big_jump = $bigjump_wav
	global.snd_slam = $slam_wav
	global.snd_p_fall = $pfall_wav
	global.snd_t_fall = $tfall_wav

func game_end():
	#SS_Unload --- called when game ends. not needed for Godot
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func script():
	for sound in sounds:
		var audio_node = AudioStreamPlayer.new()
		audio_node.name = sound
		audio_node.stream = load("res://Sounds/" + sound)
		add_child(audio_node)
		audio_node.owner = get_tree().edited_scene_root

func _on_button_button_down():
	script()
	print('done')
