# sampling.R

# Load necessary libraries
library(dplyr)

# Load cleaned data (this assumes you already ran 'cleaning.R' and have 'cleaned_data.csv')
data <- read.csv('data/cleaned_data.csv')

# Step 2: Stratified Sampling
# Perform stratified sampling by 'supplier_size' and 'region', sampling 50% of each group
sampled_data <- data %>%
  group_by(supplier_size, region) %>%
  sample_frac(0.5) %>%  # 50% of each group
  ungroup()

# Save the sampled data as sampled_data.csv
write.csv(sampled_data, 'data/sampled_data.csv', row.names = FALSE)

# Print the sampled data for review
print(sampled_data)
