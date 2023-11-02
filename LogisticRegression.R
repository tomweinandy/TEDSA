# Load necessary packages
if(!require(tidyverse)) install.packages("tidyverse")
if(!require(margins)) install.packages("margins")

# Load the dataset
hospital_data <- read.csv("hospital_data.csv")

# Check the structure of the dataframe
str(hospital_data)

# Fit logistic regression model
logit_model <- glm(METHUSE ~ independent_var1 + independent_var2, data = hospital_data, family = binomial)

# Calculate marginal effects
marginal_effects <- margins(logit_model)

# Display the marginal effects
print(marginal_effects)
