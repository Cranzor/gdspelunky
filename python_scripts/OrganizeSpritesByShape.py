#This file finds each sprite and puts it into an array based on its shape.

import os
import re
import xml.etree.ElementTree as ET

precise_sprites = []
rectangle_sprites = []
other = []

sprite_folder = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites"

for root, dirs, files in os.walk(sprite_folder):
    for file in files:
        if file.endswith(".xml"):
            current_dir = root
            file_path = os.path.join(current_dir, file)
            file_content = open(file_path, "r")
            file_content_read = file_content.read()

            search = re.search("<shape>(.*)</shape>", file_content_read)

            if search != None:
                if search.group(1) == "RECTANGLE":
                    rectangle_sprites.append(file)
                elif search.group(1) == "PRECISE":
                    precise_sprites.append(file)
                else:
                    other.append(file)

print("RECTANGLE")
print(rectangle_sprites)
print("\nPRECISE")
print(precise_sprites)
print("\nOTHER")
print(other)