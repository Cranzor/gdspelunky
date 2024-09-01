from PIL import Image
import PIL
import numpy

#image = Image.open(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Enemies\Ghost\sGhostLeft.images\image 0.png')
image = Image.open(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Blocks\Dark\sDarkDown.images\image 0.png')
#image = Image.open(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Enemies\sSnakeLeft.images\image 0.png')
#image = Image.open(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Enemies\Olmec\sOlmec.images\image 0.png')
#image = Image.open(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\Items\Weapons\sWhipPreL.images\image 0.png')



numpydata = numpy.array(image)

#print(numpydata[11][4][3])

columns, rows = image.size
alpha_value = 3

pixel_alpha_status_tracker = {}
pixel_in_rect_tracker = {}

for row in range(rows):
    for column in range(columns):
        alpha_status = numpydata[row][column][alpha_value]
        #print(numpydata[row][column][alpha_value])
        
        entry = (column, row)

        if alpha_status != 0:
         pixel_alpha_status_tracker[entry] = 'opaque'

        else:
           pixel_alpha_status_tracker[entry] = 'alpha'
        
        pixel_in_rect_tracker[entry] = "out"


lines = 0
line_count_ended = False
pixels_to_go_in_rect = []
first_loop = True

def check_below_line(entry, length, line_broken_status):
    global lines
    global first_loop
    column = entry[0]
    row = entry[1]

    initial_line_status = line_broken_status

    starting_range_value = column - length

    #if starting_range_value < 0:
     #   starting_range_value = 0

    global line_broken
    if line_broken == True:
        if first_loop:
            first_loop = False
            row -= 1
    
    if initial_line_status == True:
        starting_range_value = columns - length

    new_row = row + 1
    chain_count = 0

    global pixels_to_go_in_rect

    global line_count_ended
    if row != rows - 1:
        #for column_to_test in range(starting_range_value, column + length):
        for column_to_test in range(starting_range_value, starting_range_value + length):
            if line_count_ended == False:
                new_entry = (column_to_test, new_row)

                if pixel_alpha_status_tracker[new_entry] == "opaque" and pixel_in_rect_tracker[new_entry] == "out":
                    chain_count += 1
                    pixels_to_go_in_rect.append(new_entry)
                else:
                    line_count_ended = True
                    pixels_to_go_in_rect = []
                    break
                    
                if chain_count == length:
                    next_entry = (column, new_row)
                    lines += 1

                    for pixel_to_add in pixels_to_go_in_rect:
                       pixel_in_rect_tracker[pixel_to_add] = "in"
                    
                    pixels_to_go_in_rect = []


                    check_below_line(next_entry, length, line_broken)
    
    pixels_to_go_in_rect = []
    return lines

all_rects = []

def create_rectangle(original_entry, chain_length, check_below_line_result, line_broken_status):
   if line_broken_status:
       column = columns
   else:
       column = original_entry[0]
   
   position_x = column - chain_length

   
   #if position_x < 0:
    #   position_x = 0

   position_y = original_entry[1]

   if line_broken_status == True:
       position_y -= 1

   position = (position_x, position_y)
   size = (chain_length, check_below_line_result + 1)

   rect = (position, size)
   #print("rect:" + str(rect))
   all_rects.append(rect)

chain_started = False
chain_length = 0

line_broken = False

for entry in pixel_alpha_status_tracker:
    if pixel_alpha_status_tracker[entry] == "opaque" and pixel_in_rect_tracker[entry] == "out" and line_broken == False:
        if entry == (63, 17):
            print("hi")
        if entry[0] == columns - 1:
            line_broken = True
        pixel_in_rect_tracker[entry] = "in"
        chain_started = True
        chain_length += 1
        pixel_in_rect_tracker[entry] = "in"
    else:
        if chain_started == True and line_broken == True:
            chain_started = False

            check_below_line_result = check_below_line(entry, chain_length, line_broken)
            first_loop = True
            line_broken = True
            create_rectangle(entry, chain_length, check_below_line_result, line_broken)
            line_broken = False
            lines = 0
            line_count_ended = False
            chain_length = 0


        elif chain_started == True:
            line_broken = False

            chain_started = False
            check_below_line_result = check_below_line(entry, chain_length, line_broken)
            first_loop = True
            create_rectangle(entry, chain_length, check_below_line_result, line_broken)
            lines = 0
            line_count_ended = False
            chain_length = 0

#print(pixel_in_rect_tracker)
print(len(all_rects))
x = 0
for rect in all_rects:
    x += 1
    print(str(x) + ". " + str(rect))
print(rows)