import re
import inflection
import os
import pyperclip

import_file = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\test folder\All Sprites\player 1 all scripts.txt'

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

sprite_folder = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites'

file = open(import_file, 'r')
text = file.read()

matches = re.findall(r'\bs[A-Z]\w*', text)

#print(matches)

converted_matches = []
for match in matches:
    item = str(match)#.removeprefix('s')
    #item = camel_case_to_snake_case(item)
    if item not in converted_matches:
        converted_matches.append(item)

#print(converted_matches)    

sprite_and_folder = {}

for match in converted_matches:
    for root, dirs, files in os.walk(sprite_folder):
            for dir in dirs:
                for file in files:
                    if file == match + str('.xml'):
                        sprite_and_folder[match] = root
                        break
                else:
                    continue
                break

print(sprite_and_folder)

godot_sprite_folder_path = {}

for item in sprite_and_folder:
    converted = item.removeprefix("s")
    converted = camel_case_to_snake_case(converted)
    new_folder = sprite_and_folder[item]
    prefix = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites"
    new_folder = new_folder.removeprefix(prefix)
    new_folder = re.sub(r'\\', '/', new_folder)
    new_folder = "res://sprites/" + camel_case_to_snake_case(new_folder) + "/" + converted
    godot_sprite_folder_path[converted] = new_folder

#print(godot_sprite_folder_path)

#print(godot_sprite_folder_path)
#pyperclip.copy(str(godot_sprite_folder_path))

default_sprite_images = {}
for item in sprite_and_folder:
    lst = os.listdir(sprite_and_folder[item] + "/" + item + ".images")
    number_of_default_sprites = len(lst)
    print(item)
    print(number_of_default_sprites)

    converted = item.removeprefix("s")
    converted = camel_case_to_snake_case(converted)
    default_sprite_images[converted] = []

    for image in range(number_of_default_sprites):
        default_sprite_images[converted].append(converted + "_" + str(image))

#print(default_sprite_images)

text_to_output =f"""@tool
extends Node2D

var sprite_folders = {godot_sprite_folder_path}
var animations_and_frames = {default_sprite_images}

func _ready():
    #--- set up AnimatedSprite2D and default sprite

    var animated_sprite = AnimatedSprite2D.new()
    var sprite_frames = SpriteFrames.new()
    sprite_frames.remove_animation("default")

    for item in animations_and_frames:
        var default_sprite_textures = animations_and_frames[item]

        sprite_frames.add_animation(item)
        sprite_frames.set_animation_speed(item, 30)
        #sprite_frames.set_animation_loop(item, false")

        for texture in default_sprite_textures:
            var sprite_texture = load(sprite_folders[item] + "/" + texture + ".png")
            sprite_frames.add_frame(item, sprite_texture)

    animated_sprite.sprite_frames = sprite_frames
    await get_tree().create_timer(2).timeout
    add_child(animated_sprite)
    animated_sprite.owner = get_tree().edited_scene_root
    animated_sprite.name = "NewAnimatedSprite2D"
    animated_sprite.centered = false
    animated_sprite.z_as_relative = false
    """

pyperclip.copy(text_to_output)