data <- read.csv("merged_data.csv")
head(data)

distinct_bike_type <- unique(data$rideable_type)
print(distinct_bike_type)

distinct_member_type <- unique(data$member_casual)
print(distinct_member_type)

distinct_start_station_id <- unique(data$start_station_id)
print(distinct_start_station_id)

write.csv(distinct_start_station_id, "start_station_ids.csv", row.names = FALSE)

distinct_start_station_id <- unique(data$start_station_id)
print(distinct_start_station_id)

data_without_na <- na.omit(data)

write.csv(data_without_na, "data_without_nulls.csv", row.names = TRUE)

distinct_start_station_name <- unique(data_without_na$start_station_name)
print(distinct_start_station_name)

write.csv(distinct_start_station_name, "start_station_names.csv", row.names = FALSE)

data_without_na <- data_without_na[data_without_na$end_station_name != "", ]
data_without_na <- data_without_na[data_without_na$start_station_name != "", ]

print(nrow(data_without_na))
write.csv(data_without_na, "data_without_nulls.csv", row.names = TRUE)

distinct_start_station_name <- unique(data_without_na$start_station_name)
write.csv(distinct_start_station_name, "start_station_names.csv", row.names = FALSE)

distinct_end_station_name <- unique(data_without_na$end_station_name)
write.csv(distinct_end_station_name, "end_station_names.csv", row.names = FALSE)

distinct_start_lat <- unique(data_without_na$start_lat)
print(distinct_start_lat)

data_without_na_chars <- apply(data_without_na, 2, as.character)

write.csv(data_without_na_chars, "data_without_nulls.csv", row.names = TRUE)
