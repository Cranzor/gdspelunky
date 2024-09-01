import os
import inflection

#sprite_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\test folder\objects (snake case)'
sprite_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\test folder\sprites'

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

""" for root, dirs, files in os.walk(sprite_folder):
        for dir in dirs:
              location = root + '\\' + dir

              new_folder_name = dir.removeprefix('s')
              new_folder_name = camel_case_to_snake_case(new_folder_name)
              #new_folder_name = dir.removesuffix(".events")
              new_folder_name = new_folder_name.removesuffix(".images")
              new_location = root + '\\' + new_folder_name

              os.rename(location, new_location) """

""" def remove_xml_files(sprite_folder):
  for root, dirs, files in os.walk(sprite_folder):
    for file in files:
      if file.endswith(".xml"):
        try:
          os.remove(os.path.join(root, file))
        except OSError as e:
          print(e.errno)

remove_xml_files(sprite_folder) """

def rename_sprite_files(sprite_folder):
  for root, dirs, files in os.walk(sprite_folder):
    for file in files:
      old_file_name = str(file).removeprefix("image ")
      folder_name = os.path.basename(root)
      if file.endswith(".png"):
        new_file_name = str(folder_name) + "_" + str(old_file_name)
        print(new_file_name)



        os.rename(str(root + "\\" + file), root + "\\" + new_file_name)

rename_sprite_files(sprite_folder)