library(dplyr)
library(caTools)
library(nnet)

set.seed(123)

split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- subset(iris, split == TRUE)
test_data <- subset(iris, split == FALSE)

log_reg_model <- multinom(Species ~ Petal.Width + Petal.Length, data = train_data)

predicted_probs <- predict(log_reg_model, newdata = test_data, type = "probs")

predicted_species <- colnames(predicted_probs)[apply(predicted_probs, 1, which.max)]
confusion_matrix <- table(predicted = predicted_species, actual = test_data$Species)

print(confusion_matrix)
