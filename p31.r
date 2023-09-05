values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

mean_value <- mean(values)
median_value <- median(values)
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_value <- get_mode(values)

sorted_values <- sort(values, decreasing = TRUE)
second_highest <- sorted_values[2]
third_lowest <- sorted_values[length(sorted_values) - 2]

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("2nd Highest:", second_highest, "\n")
cat("3rd Lowest:", third_lowest, "\n")
