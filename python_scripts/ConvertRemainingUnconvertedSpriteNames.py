#For some reason, some sprite names did not get converted correctly at some point in the process.
#This script is to convert the remaining ones to make correctly renaming them easier.

import inflection
import os
import re

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

def trim_leading_letter(word, letter):
    word = word.removeprefix(letter)
    return(word)

def handle_word(word, letter):
    word = trim_leading_letter(word, letter)
    word = camel_case_to_snake_case(word)
    return word

sprite_name_list = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\RemainingUnconvertedSpriteNames.txt"

""" with open(sprite_name_list) as topo_file:
    for line in topo_file:
        converted_name = handle_word(line.strip(), "s")
        print(converted_name) """

folder_path = r"C:\Users\Jesse\Desktop\H&C2\game dev\Spelunky Port\sprites\enemies\yeti_king\sYetiKingYellR"
files = os.listdir(folder_path)

old_string = "sYetiKingYellR"
new_string = "yeti_king_yell_r"

for file in files:
    file_name = file
    new_name = re.sub(old_string, new_string, file_name)

    old_file_path = os.path.join(folder_path, file_name)
    new_file_path = os.path.join(folder_path, new_name)

    os.rename(old_file_path, new_file_path)
    print(new_file_path)