library(tidyr)

# Import of the file containing all numeric values in submitted documents to the SEC.
raw_data = read.csv('num.csv',sep = ',')

# Cleaning data
# Only keeping the NetIncomeLoss values because this is the chosen metric in this case
raw_data <- subset(raw_data, tag == "NetIncomeLoss")

# Remove entries where coregistrants are mentioned to only deal with consolidated data
raw_data <- subset(raw_data, coreg == "")

# We only keep entries related to an annual report
raw_data <- subset(raw_data, qtrs == 4)

# We only keep information for the end of year 2022
raw_data <- subset(raw_data, ddate == "20221231")

# Rotate table so that NetIncomeLoss for each entries are now columns 
rotated_data <- pivot_wider(raw_data, names_from = tag, values_from = value)

# Obtain the total number of companies that submitted financial statements to the SEC in 2022
unique_adsh_raw <- unique(rotated_data$adsh)

# We only keep entries for which the NetIncomeLoss are above 0
# These are companies that made money in the year
rotated_data <- subset(rotated_data, NetIncomeLoss > 0)

# Obtain the total number of companies that made a profit in 2022
unique_adsh_clean <- unique(rotated_data$adsh)

#### Data visualization ####

# Give the pie chart a file name
png(file = "net_income_loss_2022.jpg")

# labels for the pie chart
labels <- c("with net loss", "with net income")

# The values for each entry. That is cies that lost money in the year and cies that made money in the year
values <- c(length(unique_adsh_raw) - length(unique_adsh_clean), length(unique_adsh_clean))

# Colors of the chart slices
colors <- c("red", "green")

# the pie chart
pie(values, labels = values, radius = 0.75, col = colors, main = "Distribution of Listed Companies by Net Income/Loss for 2022")

# the legend of the pie chart
legend("topright", labels, cex = 0.8, fill = colors)

# saving the pie chart to a file
dev.off()