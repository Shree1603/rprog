# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the airquality dataset
data(airquality)

# (i) Handling missing values
missing_counts <- sapply(airquality, function(x) sum(is.na(x)))
missing_percentages <- missing_counts / nrow(airquality) * 100
missing_percentages

for (col in names(airquality)) {
  if (missing_percentages[col] < 10) {
    airquality[is.na(airquality[, col]), col] <- mean(airquality[, col], na.rm = TRUE)
  } else {
    airquality <- airquality[complete.cases(airquality[, col]), ]
  }
}

# (ii) Linear regression on "Ozone" and "Solar.R"
linear_model <- lm(Ozone ~ Solar.R, data = airquality)
linear_model

# (iii) Scatter plot with regression line
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, color = "blue") +
  labs(title = "Scatter Plot of Ozone vs Solar.R",
       x = "Solar.R",
       y = "Ozone")
ggplot()
