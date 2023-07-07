# Script to convert this dataset: https://www.kaggle.com/datasets/ibriiee/video-games-sales-dataset-2022-updated-extra-feat
# to a SQL format

import csv

# open the file
csvfile = open("video_games.csv", "r")

# read the file with the csv reader, works better then split
# function because it does not split values wrapped in quotes
reader = csv.reader(csvfile)

lines = []

# insert the lists of the reader object in a list
# makes it easier to handle further down
for row in reader:
    lines.append(row)
    
header = lines[0]

# manipulates the header to match the INSERT INTO
# sql statement
for i in range(0, len(header)):
    header[i] = "`" + header[i] + "`"

lines[0] = ", ".join(header)

lines[0] = "INSERT INTO `video_games` (" + lines[0] + ") VALUES\n"

# We start with 1 to skip the header row
for i in range(1,len(lines)):

    # we work with each line
    line = lines[i]
 
    # we wrap the text data in quotes
    # except if it is empty because NULL
    # will be inserted below
    if line[0] != "":
        line[0] = "\"" + line[0] + "\""
    
    if line[1] != "":
        line[1] = "\"" + line[1] + "\""
    
    if line[3] != "":
        line[3] = "\"" + line[3] + "\""
    
    if line[4] != "":
        line[4] = "\"" + line[4] + "\""
    
    if line[14] != "":
        line[14] = "\"" + line[14] + "\""
    
    if line[15] != "":
        line[15] = "\"" + line[15] + "\""
    
    # We insert NULL in the empty fields
    for j in range(0, len(line)):
        # I assumed that "tbd" was the same as empty, also "N/A"
        if line[j] == "" or line[j] == "tbd" or line[j] == "N/A":
            line[j] = "NULL"
    
    # we join the line back together with ", "
    lines[i] = ", ".join(line)

    # we wrap each line with parentheses, a comma and a newline character
    if i == len(lines) - 1:
        # in the last line, we finish with ; instead of a comma
        lines[i] = "(" + lines[i] + ");\n"
    else:
        lines[i] = "(" + lines[i] + "),\n"

finalFile = open("csv_to_sql.txt", "w")
finalFile.writelines(lines)
finalFile.close()
