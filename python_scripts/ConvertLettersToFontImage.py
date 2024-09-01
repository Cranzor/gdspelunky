from glob import glob
import os
import locale
import cv2
from natsort import natsorted

font_files = natsorted(glob(r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\Dump\Sprites\sFont.images\*.png'))
loaded_images = []


for file in font_files:
    image = cv2.imread(file, -1)
    if image is not None:
        loaded_images.append(image)

row1 = []
row2 = []
row3 = []
row4 = []
row5 = []
row6 = []

for i in range(0, 10):
    row1.append(loaded_images[i])

for i in range(10, 20):
    row2.append(loaded_images[i])

for i in range(20, 30):
    row3.append(loaded_images[i])

for i in range(30, 40):
    row4.append(loaded_images[i])

for i in range(40, 50):
    row5.append(loaded_images[i])

for i in range(50, 59):
    row6.append(loaded_images[i])




image_tile = cv2.hconcat(row1)
image_tile2 = cv2.hconcat(row2)
image_tile3 = cv2.hconcat(row3)
image_tile4 = cv2.hconcat(row4)
image_tile5 = cv2.hconcat(row5)
image_tile6 = cv2.hconcat(row6)

completed_tile = cv2.vconcat(image_tile, image_tile2)
completed_tile2 = cv2.vconcat(completed_tile, image_tile3)

print(loaded_images[2])

dump_location = r'C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\GeneratedFont\MainFont'
os.chdir(dump_location) 

cv2.imwrite('row1_1.png', image_tile)
cv2.imwrite('row2_1.png', image_tile2)
cv2.imwrite('row3_1.png', image_tile3)
cv2.imwrite('row4_1.png', image_tile4)
cv2.imwrite('row5_1.png', image_tile5)
cv2.imwrite('row6_1.png', image_tile6)
cv2.waitKey()