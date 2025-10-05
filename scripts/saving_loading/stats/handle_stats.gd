extends Node


var base_text: String = \
"+---------------------------+
|  SPELUNKY EXTENDED STATS  |
+---------------------------+

CRATES OPENED:      {crates_opened}
CHESTS OPENED:      {chests_opened}

IDOLS GRABBED:      {idols_grabbed}
IDOLS CONVERTED:    {idols_converted}

DAMSELS GRABBED:    {damsels_grabbed}
KISSES BOUGHT:      {kisses_bought}
DAMSELS BOUGHT:     {damsels_bought}
DAMSELS SAVED:      {damsels_saved}
DAMSELS KILLED:     {damsels_killed}

ITEMS BOUGHT:       {items_bought}
ITEMS STOLEN:       {items_stolen}

DICE GAMES PLAYED:  {dice_games_played}
DICE GAMES WON:     {dice_games_won}
DICE GAMES LOST:    {dice_games_lost}

LEVEL        DEATHS
------------+------------
 1          | {level_1_deaths}
 2          | {level_2_deaths}
 3          | {level_3_deaths}
 4          | {level_4_deaths}
 5          | {level_5_deaths}
 6          | {level_6_deaths}
 7          | {level_7_deaths}
 8          | {level_8_deaths}
 9          | {level_9_deaths}
 10         | {level_10_deaths}
 11         | {level_11_deaths}
 12         | {level_12_deaths}
 13         | {level_13_deaths}
 14         | {level_14_deaths}
 15         | {level_15_deaths}
 16         | {level_16_deaths}
------------+------------
 TOTAL      | {total_deaths}

ENEMY        DEATHS
------------+------------
 {bat_deaths}
 {snake_deaths}
 {spider_deaths}
 {g._spider_deaths}
 {caveman_deaths}
 {skeleton_deaths}
 {zombie_deaths}
 {vampire_deaths}
 {frog_deaths}
 {fire_frog_deaths}
 {mantrap_deaths}
 {piranha_deaths}
 {megamouth_deaths}
 {yeti_deaths}
 {yeti_king_deaths}
 {alien_deaths}
 {ufo_deaths}
 {alien_boss_deaths}
 {hawkman_deaths}
 {shopkeeper_deaths}
 {tomb_lord_deaths}
 {magma_man_deaths}
 {olmec_deaths}
 {ghost_deaths}

MISC         DEATHS
------------+------------
 {rock_deaths}
 {explosion_deaths}
 {crushed_deaths}
 {long_fall_deaths}
 {spikes_deaths}
 {boulder_deaths}
 {arrow_trap_deaths}
 {spear_trap_deaths}
 {smash_trap_deaths}
 {ceiling_t._deaths}
 {pit_deaths}
 {lava_deaths}

ENEMY        KILLS
------------+------------
 {bat_kills}
 {snake_kills}
 {spider_kills}
 {g._spider_kills}
 {caveman_kills}
 {skeleton_kills}
 {zombie_kills}
 {vampire_kills}
 {frog_kills}
 {fire_frog_kills}
 {mantrap_kills}
 {piranha_kills}
 {megamouth_kills}
 {yeti_kills}
 {yeti_king_kills}
 {alien_kills}
 {ufo_kills}
 {alien_boss_kills}
 {hawkman_kills}
 {shopkeeper_kills}
 {tomb_lord_kills}
 {olmec_kills}
------------+------------
 TOTAL      | {total_kills}
"

var top_stats: Dictionary = {
	"crates_opened" : "total_crates",
	"chests_opened" : "total_chests",
	"idols_grabbed" : "idols_grabbed",
	"idols_converted" : "idols_converted",
	"damsels_grabbed" : "damsels_grabbed",
	"kisses_bought" : "kisses_bought",
	"damsels_bought" : "damsels_bought",
	"damsels_saved" : "damsels_saved_total",
	"damsels_killed" : "damsels_killed_total",
	"items_bought" : "items_bought",
	"items_stolen" : "items_stolen",
	"dice_games_played" : "dice_games_played",
	"dice_games_won" : "dice_games_won",
	"dice_games_lost" : "dice_games_lost"
}

var enemies: Array = [
	"bat",
	"snake",
	"spider",
	"g._spider",
	"caveman",
	"skeleton",
	"zombie",
	"vampire",
	"frog",
	"fire_frog",
	"mantrap",
	"piranha",
	"megamouth",
	"yeti",
	"yeti_king",
	"alien",
	"ufo",
	"alien_boss",
	"hawkman",
	"shopkeeper",
	"tomb_lord",
	"olmec",
	"magma_man", # moved magma_man after olmec as these last two aren't found in killed enemies section
	"ghost"
]

var misc: Array = [
	"rock",
	"explosion",
	"crushed",
	"long_fall",
	"spikes",
	"boulder",
	"arrow_trap",
	"spear_trap",
	"smash_trap",
	"ceiling_t.",
	"pit",
	"lava"
]


func format_text() -> String:
	# top stats
	var formatted_text: String = base_text
	var combined_dictionary: Dictionary = generate_dictionary()
	var output_dictionary: Dictionary = combined_dictionary.duplicate()
	
	for entry: String in combined_dictionary:
		# enemy deaths
		output_dictionary = create_formatted_output_strings(entry, output_dictionary, "_deaths", enemies)
		# misc deaths
		output_dictionary = create_formatted_output_strings(entry, output_dictionary, "_deaths", misc)
		# enemy kills
		output_dictionary = create_formatted_output_strings(entry, output_dictionary, "_kills", enemies)
	
	formatted_text = formatted_text.format(output_dictionary)
	return formatted_text


func create_formatted_output_strings(entry: String, output_dictionary: Dictionary, suffix: String, type: Array):
	if entry.trim_suffix(suffix) in type:
		var output_string: String
		var value: int = output_dictionary[entry]
		if value == 0: output_string = ("???")
		else: output_string = entry.trim_suffix(suffix).to_upper().replace("_", " ")
		output_string = output_string.rpad(11) + "| " + str(value)
		output_dictionary[entry] = output_string
		return output_dictionary
	return output_dictionary


func generate_dictionary() -> Dictionary:
	var combined_dictionary: Dictionary
	
	# top stats
	for entry: String in top_stats:
		var value: int = global.get(top_stats[entry])
		combined_dictionary[entry] = value
	
	# level deaths
	var total_deaths: int = 0
	for i in range(0, 16):
		var num_of_deaths = global.level_deaths[i]
		var level_string: String = "level_" + str(i + 1) + "_deaths"
		combined_dictionary[level_string] = num_of_deaths
		total_deaths += num_of_deaths
	combined_dictionary["total_deaths"] = total_deaths

	# enemy deaths
	for i in enemies.size():
		var enemy_name: String = enemies[i]
		var enemy_entry: String = enemy_name + "_deaths"
		combined_dictionary[enemy_entry] = global.enemy_deaths[i]
	
	# misc deaths
	for i in misc.size():
		var misc_name: String = misc[i]
		var misc_entry: String = misc_name + "_deaths"
		combined_dictionary[misc_entry] = global.misc_deaths[i]
	
	# enemy kills
	var total_kills: int = 0
	for i in enemies.size() - 2:
		var enemy_kills = global.enemy_kills[i]
		var enemy_name: String = enemies[i]
		var enemy_entry: String = enemy_name + "_kills"
		combined_dictionary[enemy_entry] = enemy_kills
		total_kills += enemy_kills
	combined_dictionary["total_kills"] = total_kills

	return combined_dictionary


func set_values_from_stats(stats: Dictionary) -> void:
	# top stats
	for entry: String in top_stats:
		var value: int = stats[entry]
		global.set(top_stats[entry], value)
	
	# level deaths
	for i in range(0, 16):
		var level_string: String = "level_" + str(i + 1) + "_deaths"
		var value: int = stats[level_string]
		global.level_deaths[i] = value

	# enemy deaths
	for i in enemies.size():
		var enemy_name: String = enemies[i]
		var enemy_entry: String = enemy_name + "_deaths"
		var value: int = stats[enemy_entry]
		global.enemy_deaths[i] = value
	
	# misc deaths
	for i in misc.size():
		var misc_name: String = misc[i]
		var misc_entry: String = misc_name + "_deaths"
		var value: int = stats[misc_entry]
		global.misc_deaths[i] = value
	
	# enemy kills
	var total_kills: int = 0
	for i in enemies.size() - 2:
		var enemy_name: String = enemies[i]
		var enemy_entry: String = enemy_name + "_kills"
		var value: int = stats[enemy_entry]
		global.enemy_kills[i] = value
