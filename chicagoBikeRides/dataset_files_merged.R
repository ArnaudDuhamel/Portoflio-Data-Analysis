# Obtain the working directory
work_dir <- getwd()

# set the file names of the CSV files to be merged
csv_files <- c("202201-divvy-tripdata.csv",
               "202202-divvy-tripdata.csv",
               "202203-divvy-tripdata.csv",
               "202204-divvy-tripdata.csv",
               "202205-divvy-tripdata.csv",
               "202206-divvy-tripdata.csv",
               "202207-divvy-tripdata.csv",
               "202208-divvy-tripdata.csv",
               "202209-divvy-tripdata.csv",
               "202210-divvy-tripdata.csv",
               "202211-divvy-tripdata.csv",
               "202212-divvy-tripdata.csv")

# create an empty data frame to store the merged data
merged_data <- data.frame()

# loop through each CSV file and merge the data into the merged_data data frame
for (file in csv_files) {

  # create the file path by concatenating the working directory and the file name
  file_path <- file.path(work_dir, file)
  
  # load the data from the CSV file
  data <- read.csv(file_path)

  # print the number of rows of the loaded data to verify if the number makes sense
  # and hence if the read was successful
  print(nrow(data))

  # merge the data into the final data frame
  merged_data <- rbind(merged_data, data)
}

# print the total number of rows of the data frame containing the data from
# each file
print(nrow(merged_data))

# write the dataframe of the merged data to a csv file
write.csv(merged_data, "merged_data.csv", row.names = FALSE)
