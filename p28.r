set.seed(123)
random_sample <- sample(LETTERS, 20, replace = TRUE)

factor_sample <- factor(random_sample)


first_five_levels <- levels(factor_sample)[1:5]

cat("Random Sample:", random_sample, "\n")
cat("Factor Levels:", levels(factor_sample), "\n")
cat("First Five Levels:", first_five_levels, "\n")

