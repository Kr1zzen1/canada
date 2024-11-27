# eda.R

# Load necessary libraries
library(ggplot2)
library(reshape2)

# Load cleaned data (this assumes you've run 'cleaning.R' and have 'cleaned_data.csv')
data <- read.csv('data/cleaned_data.csv')

# Step 2: Exploratory Data Analysis - Correlation Heatmap
corr_matrix <- cor(data[, sapply(data, is.numeric)], use = 'complete.obs')
corr_melted <- melt(corr_matrix)

# Create the heatmap
ggplot(corr_melted, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = 'white') +
  scale_fill_gradient2(low = 'blue', high = 'red', mid = 'white', midpoint = 0) +
  theme_minimal() +
  labs(title = 'Correlation Heatmap of Key Variables', x = '', y = '') +
  ggsave('results/figures/correlation_heatmap.png')

# Scatter plot - Transparency vs Supplier Diversity
ggplot(data, aes(x = transparency_score, y = supplier_diversity_score)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = 'lm', se = FALSE, color = 'blue') +
  labs(x = 'Transparency Score', y = 'Supplier Diversity Score', title = 'Transparency vs Supplier Diversity') +
  ggsave('results/figures/transparency_diversity_plot.png')
