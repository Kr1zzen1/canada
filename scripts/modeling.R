# modeling.R

# Load necessary libraries
library(dplyr)

# Step 1: Load cleaned data (this assumes you've already run 'cleaning.R' and have 'cleaned_data.csv')
data <- read.csv('data/cleaned_data.csv')

# Step 2: Run Linear Regression Model
# Here, we are predicting supplier diversity score based on transparency score
model <- lm(supplier_diversity_score ~ transparency_score, data = data)

# Step 3: Output the model summary to a text file
# This will include coefficients, p-values, R-squared, etc.
sink('results/tables/regression_summary.txt')
print(summary(model))
sink()

# Step 4: Generate predicted values and residuals (for diagnostics)
data$predicted_values <- predict(model)
data$residuals <- residuals(model)

# Step 5: Save the predicted values and residuals to a CSV file for further analysis
write.csv(data[, c('transparency_score', 'supplier_diversity_score', 'predicted_values', 'residuals')],
          'results/tables/model_predictions_and_residuals.csv', row.names = FALSE)

# Print message to confirm completion
cat("Modeling complete. Summary and results saved.\n")
