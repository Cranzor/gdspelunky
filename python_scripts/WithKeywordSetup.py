import pyperclip

object_name = input()

output_text = f'var all_{object_name}s = gml.get_all_instances("{object_name}")\nfor {object_name}_instance in all_{object_name}s:'
print(output_text)
pyperclip.copy(output_text)