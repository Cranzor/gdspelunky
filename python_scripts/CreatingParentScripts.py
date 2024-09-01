import os
import re

dump_location = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\ParentScripts'

def handle_file(passed_file):
    print(passed_file)
    f = open(passed_file, 'r')
    file_name = os.path.basename(file)
    file_text = f.read()
    return(file_text)

def get_new_file_path(passed_file):
    new_file_path = dump_location + str('\\') + str(passed_file)
    print(new_file_path)
    new_file_path = re.sub('.xml', '.gd', new_file_path)
    new_file_path = re.sub(r'o([A-Z].+\.gd)', r'\1', new_file_path)
    return new_file_path

os.chdir(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump')


all_parents = ['oArrowTrapLeft', 'oArrowTrapRight', 'oCharacter', 'oDetritus', 'oDrawnSprite', 'oEnemy', 'oExit', 'oGoldIdol', 'oItem', 'oLadder', \
               'oLamp', 'oMenu', 'oMoveableSolid', 'oMovingSolid', 'oPlatform', 'oRubblePiece', 'oSacAltarLeft', 'oShopkeeper', 'oSolid', 'oSpearTrapTop', \
                'oTreasure', 'oWater', 'oWhip', 'oWhipPre', 'oXStart']

xml = '.xml'

for object_from_list in all_parents:
    for root, dirs, files in os.walk(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump'):
        for file in files:
            parent_attributes = []
            if file.lower().endswith('.xml'):
                #file_path = os.path.abspath(file)
                file_path = os.path.join(root, file)
                file_name = os.path.basename(file)
                current_file_plus_xml = object_from_list + xml
                if file_name == current_file_plus_xml:
                    new_file_path = get_new_file_path(os.path.basename(file))
                    parent_text = handle_file(file_path)
                    with open(new_file_path, 'a+') as file:
                        object_from_list = re.sub(r'o([A-Z].+)', r'\1', object_from_list)
                        file.write(str('class_name ') + str(object_from_list) + str('\n\n'))
                    for line in parent_text.splitlines():

                        tag = []
                        tag = re.findall('<([a-z]+)>([a-zA-Z0-9]+)', line)

                        if tag == []:
                            tag = re.findall('<([a-z]+)\/>', line)
                        
                        if tag != []:
                            #print(tag[0][0])
                            #print(len(tag[0]))
                            if len(tag[0]) == 2:
                                print(str(tag[0][0]) + str(' = ') + str(tag[0][1]))
                                with open(new_file_path, 'a+') as file:
                                    file.write(str(tag[0][0]) + str(' = ') + str(tag[0][1]) + str('\n'))
                            else:
                                print(tag)
                                with open(new_file_path, 'a+') as file:
                                    file.write(str(tag[0]) + str('\n'))
                                
