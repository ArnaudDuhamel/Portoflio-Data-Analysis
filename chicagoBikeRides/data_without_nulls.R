# load the full dataset into a dataframe
data <- read.csv("merged_data.csv")

# show the head of the dataframe to verify that the read was successful
head(data)

# remove entries that have null values
# this function turned out to be insufficient and did not remove
# all of the rows with empty attribute values
data_without_na <- na.omit(data)


# removing rows where either the start or end station value was
# an empty string completely eliminated rows with null values
data_without_na <- data_without_na[data_without_na$end_station_name != "", ]
data_without_na <- data_without_na[data_without_na$start_station_name != "", ]

# print the number of rows of the datafram for information
print(nrow(data_without_na))

# write the filtered and cleaned dataframe to a csv file
write.csv(data_without_na, "data_without_nulls.csv", row.names = FALSE)
