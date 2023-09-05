#1
df<- data.frame(name= c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin',
                        'Jonas') , score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
                attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
                qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes'))
df

#2

dm<- df[c(3,5),c(1,3)]
dm

#3
df$country<-c("USA","USA","USA","USA","UK","USA","USA","INDIA","USA","USA")
df

#4

r<- c("Ace",100,1,"yes","JAPAN")
r1<- rbind(df,r)

#5
r2<- df[order(df$name,df$score),]
r2

#6

write.csv(r1,"exam_d.csv",row.names = F)

#7

n<- read.csv("exam_d.csv")
n