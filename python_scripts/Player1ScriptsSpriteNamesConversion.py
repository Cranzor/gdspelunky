import re
import pyperclip

import_file = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Player1Scripts.txt"

file = open(import_file, 'r')
text = file.read()

new_text = re.sub(r'var s_.*', '', text)
new_text = re.sub(r' (s_[0-9a-z_]*)', r' "\1"', new_text)
new_text = re.sub(r'\bs_', r'', new_text)
new_text = re.sub(r'\$AnimatedSprite2D.animation', 'sprite_index', new_text)

print(new_text)
pyperclip.copy(new_text)
