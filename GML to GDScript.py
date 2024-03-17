import re
import inflection
import os
from pathlib import Path

import_directory = r'C:\Users\Jesse\Desktop\Dump\Scripts\Level Generation'

#f = open(r"C:\Users\Jesse\Desktop\Dump\Scripts\Level Generation\scrLevelGen.gml", "r")
#file_name = os.path.basename(r"C:\Users\Jesse\Desktop\Dump\Scripts\Level Generation\scrLevelGen.gml")
#file_name = Path(r"C:\Users\Jesse\Desktop\Dump\Scripts\Level Generation\scrLevelGen.gml").stem

#test_string = f.read()

print('hello')

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
    new_string = re.sub("(for )\((\w+) = (\d+); \w+ [<>] (\d); \w+ \+= \d+\)", r"\1\2 in range(\3, \4):", text)
    return new_string

def conditional_closed_position(passed_string):
    string_position = -1
    left_paren = 0
    right_paren = 0
    if passed_string.count("(") == passed_string.count(")") and passed_string.count("(") != 0:
        print(passed_string)
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
            string_pos = conditional_closed_position(statement)
            if string_pos > 0:
                colon_added_string = add_colon_to_statement(statement, string_pos)
                new_overall_string = re.sub(re.escape(statement), colon_added_string, text)
                text = new_overall_string
            else:
                new_overall_string = text
        return new_overall_string
    else:
        return text

def find_camel_case_variables_and_convert(text):
    all_camel_case_variables = re.findall("([a-z]+[A-Z]+[A-Za-z]*)", text)
    if all_camel_case_variables != []:
        for variable in all_camel_case_variables:
            converted_to_snake_case = camel_case_to_snake_case(variable)
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

for filename in os.listdir(import_directory):
   file = os.path.join(import_directory, filename)
   
   if os.path.isfile(file):
        f = open(file, 'r')
        file_name = os.path.basename(file)
        
        test_string = f.read()

        updated_string = delete_chars("{|}", test_string)
        updated_string = for_loop_construction(updated_string)
        updated_string = delete_chars(";", updated_string)
        updated_string = delete_chars("case ", updated_string)
        updated_string = delete_chars("global.", updated_string)

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
        updated_string = delete_chars("game.", updated_string)
        
        updated_string = simple_substitution(":+", ":", updated_string)
            
        dest_folder = r'C:\Users\Jesse\Desktop\test folder'
        slash = '\\'
        txt_extension = '.txt'
        write_path = dest_folder + slash + file_name + txt_extension

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