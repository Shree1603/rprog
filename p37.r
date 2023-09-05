data("ChickWeight")

ChickWeight$Diet <- as.factor(ChickWeight$Diet)
model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(summary(model))

new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(model, newdata = new_data)
cat("\nPredicted weight for Time=10 and Diet=1 : ", predicted_weight)

actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
prediction_error <- actual_weight - predicted_weight
cat("\nPrediction error for Time=10 and Diet=1: \n")
print(prediction_error)
