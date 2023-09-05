n<- rbind(rep("a",3),rep("b",3),rep("c",3))
n1<- rbind(rep("p",3),rep("q",3),rep("r",3))
n2<- rbind(rep("x",3),rep("y",3),rep("z",3))
m<- matrix(t(cbind(n,n1,n2)),ncol = 3,byrow = T)
m