import pyperclip

input_string = input()

output_string = f"""
        if Input.is_action_pressed("{input_string}") == true:
            {input_string} = true
        else:
            {input_string} = false

        if {input_string} != true:
            {input_string}_released = true

    else:
        if Input.is_action_pressed("{input_string}") == true:
            {input_string} = true
        else:
            {input_string} = false

        if {input_string} == true:
            {input_string}_pressed = true
"""

output_string2 = f"""
    return Gamepad.{input_string}
"""

print(output_string2)

pyperclip.copy(output_string2)