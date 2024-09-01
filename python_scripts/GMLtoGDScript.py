import re
import inflection
import os
from pathlib import Path

#import_directory = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation'
#import_directory = input("Enter the import directory: ")

#f = open(r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation\scrLevelGen.gml", "r")
#file_name = os.path.basename(r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation\scrLevelGen.gml")
#file_name = Path(r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation\scrLevelGen.gml").stem

#test_string = f.read()

def add_colon(text):
	return text + ":"

def delete_chars(chars, text):
	new_string = re.sub(chars, "", text)
	return new_string

def simple_substitution(char, new_char, text):
	new_string = re.sub(char, new_char, text)
	return new_string

def match_parentheses_deletion(text):
	new_string = re.sub("match(\()(.+)(\))", r"match \2:", text)
	return new_string

def for_loop_construction(text):
	new_string = re.sub("(for )\((\w+) = (\d+); \w+ [<>] (\d+); \w+ \+= \d+\)", r"\1\2 in range(\3, \4):", text)
	return new_string

def for_loop_construction2(text):
	new_string = re.sub("(for )\((\w+) = (\d+) \w+ [<>] (\d+) \w+ \+= \d+\)", r"\1\2 in range(\3, \4):", text)
	return new_string

def for_loop_construction3(text):
	new_string = re.sub("(for )\((\w+) = (\d+) \w+ [<>]= (\d+) \w+ \+= \d+\)", r"\1\2 in range(\3, \4):", text)
	#print(new_string)
	return new_string

def conditional_closed_position(passed_string):
	string_position = -1
	left_paren = 0
	right_paren = 0
	if passed_string.count("(") == passed_string.count(")") and passed_string.count("(") != 0:
		for char in passed_string:
			string_position +=1
			if char == "(":
				left_paren += 1
			elif char == ")":
				right_paren += 1
				
			if right_paren != 0 and right_paren == left_paren:
				return(string_position + 1)
	else:
		return 0
			
def add_colon_to_statement(string, position):
	string_list = list(string)
	
	string_list.insert(position, ":")
	
	new_string = ''.join(string_list)
	
	return new_string

def add_if_elif_colon(string, text):
	all_statements = re.findall(string, text)
	if all_statements != []:
		for statement in all_statements:
			print(statement)
			string_pos = conditional_closed_position(statement)
			if string_pos > 0:
				colon_added_string = add_colon_to_statement(statement, string_pos)
				new_overall_string = re.sub(re.escape(statement), colon_added_string, text)
				text = new_overall_string
			else:
				if ':' not in statement:
					colon_added_string = statement + ":"
					new_overall_string = re.sub(re.escape(statement), colon_added_string, text)
					text = new_overall_string
		return new_overall_string
	else:
		return text

def find_camel_case_variables_and_convert(text):
	all_camel_case_variables = re.findall("([a-z]+[A-Z]+[A-Za-z]*)", text)
	if all_camel_case_variables != []:
		for variable in all_camel_case_variables:
			print(variable)
			converted_to_snake_case = camel_case_to_snake_case(variable)
			print(converted_to_snake_case)
			new_overall_string = re.sub(re.escape(variable), converted_to_snake_case, text)
			text = new_overall_string
		return new_overall_string
	else:
		return text
		
def camel_case_to_snake_case(string):
	snake_case = inflection.underscore(string)
	return snake_case

#test_closed_pos = conditional_closed_position("if (global.levelType == 3 and rand(1,global.probSacPit) == 1) yo yo yo yo")
#print(test_closed_pos)
#pos_10 = "if (global.levelType == 3 and rand(1,global.probSacPit) == 1) yo yo yo yo"[60]
#add_char_test = add_colon_to_statement("if (global.levelType == 3 and rand(1,global.probSacPit) == 1) yo yo yo yo", 61)
#print(add_char_test)
			
#def handle_file(test_string, file_name):
#dest_folder = input("Enter the output folder: ")
def main_process(input_folder, output_folder):
	for filename in os.listdir(input_folder):
		file = os.path.join(input_folder, filename)
		
		if os.path.isfile(file):
			f = open(file, 'r')
			file_name = os.path.basename(file)
			
			test_string = f.read()

			updated_string = delete_chars("{|}", test_string)
			updated_string = for_loop_construction(updated_string)
			updated_string = for_loop_construction2(updated_string)
			updated_string = delete_chars(";", updated_string)
			updated_string = for_loop_construction3(updated_string)
			updated_string = delete_chars("case ", updated_string)
			#updated_string = delete_chars("global.", updated_string)

			updated_string = simple_substitution("//", "#", updated_string)
			updated_string = simple_substitution("else if", "elif", updated_string)
			updated_string = simple_substitution("rand\(", "randi_range(", updated_string)
			updated_string = simple_substitution("switch", "match", updated_string)
			updated_string = simple_substitution("else", "else:", updated_string)

			updated_string = match_parentheses_deletion(updated_string)

			if_string = "if .+"
			while_string = "while .+"
			updated_string = add_if_elif_colon(if_string, updated_string)
			updated_string = add_if_elif_colon(while_string, updated_string)

			updated_string = find_camel_case_variables_and_convert(updated_string)

			updated_string = delete_chars("o_", updated_string)

			updated_string = simple_substitution("room_pathAbove", "room_path_above", updated_string)
			#updated_string = delete_chars("game.", updated_string)
			
			updated_string = simple_substitution(":+", ":", updated_string)
			updated_string = simple_substitution('global.room_path\[(.+)\]', r'global.room_path[[\1]]' , updated_string)
			updated_string = simple_substitution('(\d:.+)break', r'\1', updated_string)
			updated_string = simple_substitution(r' \bbreak\b', '\nbreak', updated_string)
			updated_string = simple_substitution(r'(\d:  [a-z0-9_]+ = ".+")  ', r'\1', updated_string)
			updated_string = simple_substitution(r'(\d:  [a-z0-9_]+ = ".+") ', r'\1\n', updated_string)
			updated_string = simple_substitution('repeat\((\d+)\)', r'for repetition in range(1, \1):', updated_string)

			updated_string = simple_substitution('background_index = (.+)', r'background_index("\1")', updated_string)
			#updated_string = simple_substitution('with ([a-z_0-9]+)', r'var all_\1s = gml.get_all_instances("\1")\nfor \1_instance in all_\1s:', updated_string)

			updated_string = simple_substitution('tile_add\(([a-z0-9_]+),', r'tile_add("\1",', updated_string)
			updated_string = simple_substitution('collision_point', 'gml.collision_point', updated_string)
			updated_string = simple_substitution('instance_create', 'gml.instance_create', updated_string)
			updated_string = simple_substitution('instance_destroy', 'gml.instance_destroy', updated_string)
			updated_string = simple_substitution('instance_exists', 'gml.instance_exists', updated_string)
			updated_string = simple_substitution('is_room', 'InLevel.is_room', updated_string)
			updated_string = simple_substitution('&gt', '>', updated_string)
			updated_string = simple_substitution('&lt', '<', updated_string)
			updated_string = simple_substitution('scr_create_flame', 'MiscScripts.scr_create_flame', updated_string)
			updated_string = simple_substitution('scr_shopkeeper_anger', 'InLevel.scr_shopkeeper_anger', updated_string)
			updated_string = simple_substitution('dist_t', 'dist_to_', updated_string)
			updated_string = simple_substitution('distance_tobject', 'gml.distance_to_object', updated_string)
			updated_string = simple_substitution('play_sound', 'Audio.play_sound', updated_string)
			updated_string = simple_substitution('is_real_level', 'InLevel.is_real_level', updated_string)
			updated_string = simple_substitution('is_level', 'InLevel.is_level', updated_string)
			updated_string = simple_substitution('stop_all_music', 'Audio.stop_all_music', updated_string)
			updated_string = simple_substitution(r'\bx\b', 'position.x', updated_string)
			updated_string = simple_substitution(r'\by\b', 'position.y', updated_string)

			updated_string = simple_substitution('instance_create\((.*?), (.*?), (.*?)\)', r'instance_create(\1, \2, "\3")', updated_string)
			updated_string = simple_substitution('collision_point\((.*?), (.*?), (.*?),', r'collision_point(\1, \2, "\3",', updated_string)
			updated_string = simple_substitution('collision_rectangle\((.*?), (.*?), (.*?),(.*?), (.*?), (.*?)', r'gml.collision_rectangle(\1, \2, \3, \4, "\5", ', updated_string)
			updated_string = simple_substitution('instance_exists\((.*?)\)', r'instance_exists("\1")', updated_string)
			updated_string = simple_substitution('room_goto\((.*?)\)', r'get_tree().change_scene_to_file("res://\1.tscn")', updated_string)
			updated_string = simple_substitution('scr_clear_globals', r'MiscScripts.scr_clear_globals', updated_string)
			updated_string = simple_substitution('scr_hold_item', r'CharacterScripts.scr_hold_item', updated_string)
			updated_string = simple_substitution('scr_fire_bow', r'CharacterScripts.scr_fire_bow', updated_string)
			updated_string = simple_substitution('move_snap', r'gml.move_snap', updated_string)
			updated_string = simple_substitution('alarm\[(\d*)] = (\d*)', r'alarm_\1(\2)', updated_string)
			updated_string = simple_substitution('scr_shake', r'InLevel.scr_shake', updated_string)
			updated_string = simple_substitution('SS_Is_sound_playing', r'SS.is_sound_playing', updated_string)
			updated_string = simple_substitution('SS_Stop_sound', r'SS.stop_sound', updated_string)
			updated_string = simple_substitution('check_attack_pressed', 'ControlScripts.check_attack_pressed', updated_string)
			updated_string = simple_substitution('check_start_pressed', 'ControlScripts.check_start_pressed', updated_string)
			updated_string = simple_substitution('check_bomb_pressed', 'ControlScripts.check_bomb_pressed', updated_string)
			updated_string = simple_substitution('check_rope_pressed', 'ControlScripts.check_rope_pressed', updated_string)
			updated_string = simple_substitution('check_pay_pressed', 'ControlScripts.check_pay_pressed', updated_string)
			updated_string = simple_substitution('instance_number', 'gml.instance_number', updated_string)
			updated_string = simple_substitution('scr_get_room_x', 'LevelGeneration.scr_get_room_x', updated_string)
			updated_string = simple_substitution('scr_get_room_y', 'LevelGeneration.scr_get_room_y', updated_string)
			updated_string = simple_substitution('scr_steal_item', 'CharacterScripts.scr_steal_item', updated_string)
			updated_string = simple_substitution('instance_place', 'gml.instance_place', updated_string)
			updated_string = simple_substitution('platform_character_is', 'PlatformEngine.platform_character_is', updated_string)
			updated_string = simple_substitution('string\(', 'str\(', updated_string)
			updated_string = simple_substitution('get_kiss_value', 'InLevel.get_kiss_value', updated_string)
			updated_string = simple_substitution('SS_Load_sound\(\"sound\/(.*?)\.(.*)', r'"res://Sounds/\1\2"', updated_string)

			updated_string = simple_substitution('mod', '%', updated_string)
			updated_string = simple_substitution('make_active', 'PlatformEngine.make_active', updated_string)
			updated_string = simple_substitution('set_collision_bounds', 'Collision.set_collision_bounds', updated_string)
			updated_string = simple_substitution('is_in_shop', 'InLevel.is_in_shop', updated_string)
			updated_string = simple_substitution('move_to', 'PlatformEngine.move_to', updated_string)
			updated_string = simple_substitution('is_collision_', 'Collision.is_collision_', updated_string)
			updated_string = simple_substitution('scr_create_blood', 'MiscScripts.scr_create_blood', updated_string)
				
			#dest_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\test folder'
			slash = '\\'
			txt_extension = '.txt'

			if not os.path.exists(output_folder):
				os.makedirs(output_folder)

			write_path = output_folder + slash + file_name + txt_extension

			with open(write_path, 'w') as file:
				file.write(updated_string)

#for filename in os.listdir(import_directory):
#   file = os.path.join(import_directory, filename)
#    
#    if os.path.isfile(file):
#        f = open(file, 'r')
#        file_name = os.path.basename(file)
#        
#        test_string = f.read()