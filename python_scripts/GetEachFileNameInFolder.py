import os
import inflection

import_directory = input("Enter the import directory: ")
file_type = input("What file type would you like to target? ") #.xml, .gml etc.



#Iterate over each file in a given folder
for filename in os.listdir(import_directory):
    f = os.path.join(import_directory, filename)
    # checking if it is a file
    if os.path.isfile(f):
     num_lines = sum(1 for _ in open(f)) 
     if filename.lower().endswith(file_type):
         #print(f)
        file_base = os.path.basename(filename)
        print(str(inflection.underscore(file_base)) + str(r' [') + str(num_lines) + str(r']'))
        #print(str(file_base) + str(r' [') + str(num_lines) + str(r']'))
        #print('func ' + str(inflection.underscore(file_base)) + '():')
