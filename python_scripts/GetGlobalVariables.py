import re
import os
import inflection

import_directory = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation'

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

def delete_chars(chars, text):
    new_string = re.sub(chars, "", text)
    return new_string

def write_variables_in_file(passed_variable_list, file_path):
    if passed_variable_list:
        with open(file_path, 'w') as file:
            for line in passed_variable_list:
                file.write(f"{line}\n")
            file.write('\n*---------snake_case---------*\n')
            for line in passed_variable_list:
                snake_case_line = camel_case_to_snake_case(line)
                file.write(f"{snake_case_line}\n")
            file.write('\n*---------non-global---------*\n')
            for line in passed_variable_list:
                add_var = "var "
                snake_case_line = camel_case_to_snake_case(line)
                snake_case_line = add_var + snake_case_line
                snake_case_line = delete_chars('global.', snake_case_line)
                file.write(f"{snake_case_line}\n")

def put_variables_in_file(passed_variable_list, file_name):
    dest_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\GlobalVariableDump'
    slash = '\\'
    txt_extension = '.txt'
    write_path = dest_folder + slash + file_name + txt_extension
    write_variables_in_file(passed_variable_list, write_path)

def search_global_variables(passed_text):
    global_variables = re.findall('(global\.\S+)', passed_text)
    global_variables = list(dict.fromkeys(global_variables)) # get rid of duplicates
    return global_variables

def handle_file(passed_file):
    print(passed_file)
    f = open(passed_file, 'r')
    file_name = os.path.basename(file)
    file_text = f.read()
    file_text = delete_chars('\)', file_text)
    file_text = delete_chars(',.+', file_text)
    file_text = delete_chars('\[.+', file_text)
    file_text = delete_chars(';', file_text)
    file_text = delete_chars('</+', file_text)
    file_text = delete_chars('-.+', file_text)
    file_text = delete_chars('\>', file_text)
    file_text = delete_chars('\*.+', file_text)
    file_text = delete_chars(',', file_text)
    global_variables = search_global_variables(file_text)
    return(global_variables)

for filename in os.listdir(import_directory):
   file = os.path.join(import_directory, filename)
   file_name = os.path.basename(file)
   
   if os.path.isfile(file):
        if file.lower().endswith('.gml'):
            global_variables = handle_file(file)
            put_variables_in_file(global_variables, file_name)

os.chdir(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump')

all_global_variables = []
for root, dirs, files in os.walk(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump'):
    for file in files:
        if file.lower().endswith('.xml') or file.lower().endswith('.gml'):
            #file_path = os.path.abspath(file)
            file_path = os.path.join(root, file)
            global_variables = handle_file(file_path)
            if global_variables != []:
                for item in global_variables:
                    all_global_variables.append(item)

def write_all_global_variables_to_file(list):
    file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\GlobalVariableDump\AllVariables\AllVariables.txt'
    with open(file_path, 'w') as file:
         for line in list:
                file.write(f"{line}\n")

file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\GlobalVariableDump\AllVariables\AllVariables.txt'

file_directory = r''
all_global_variables = list(dict.fromkeys(all_global_variables))
all_global_variables = sorted(all_global_variables)
write_variables_in_file(all_global_variables, file_path)