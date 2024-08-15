#This script generates the basis for a resource file specific to one object that contains info about said object.
#Each object node will hold its relevant object resource and call an initial function that sets it up based on its info.
#This way, functionality can be added later without having to update every single object.  

from bs4 import BeautifulSoup
import inflection
import os

file_path = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Objects\Items\oBomb.xml"
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

def get_object_id(soup):
    tag = soup.object
    attribute = tag.attrs
    return attribute['id']

def check_empty_string(element):
     if element == "":
        return "null"
     else:
         return element

soup = BeautifulSoup(contents, 'xml')

file_name = os.path.basename(file_path)
object_name = file_name.removesuffix(".xml")
object_name = handle_word(object_name, "o")

#Set each xml element to a variable
object_id = get_object_id(soup)
object_id = check_empty_string(object_id)

sprite = find_element_text(soup, 'sprite')
sprite = handle_word(sprite, 's')
sprite = check_empty_string(sprite)

solid = find_element_text(soup, 'solid')
solid = check_empty_string(solid)

visible = find_element_text(soup, 'visible')
visible = check_empty_string(visible)

depth = find_element_text(soup, 'depth')
depth = check_empty_string(depth)

persistent = find_element_text(soup, 'persistent')
persistent = check_empty_string(persistent)

parent = find_element_text(soup, 'parent')
parent = handle_word(parent, 'o')
parent = check_empty_string(parent)

mask = find_element_text(soup, 'mask')
mask = check_empty_string(mask)

resource_text = f"""extends Resource

@export const object_name = {object_name}
@export const object_id = {object_id}
@export const sprite = {sprite}
@export const solid = {solid}
@export const visible = {visible}
@export const depth = {depth}
@export const persistent = {persistent}
@export const parent = {parent}
@export const mask = {mask}
"""

print(resource_text)