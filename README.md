# Government Procurement Transparency and Supplier Diversity

## Overview
This project explores the impact of transparency in government procurement on supplier diversity. Using data from the Investigative Journalism Foundation (IJF), we analyze procurement practices and their correlation with the diversity of suppliers in government contracts.

### Project Structure
- **`data/`**: Contains the raw, cleaned, and sampled data files.
  - `raw_data.csv`: Original procurement data.
  - `cleaned_data.csv`: Cleaned data ready for analysis.
  - `sampled_data.csv`: Stratified sample of the dataset.
- **`scripts/`**: R scripts for cleaning data, exploratory data analysis, and modeling.
  - `cleaning.R`: Data cleaning.
  - `eda.R`: Exploratory data analysis.
  - `modeling.R`: Model training and analysis.
  - `sampling.R`: Stratified sampling.
- **`results/`**: Generated results from the analysis.
  - `figures/`: Visualization outputs.
    - `correlation_heatmap.png`: Correlation heatmap.
    - `transparency_diversity_plot.png`: Scatter plot of transparency vs supplier diversity.
  - `tables/`: Statistical outputs and summaries.
    - `regression_summary.txt`: Linear regression results.
- **`models/`**: Saved model objects.
  - `final_model.rds`: The final regression model.
- **`paper/`**: The research paper and references.
  - `paper.md`: Final research paper.
  - `references.bib`: Bibliography for citations.

## Data
- The dataset used is available from [Investigative Journalism Foundation](https://theijf.org/procurement).
  
## How to Run
1. Clone the repository.
2. Install the required R packages:
   ```r
   install.packages(c("dplyr", "ggplot2", "stats", "scales", "reshape2"))

