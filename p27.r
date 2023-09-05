data("women")

d<- cut(women$height , breaks = c(50,60,70,80), labels = c("Short","Medium","Tall"))
w<- data.frame(women,"HeightCategory"=d)
w