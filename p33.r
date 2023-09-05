# Load necessary libraries
library(reshape2)
library(dplyr)

# Load the airquality dataset
data(airquality)

# (i) Summary Statistics of airquality dataset
summary(airquality)

# (ii) Melt airquality data set and display as a long-format data
melted_data <- melt(airquality)
head(melted_data)

# (iii) Melt airquality data and specify month and day to be "ID variables"
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
head(melted_data_id)

# (iv) Cast the molten airquality data set with respect to month and date features
casted_data <- dcast(melted_data_id, Month + Day ~ variable)
head(casted_data)

# (v) Compute the average of Ozone, Solar.R, Wind, and temperature per month
average_per_month <- casted_data %>%
  group_by(Month) %>%
  summarise(
    Avg_Ozone = mean(Ozone, na.rm = TRUE),
    Avg_Solar_R = mean(Solar.R, na.rm = TRUE),
    Avg_Wind = mean(Wind, na.rm = TRUE),
    Avg_Temp = mean(Temp, na.rm = TRUE)
  )

# Print the average values per month
print(average_per_month)
