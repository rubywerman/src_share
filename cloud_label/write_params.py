"""this function takes in a txt file of dates (one date per line, no punctuation and outputs a txt file for each date in the correct format for LAADS load/save search feature """

import os
import sys

#name of the date txt file
file_name = "/Users/rubywerman/desktop/clouds/src_shared/label1.txt"
text_file = open(file_name, "r")
label_dates = text_file.read().split('\n')

#the folder you want the parameter files in
save_path = '/Users/rubywerman/desktop/clouds/src_shared/parameters_test'

#edit product/coordinates as desired
def write_params(selected_date):
    name_of_file = selected_date 
    completeName = os.path.join(save_path, name_of_file+".txt")         
    file = open(completeName, "a")
    with open(completeName, 'w') as f:
        f.write("{\"products\":\"MOD35_L2--61\",\"time\":" + "\"" + selected_date + "\"" + ",\"dnb_coverage\":\"DB\",\"location\":\"-135.9,32.6, -109.6, 3.4\"}")

for date in label_dates:
    write_params(date)