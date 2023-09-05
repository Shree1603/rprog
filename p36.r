data("ChickWeight")

# Create a Box plot for weight grouped by Diet
boxplot(weight ~ Diet, data = ChickWeight,
        main = "Box Plot of Weight Grouped by Diet",
        xlab = "Diet", ylab = "Weight")

hist(ChickWeight$weight[ChickWeight$Diet == 1],
     main = "Histogram of Weight in Diet-1",
     xlab = "Weight", ylab = "Frequency")

plot(ChickWeight$Time, ChickWeight$weight,
     col = as.numeric(ChickWeight$Diet),
     xlab = "Time", ylab = "Weight",
     main = "Scatter Plot of Weight vs Time",
     pch = as.numeric(ChickWeight$Diet))
legend("topright", legend = levels(ChickWeight$Diet),
       col = unique(as.numeric(ChickWeight$Diet)),
       pch = unique(as.numeric(ChickWeight$Diet)),
       title = "Diet")
