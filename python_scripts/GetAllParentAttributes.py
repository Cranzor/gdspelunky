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

def search_gml_functions(passed_text, file_name):
    gml_functions = []
    gml_functions.append(file_name)
    attributes = re.findall('<([a-zA-Z]+)>([a-zA_Z0-9]+)</[a-zA_Z]', passed_text)
    gml_functions.extend(attributes)
    return gml_functions

def handle_file(passed_file):
    print(passed_file)
    f = open(passed_file, 'r')
    file_name = os.path.basename(file)
    file_text = f.read()
    gml_functions = search_gml_functions(file_text, file_name)
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


all_parents = ['oArrowTrapLeft', 'oArrowTrapRight', 'oCharacter', 'oDetritus', 'oDrawnSprite', 'oEnemy', 'oExit', 'oGoldIdol', 'oItem', 'oLadder', \
               'oLamp', 'oMenu', 'oMoveableSolid', 'oMovingSolid', 'oPlatform', 'oRubblePiece', 'oSacAltarLeft', 'oShopkeeper', 'oSolid', 'oSpearTrapTop', \
                'oTreasure', 'oWater', 'oWhip', 'oWhipPre', 'oXStart']

xml = '.xml'

parent_attributes = []
for object_from_list in all_parents:
    for root, dirs, files in os.walk(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump'):
        for file in files:
            if file.lower().endswith('.xml'):
                #file_path = os.path.abspath(file)
                file_path = os.path.join(root, file)
                file_name = os.path.basename(file)
                current_file_plus_xml = object_from_list + xml
                if file_name == current_file_plus_xml:
                    gml_functions = handle_file(file_path)
                    if gml_functions != []:
                        for item in gml_functions:
                            parent_attributes.append(item)

def write_parent_attributes_to_file(list):
    file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\AllParentAttributes\AllParentAttributes.txt'
    with open(file_path, 'w') as file:
         for line in list:
                file.write(f"{line}\n")
                file.write(f'\n')

file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\AllParentAttributes\AllParentAttributes.txt'

file_directory = r''
write_variables_in_file(parent_attributes, file_path)