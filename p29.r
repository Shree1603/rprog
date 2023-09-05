data("iris")


dim(iris)
str(iris)
summary(iris)
sapply(iris[, 1:4], sd)


aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = function(x) c(mean = mean(x), sd = sd(x)))


quantile(iris$Sepal.Width,0.25)
quantile(iris$Sepal.Length)


iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), labels = c("Q1", "Q2", "Q3", "Q4"))


aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = mean)


aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = function(x) mean(mean(x)))


pivot_table <- table(iris1$Species, iris1$Sepal.Length.Cate)
pivot_table
