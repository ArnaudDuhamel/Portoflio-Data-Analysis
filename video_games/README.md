# Video games sales data from csv to SQL

## Task 

Transform the following dataset: https://www.kaggle.com/datasets/ibriiee/video-games-sales-dataset-2022-updated-extra-feat
from a csv format to a SQL format.

## Method

The task has been accomplished with the follwing python script:

<details>
  <summary>csv to SQL python script</summary>

```python

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

```

</details>

## SQL file

The output of the script above can be inserted in the following SQL file: 

<details>
  <summary>SQL file</summary>

```sql

-- SQL format for this dataset: https://www.kaggle.com/datasets/ibriiee/video-games-sales-dataset-2022-updated-extra-feat

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_games`
--

-- --------------------------------------------------------

CREATE TABLE `video_games` (
  `name` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `year_of_release` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `NA_Sales` decimal(10,2) DEFAULT NULL,
  `EU_Sales` decimal(10,2) DEFAULT NULL,
  `JP_Sales` decimal(10,2) DEFAULT NULL,
  `other_Sales` decimal(10,2) DEFAULT NULL,
  `global_Sales` decimal(10,2) DEFAULT NULL,
  `critic_Score` int(11) DEFAULT NULL,
  `critic_Count` int(11) DEFAULT NULL,
  `user_Score` decimal(3,1) DEFAULT NULL,
  `user_Count` int(11) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `video_games` (`Name`, `Platform`, `Year_of_Release`, `Genre`, `Publisher`, `NA_Sales`, `EU_Sales`, `JP_Sales`, `Other_Sales`, `Global_Sales`, `Critic_Score`, `Critic_Count`, `User_Score`, `User_Count`, `Developer`, `Rating`) VALUES
("Wii Sports", "Wii", 2006, "Sports", "Nintendo", 41.36, 28.96, 3.77, 8.45, 82.53, 76, 51, 8, 322, "Nintendo", "E"),
("Super Mario Bros.", "NES", 1985, "Platform", "Nintendo", 29.08, 3.58, 6.81, 0.77, 40.24, NULL, NULL, NULL, NULL, NULL, NULL),
...

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

```

</details>

## Outcome

The resulting SQL file can now be imported as is in a MySQL server and analysis can be made.
