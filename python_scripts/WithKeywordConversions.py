import re

f = open(r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\WithKeywordConversions\WithKeywordConversions.txt")
input_string = f.read()

instance_name = input('What is the instance name? ')

def replacements(sent_string, instance_name):
    new_string = re.sub(' x', str(' ') + str(instance_name) + '.x', sent_string)
    new_string = re.sub(' y', str(' ') + str(instance_name) + '.y', new_string)
    new_string = re.sub('\(y', str('(') + str(instance_name) + '.y', new_string)
    new_string = re.sub('\(x', str('(') + str(instance_name) + '.x', new_string)
    new_string = re.sub(' up', str(' ') + str(instance_name) + '.up', new_string)
    new_string = re.sub(' down', str(' ') + str(instance_name) + '.down', new_string)
    new_string = re.sub(' left', str(' ') + str(instance_name) + '.left', new_string)
    new_string = re.sub(' right', str(' ') + str(instance_name) + '.right', new_string)
    new_string = re.sub('^up =', str(instance_name) + '.up =', new_string)
    new_string = re.sub('^down =', str(instance_name) + '.down =', new_string)
    new_string = re.sub('^left =', str(instance_name) + '.left =', new_string)
    new_string = re.sub('^right =', str(instance_name) + '.right =', new_string)
    new_string = re.sub('sprite_index', str(instance_name) + '.sprite_index', new_string)
    new_string = re.sub('collision_point\((.*?), (.*?), (.*?),', r'collision_point(\1, \2, "\3",', new_string)
    new_string = re.sub('collision_rectangle\((.*?), (.*?), (.*?), (.*?), (.*?),', r'collision_point(\1, \2, \3, \4, "\5",', new_string)
    new_string = re.sub('type', str(instance_name) + '.type', new_string)
    new_string = re.sub('tile_add', 'gml.tile_add', new_string)
    new_string = re.sub('is_in_shop', 'InLevel.is_in_shop', new_string)
    new_string = re.sub('instance_place', 'gml.instance_place', new_string)
    new_string = re.sub('collision_point', 'gml.collision_point', new_string)
    new_string = re.sub('room_height', 'gml.room_height()', new_string)

    return new_string

print('---------------------------------------')
f = open(r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\WithKeywordConversions\WithKeywordConversions.txt", 'w')
f.write(replacements(input_string, instance_name))
f.close