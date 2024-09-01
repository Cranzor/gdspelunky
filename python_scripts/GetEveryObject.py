import os
import inflection
import re

#import_directory = input("Enter the import directory: ")
import_directory = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Objects"
main_folder_path = f"C:\\Users\\Jesse\\Desktop\\H&C2\\programming\\Spelunky Godot Porting Scripts\\Dump\\Objects"

objects_and_folder = {}

def camel_case_to_snake_case(string):
	snake_case = inflection.underscore(string)
	return snake_case

def create_godot_folder(folder, object):
     folder = folder.removeprefix(main_folder_path)
     folder = camel_case_to_snake_case(folder)
     folder = folder.removeprefix("\\")
     folder = re.sub(r"\\", "/", folder)
     folder = "res://objects/" + folder + "/" + object + "/" + object + ".tscn"
     #print(folder)
     return folder

def print_every_object(x):
    for root, dirs, files in os.walk(import_directory):
            for dir in dirs:
                object = re.findall('(o.*?\.events)', dir)
                if object != None and object != []:
                    folder_name_only = root.removeprefix(main_folder_path)
                    if folder_name_only == '':
                        folder_name_only = 'Objects'

                    folder_name_only = folder_name_only.removeprefix(f"\\")
                    folder_name_only = camel_case_to_snake_case(folder_name_only)
                    if folder_name_only not in objects_and_folder:
                         objects_and_folder[folder_name_only] = []
                         object_string = object[0]
                         object_string = object_string.removeprefix("o")
                         object_string = object_string.removesuffix(".events")
                         object_string = camel_case_to_snake_case(object_string)
                         #objects_and_folder[folder_name_only].append(object_string)
                         godot_folder = create_godot_folder(root, object_string)

                         single_object_and_godot_folder = [object_string, godot_folder]
                         objects_and_folder[folder_name_only].append(single_object_and_godot_folder)
                    else:
                        object_string = object[0]
                        object_string = object_string.removeprefix("o")
                        object_string = object_string.removesuffix(".events")
                        object_string = camel_case_to_snake_case(object_string)
                        #objects_and_folder[folder_name_only].append(object_string)
                        godot_folder = create_godot_folder(root, object_string)

                        single_object_and_godot_folder = [object_string, godot_folder]
                        objects_and_folder[folder_name_only].append(single_object_and_godot_folder)

                        #print(str(object) + str(' ') + str(x))
                        #print(root)
                        x+=1

x = 0
print_every_object(x)
#print(objects_and_folder)

for folder in objects_and_folder:
     print("#" + folder)
     for object in objects_and_folder[folder]:
          print("var " + (object[0]) + f" = preload('{object[1]}')")
     print("\n")