# Load the airquality dataset
data(airquality)

# i. Compute the mean temperature (without using built-in function)
mean_temp <- sum(airquality$Temp, na.rm = TRUE) / sum(!is.na(airquality$Temp))

# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]

# iii. Extract all columns from airquality except Temp and Wind
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]

# iv. Find the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]

# v. Count the days with wind speed greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17, na.rm = TRUE)

# Print the results
cat("i. Mean Temperature:", mean_temp, "\n")
cat("ii. First Five Rows:\n")
print(first_five_rows)
cat("iii. Selected Columns:\n")
print(selected_columns)
cat("iv. Coldest Day:", coldest_day, "\n")
cat("v. Days with Wind Speed > 17 mph:", wind_gt_17_count, "\n")
