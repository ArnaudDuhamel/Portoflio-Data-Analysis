import csv
import os

# set the path to the parent directory where the files are located
parent_dir = "."

# set the name of the file to which the headers will be extracted
headers_file = "headers.csv"

# initialize the headers list
headers = []

# loop through each file in the parent directory
for file_name in os.listdir(parent_dir):
    file_path = os.path.join(parent_dir, file_name)
    
    # check if the item is a file and ends with .csv
    if os.path.isfile(file_path) and file_name.endswith(".csv"):
        
        # open the file and read the first row
        with open(file_path, "r") as csv_file:
            csv_reader = csv.reader(csv_file)
            row = next(csv_reader)
            
            # add the row to the headers list
            headers.append(row)
            
# write the headers to the headers file
with open(headers_file, "w", newline="") as csv_file:
    csv_writer = csv.writer(csv_file)
    csv_writer.writerows(headers)