library(dplyr)

data <- read.csv("data_without_nulls.csv")

casual_rows <- data[data$member_casual == "casual", ]

write.csv(casual_rows, "data_casual.csv", row.names = FALSE)

member_rows <- data[data$member_casual == "member", ]

write.csv(member_rows, "data_member.csv", row.names = FALSE)