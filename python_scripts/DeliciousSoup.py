from bs4 import BeautifulSoup
import re
import inflection

file_path = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Rooms\rIntro.xml'

file = open(file_path, "r")
xml = file.read()
file.close()

soup = BeautifulSoup(xml, 'xml')

all_backgrounds = soup.find_all('backgroundDef')
all_instances = soup.find_all('instance')

for background in all_backgrounds:
    background_soup = BeautifulSoup(str(background), 'xml')
    if background_soup.visibleOnRoomStart.string == 'true':
        visible = 'visible_on_room_start = ' + str(background_soup.visibleOnRoomStart.string)
        foreground = 'is_foreground = ' + str(background_soup.isForeground.string)
        background_image = 'background_image = ' + background_soup.backgroundImage.string
        tile_horizontally = 'tile_horizontally = ' + background_soup.tileHorizontally.string
        tile_vertically = 'tile_vertically = ' + background_soup.tileVertically.string
        stretch = 'stretch = ' + background_soup.visibleOnRoomStart.string

        print(visible)
        print(foreground)
        print(background_image)
        print(tile_horizontally)
        print(tile_vertically)
        print(stretch)

unique_objects = []

for instance in all_instances:
    instance_soup = BeautifulSoup(str(instance), 'xml')
    object_name_o_deleted = re.sub('o([A-Z].+)', r'\1', instance_soup.object.string)
    object_snake_case = inflection.underscore(object_name_o_deleted)
    object_instantiate_string = 'gml.instance_create(' + str(instance_soup.position['x']) + ', ' + str(instance_soup.position['y']) + ', ' + object_snake_case + ')'
    #object_instantiate_string = 'add_tile(' + str(instance_soup.position['x']) + ', ' + str(instance_soup.position['y']) + ', ' + '"' + object_snake_case + '"' ')'
    #object_collision_string = 'gml.set_up_object_collision(' + str(instance_soup.position['x']) + ', ' + str(instance_soup.position['y']) + ', ' + '' + object_snake_case + '' ')'

    
    #adding this to get each unique object for reference when working on objects in each room
    if instance.object.string not in unique_objects:
        unique_objects.append(instance.object.string)

    print(object_instantiate_string)
    #print(object_collision_string)

print(unique_objects)