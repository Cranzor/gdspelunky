import os
import inflection
import re
from PIL import Image
import pyperclip
import GMLtoGDScript
import textwrap

object_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Objects'
sprite_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites'

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

def get_default_sprite():
    pass

def get_sprite_size():
    pass

def get_all_groups():
    pass

def get_object_depth():
    pass

#object_test_string = 'oBat.xml'
object_test_string = input()
working_folder = ''

object_snake_case = object_test_string.removeprefix('o')
object_snake_case = object_snake_case.removesuffix('.xml')
object_snake_case = camel_case_to_snake_case(object_snake_case)
print(object_snake_case)

groups = []
groups.append(object_snake_case)

for root, dirs, files in os.walk(object_folder):
        for dir in dirs:
            for file in files:
                 if file == object_test_string:
                      working_folder = root
                      break
            else:
                 continue
            break

object_file = open(working_folder + ('\\') + object_test_string, 'r')
object_events_folder_path = working_folder + ('\\') + object_test_string.removesuffix('.xml') + str('.events')
post_conversion_file_name = object_test_string.removeprefix('o')
object_events_conversion_output_path = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\test folder\Objects" + ('\\') + post_conversion_file_name.removesuffix('.xml')
print(object_events_conversion_output_path)
print(object_events_folder_path)
object_file_text = object_file.read()
sprite_group = re.search('<sprite>(.*)<\/sprite>', object_file_text)
if sprite_group != None:
    sprite = sprite_group.group(1)
else:
     sprite = ""
sprite_folder_name = sprite + '.images'

depth_group = re.search('<depth>(.*)<\/depth>', object_file_text)
depth = depth_group.group(1)

parent_group = re.search('<parent>(.*)<\/parent>', object_file_text)
if parent_group:
    parent = parent_group.group(1)
else:
     parent = ''


sprite_root = ''
for root, dirs, files in os.walk(sprite_folder):
        for dir in dirs:
           if dir == sprite_folder_name:
                sprite_root = root

sprite_path = sprite_root + '\\' + sprite_folder_name
print(sprite_path)

if sprite != "":
    lst = os.listdir(sprite_path)
    number_of_default_sprites = len(lst)
    print(number_of_default_sprites)

    default_sprite_image_name_path = sprite_path + '\\image 0.png'
    print(default_sprite_image_name_path)
    with Image.open(default_sprite_image_name_path) as img:
        width, height = img.size
else:
     width = 0
     height = 0
    
xml_suffix = '.xml'

parent_file = parent + xml_suffix

def search_object_folder_for_file(file_name):
     for root, dirs, files in os.walk(object_folder):
        for dir in dirs:
            for file in files:
                 if file == file_name:
                      return root
                      break
            else:
                 continue
            break

def get_parent(folder, object):
    dest_file = open(folder + ('\\') + object, 'r')

    object_file_text = dest_file.read()
    parent_group_1 = re.search('<parent>(.*)<\/parent>', object_file_text)
    if parent_group_1 != None:   
        parent = parent_group_1.group(1)
        return parent
    else:
         return ''

def create_file_name_from_object(object):
     xml_suffix = '.xml'
     return object + xml_suffix

last_parent = parent
print(last_parent)

last_parent_snake_case = last_parent.removeprefix('o')
last_parent_snake_case = camel_case_to_snake_case(last_parent_snake_case)
groups.append(last_parent_snake_case)

while last_parent != '':
     last_parent_file = create_file_name_from_object(last_parent)
     last_parent_folder = search_object_folder_for_file(last_parent_file)
     last_parent_parent = get_parent(last_parent_folder, last_parent_file)
     last_parent = last_parent_parent
     print(last_parent)
     if last_parent == '':
          break
     else:
          last_parent_snake_case = last_parent.removeprefix('o')
          last_parent_snake_case = camel_case_to_snake_case(last_parent_snake_case)
          groups.append(last_parent_snake_case)

parent_working_folder = search_object_folder_for_file(parent_file)

print(groups)

if sprite != "":
    godot_sprite_folder_path = default_sprite_image_name_path.removeprefix(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites')


    sprite_snake_case = sprite_folder_name.removeprefix('s')
    sprite_snake_case = camel_case_to_snake_case(sprite_snake_case)
    print(sprite_snake_case)

    godot_sprite_folder_path = re.sub(sprite_folder_name, sprite_snake_case, godot_sprite_folder_path)
    print(godot_sprite_folder_path)

    godot_sprite_folder_path = "res://sprites" + godot_sprite_folder_path
    godot_sprite_folder_path = re.sub(r'\\', '/', godot_sprite_folder_path)
    godot_sprite_folder_path = godot_sprite_folder_path.removesuffix(r'/image 0.png')
    godot_sprite_folder_path = godot_sprite_folder_path.lower()
    godot_sprite_folder_path = godot_sprite_folder_path.removesuffix(r'.images')

    default_sprite_images = []
    for image in range(number_of_default_sprites):
        default_sprite_images.append(sprite_snake_case.removesuffix(".images") + "_" + str(image))

else:
     default_sprite_images = []
     sprite_snake_case = ""
     godot_sprite_folder_path = ""

extension = "extends Node2D"
base_parent = groups[1]

if base_parent != "":
     extension = "extends " + str(base_parent)

text_to_output = f"""@tool
{extension}

func initial_setup():
    #--- set size
    object_size = Vector2({width}, {height})

    #--- set depth
    depth = -{depth}
    z_index = depth
    
    #sprite_index = "{sprite_snake_case.removesuffix(".images")}"
    #{base_parent}_create()
    #{base_parent}_step()

func _ready():
    initial_setup()
    #create()
    #--- set up AnimatedSprite2D and default sprite

    var animated_sprite = AnimatedSprite2D.new()
    var sprite_frames = SpriteFrames.new()

    var default_sprite_textures = {default_sprite_images}

    sprite_frames.add_animation("{sprite_snake_case.removesuffix(".images")}")
    sprite_frames.set_animation_speed("{sprite_snake_case.removesuffix(".images")}", 30)
    #sprite_frames.set_animation_loop("{sprite_snake_case.removesuffix(".images")}, false")
    sprite_frames.remove_animation("default")

    for texture in default_sprite_textures:
        var sprite_texture = load("{godot_sprite_folder_path}" + "/" + texture + ".png")
        sprite_frames.add_frame("{sprite_snake_case.removesuffix(".images")}", sprite_texture)

    animated_sprite.sprite_frames = sprite_frames
    await get_tree().create_timer(2).timeout
    add_child(animated_sprite)
    animated_sprite.owner = get_tree().edited_scene_root
    animated_sprite.name = "AnimatedSprite2D"
    animated_sprite.centered = false
    animated_sprite.z_as_relative = false
    animated_sprite.z_index = depth
    #animated_sprite.add_to_group("animated_sprite", true)
    # --- incorporate sprite origin! ***************************************************

    #--- add groups

    var groups = {groups}

    for group in groups:
        add_to_group(group, true)

#func _physics_process(delta):
#    step()
"""

print(text_to_output)
pyperclip.copy(text_to_output)

GMLtoGDScript.main_process(object_events_folder_path, object_events_conversion_output_path)

object_scripts_dict = {}
if os.path.exists(object_events_folder_path):
    for filename in os.listdir(object_events_conversion_output_path):
        file = os.path.join(object_events_conversion_output_path, filename)
        if os.path.isfile(file):
            print(file)
            script_name = file.removeprefix((object_events_conversion_output_path) + ('\\'))
            script_name = script_name.removesuffix('.xml.txt')
            script_name = camel_case_to_snake_case(script_name)
            print(script_name)
            actual_file = open(file, 'r')
            script_content = actual_file.read()
            object_scripts_dict[script_name] = script_content

    for script in object_scripts_dict:
        text_to_output = text_to_output + f"""

#func {script}():
    {textwrap.indent(object_scripts_dict[script], "#    ")}
    """
    pyperclip.copy(text_to_output)
