# Analysis of the Chicago rides data for 2022 of the Divvy Bikes bike sharing company 

## Task

Analyze the ride data to come up with insights and recommendations for a marketing campaign aimed at converting non member riders to members.

## Data used

The [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) for 2022.

## Data cleaning

1. 12 folders were downloaded for every month of 2022. The csv files were extracted from their folder and the folders were deleted with the following python script: 

<details>
  <summary>file extraction script</summary>

```python

import os
import shutil

# set the path to the parent directory where the folders are located
parent_dir = "."

# loop through each folder in the parent directory
for folder_name in os.listdir(parent_dir):

    # create the path for each folder in the parent folder
    folder_path = os.path.join(parent_dir, folder_name)
    
    # check if the item is a directory, if it is not a folder, it skips it
    if os.path.isdir(folder_path):

        # loop through each file in the folder
        for file_name in os.listdir(folder_path):

            # create the path of the element in the subfolder
            file_path = os.path.join(folder_path, file_name)

            # if the element in the subfolder is another folder, the folder is deleted
            if os.path.isdir(file_path):
                 shutil.rmtree(file_path)
            else:
                # otherwise, if it is a file, the file is moved to the parent directory
                shutil.move(file_path, os.path.join(parent_dir, file_name))
                
            # delete the now-empty subfolder
        shutil.rmtree(folder_path)
        
```

</details>
    
2. The headers of each csv file were extracted to an excel file with the following python script to make sure that they each had the same headers and especially the same header length:

<details>
  <summary>headers extraction script</summary>

```python
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
```

</details>
    
3. Once it was confirmed that the layout was the same for every file, the 12 files were merged into one single file with the following R script:

<details>
  <summary>file merging script</summary>
  
```r

```
  
</details>
  
