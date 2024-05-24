extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	#SS.init() --- should not be needed for anything
	
	global.music = true

	global.mus_title = "res://Sounds/titleogg"
	global.mus_cave = "res://Sounds/caveogg"
	global.mus_lush = "res://Sounds/lushogg"
	global.mus_ice = "res://Sounds/iceogg"
	global.mus_temple = "res://Sounds/templeogg"
	global.mus_boss = "res://Sounds/bossogg"
	global.mus_victory = "res://Sounds/victoryogg"
	global.mus_credits = "res://Sounds/creditsogg"

	global.snd_ignite = "res://Sounds/ignitewav"
	global.snd_teleport = "res://Sounds/teleportwav"
	global.snd_jetpack = "res://Sounds/jetpackwav"
	global.snd_whip = "res://Sounds/whipwav"
	global.snd_jump = "res://Sounds/jumpwav"
	global.snd_throw = "res://Sounds/throwwav"
	global.snd_climb1 = "res://Sounds/climb1wav"
	global.snd_climb2 = "res://Sounds/climb2wav"
	global.snd_shotgun = "res://Sounds/shotgunwav"
	global.snd_bow_pull = "res://Sounds/bowpullwav"
	global.snd_steps = "res://Sounds/stepswav"
	global.snd_blink1 = "res://Sounds/blink1wav"
	global.snd_blink2 = "res://Sounds/blink2wav"
	global.snd_hit = "res://Sounds/hitwav"
	global.snd_hurt = "res://Sounds/hurtwav"
	global.snd_die = "res://Sounds/diewav"
	global.snd_coin = "res://Sounds/coinwav"
	global.snd_gem = "res://Sounds/gemwav"
	global.snd_pickup = "res://Sounds/pickupwav"
	global.snd_chest_open = "res://Sounds/chestopenwav"
	global.snd_push = "res://Sounds/pushwav"
	global.snd_mattock_break = "res://Sounds/mattockbreakwav"
	global.snd_trap = "res://Sounds/trapwav"
	global.snd_click = "res://Sounds/clickwav"
	global.snd_break = "res://Sounds/breakwav"
	global.snd_thud = "res://Sounds/thudwav"
	global.snd_thump = "res://Sounds/thumpwav"
	global.snd_crunch = "res://Sounds/crunchwav"
	global.snd_splash = "res://Sounds/splashwav"
	global.snd_flame = "res://Sounds/flamewav"
	global.snd_explosion = "res://Sounds/explosionwav"
	global.snd_arrow_trap = "res://Sounds/arrowtrapwav"
	global.snd_boing = "res://Sounds/boingwav"
	global.snd_damsel = "res://Sounds/damselwav"
	global.snd_kiss = "res://Sounds/kisswav"
	global.snd_ghost = "res://Sounds/ghostwav"
	global.snd_bat = "res://Sounds/batwav"
	global.snd_giant_spider = "res://Sounds/giantspiderwav"
	global.snd_spider_jump = "res://Sounds/spiderjumpwav"
	global.snd_frog = "res://Sounds/frogwav"
	global.snd_zombie = "res://Sounds/zombiewav"
	global.snd_monkey = "res://Sounds/monkeywav"
	global.snd_alert = "res://Sounds/alertwav"
	global.snd_caveman_die = "res://Sounds/cavemandiewav"
	global.snd_alien = "res://Sounds/alienwav"
	global.snd_laser = "res://Sounds/laserwav"
	global.snd_laserCharge = "res://Sounds/laserchargewav"
	global.snd_small_explode = "res://Sounds/smallexplodewav"
	global.snd_psychic = "res://Sounds/psychicwav"
	global.snd_yeti_yell = "res://Sounds/yetiyellwav"
	global.snd_big_jump = "res://Sounds/bigjumpwav"
	global.snd_slam = "res://Sounds/slamwav"
	global.snd_p_fall = "res://Sounds/pfallwav"
	global.snd_t_fall = "res://Sounds/tfallwav"

func game_end():
	#SS_Unload --- called when game ends. not needed for Godot
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
