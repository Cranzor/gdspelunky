#This script is intended to create a database of sprites and their relevant info to be referenced (mostly for collision).
#As opposed to the object resource script, this holds all info in one file.

from bs4 import BeautifulSoup
import inflection
import os

file_path = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Character\Main Dude\sLookLeft.xml"
file = open(file_path, "r")
contents = file.read()

#Find specific xml element text
def find_element_text(soup, element):
    element_result = soup.find(element).text
    return element_result

def trim_leading_letter(word, letter):
    word = word.removeprefix(letter)
    return(word)

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

def handle_word(word, letter):
    word = trim_leading_letter(word, letter)
    word = camel_case_to_snake_case(word)
    return word

def get_origin(soup):
    tag = soup.origin
    attribute = tag.attrs

    x = attribute['x']
    y = attribute['y']
    return int(x), int(y)

def check_empty_string(element):
     if element == "":
        return "null"
     else:
         return element

soup = BeautifulSoup(contents, 'xml')

file_name = os.path.basename(file_path)
sprite_name = file_name.removesuffix(".xml")
sprite_name = handle_word(sprite_name, "s")

#Set each xml element to a variable
origin = get_origin(soup)

separate = find_element_text(soup, 'separate')
separate = check_empty_string(separate)

shape = find_element_text(soup, 'shape')
shape = check_empty_string(shape)

bounds = find_element_text(soup, 'bounds')
bounds = check_empty_string(bounds)

preload = find_element_text(soup, 'preload')
preload = check_empty_string(preload)

smooth_edges = find_element_text(soup, "smoothEdges")
smooth_edges = check_empty_string(smooth_edges)

transparent = find_element_text(soup, "transparent")
transparent = check_empty_string(transparent)

resource_text = f"""extends Resource

const sprite_database = {{
    "{sprite_name}" = {{
        "origin" = Vector2{origin}
        "separate" = {separate}
        "shape" = "{shape}"
        "bounds" = {bounds}
        "preload" = {preload}
        "smooth_edges" = {smooth_edges}
        "transparent" = {transparent}
    }}
}}
"""

print(resource_text)