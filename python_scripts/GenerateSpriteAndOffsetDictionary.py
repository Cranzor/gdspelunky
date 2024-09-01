import os
import inflection
import re
import pyperclip

sprite_directory = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites'
sprites_and_offsets = {}

def camel_case_to_snake_case(string):
	snake_case = inflection.underscore(string)
	return snake_case

def remove_s_prefix(sprite_name):
     sprite_name = re.sub('^s', '', sprite_name)
     return sprite_name

def remove_xml_suffix(sprite_name):
     pass

def get_sprite_offset(file_path):
     file = open(file_path, 'r')
     file_text = file.read()
     #print(file_text)

     search = re.search('<origin x="(\d*)" y="(\d*)"', file_text)
     x = search.group(1)
     y = search.group(2)
    
     offset = (-int(x), -int(y))
     return(offset)

for root, dirs, files in os.walk(sprite_directory):
    for file in files:
        if file.endswith(".xml"):
             file_path = os.path.join(root, file)
             #search = re.search('s[A-Z][A-Za-z]*')
             search_result = re.search('s[A-Z][A-Za-z0-9]*', file_path)
             if search_result != None:
                  search_result = search_result.group(0)
                  offset = get_sprite_offset(file_path)
                  
                  sprite = remove_s_prefix(search_result)
                  sprite = camel_case_to_snake_case(sprite)
                  
                  sprites_and_offsets[sprite] = offset

""" for sprite in sprites_array:
     sprite = remove_s_prefix(sprite)
     sprite = camel_case_to_snake_case(sprite)
     print(sprite) """

#print(sprites_and_offsets)
sprites_and_offsets_string = str(sprites_and_offsets)
sprites_and_offsets_string = re.sub('\(', 'Vector2(', sprites_and_offsets_string)
print(sprites_and_offsets_string)
pyperclip.copy(sprites_and_offsets_string)