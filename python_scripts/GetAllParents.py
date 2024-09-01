import re
import os
import inflection

import_directory = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Scripts\Level Generation'

def delete_chars(chars, text):
    new_string = re.sub(chars, "", text)
    return new_string

def write_variables_in_file(passed_variable_list, file_path):
    if passed_variable_list:
        with open(file_path, 'w') as file:
            for line in passed_variable_list:
                file.write(f"{line}\n")

def put_variables_in_file(passed_variable_list, file_name):
    dest_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\AllParents'
    slash = '\\'
    txt_extension = '.txt'
    write_path = dest_folder + slash + file_name + txt_extension
    write_variables_in_file(passed_variable_list, write_path)

def search_gml_functions(passed_text):
    gml_functions = re.findall('<parent>(.+)</parent>', passed_text)
    gml_functions = list(dict.fromkeys(gml_functions)) # get rid of duplicates
    return gml_functions

def handle_file(passed_file):
    print(passed_file)
    f = open(passed_file, 'r')
    file_name = os.path.basename(file)
    file_text = f.read()
    gml_functions = search_gml_functions(file_text)
    return(gml_functions)
"""     file_text = delete_chars('\)', file_text)
    file_text = delete_chars(',.+', file_text)
    file_text = delete_chars('\[.+', file_text)
    file_text = delete_chars(';', file_text)
    file_text = delete_chars('</+', file_text)
    file_text = delete_chars('-.+', file_text)
    file_text = delete_chars('\>', file_text)
    file_text = delete_chars('\*.+', file_text)
    file_text = delete_chars(',', file_text) """


os.chdir(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump')

all_gml_functions = []
for root, dirs, files in os.walk(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump'):
    for file in files:
        if file.lower().endswith('.xml') or file.lower().endswith('.gml'):
            #file_path = os.path.abspath(file)
            file_path = os.path.join(root, file)
            gml_functions = handle_file(file_path)
            if gml_functions != []:
                for item in gml_functions:
                    all_gml_functions.append(item)

def write_all_gml_functions_to_file(list):
    file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\AllParents\AllParents.txt'
    with open(file_path, 'w') as file:
         for line in list:
                file.write(f"{line}\n")

file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\AllParents\AllParents.txt'

file_directory = r''
all_gml_functions = list(dict.fromkeys(all_gml_functions))
all_gml_functions = sorted(all_gml_functions)
write_variables_in_file(all_gml_functions, file_path)