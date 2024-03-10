################################################
## Simulate numeric regression data and fit model
################################################

# set the seed
set.seed(123)

# Define parameters (these are arbitrary)
n <- 100
intercept <- 2
slope <- 3

# Define predictor variable
x <- rnorm(n)

# Define error term
error <- rnorm(n, mean = 0, sd = 2)

# Simulate response using the regression equation
y <- intercept + slope * x + error

# View data
data.frame(y, x) %>%
  head()

# Fit the model and retrieve the coefficients
lm(y ~ x)

# Plot model
library(tidyverse)
data.frame(x, y) %>%
  ggplot(aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)+
  theme_minimal() +
  labs(title = "Simulated regression data with numeric predictor",
       subtitle = "Intercept = 2, Slope = 3, Residuals ~ N(0, 2)")

