# cleaning.R

# Load necessary libraries
library(dplyr)

# Example raw data (you can replace this with your real data)
data <- data.frame(
  Tenders = c(100, 80, 90, 120, 50, 110, 75, 130, 40, 95),
  Awards = c(50, 60, 75, 90, 30, 85, 55, 100, 20, 70),
  Contract.Value = c(500000, 300000, 450000, 600000, 200000, 550000, 350000, 700000, 150000, 480000),
  supplier_size = c("Large", "Medium", "Large", "Large", "Small", "Medium", "Medium", "Large", "Small", "Medium"),
  region = c("North", "South", "East", "West", "South", "East", "West", "North", "South", "East")
)

# Step 1: Data Cleaning
# If any missing data existed, fill numerical columns with the median of each column
data <- data %>%
  mutate(across(where(is.numeric), ~ ifelse(is.na(.), median(., na.rm = TRUE), .)))

# Save the cleaned data as cleaned_data.csv
write.csv(data, 'data/cleaned_data.csv', row.names = FALSE)

# Print the cleaned data for review
print(data)
