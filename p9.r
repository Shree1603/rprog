#program 9

n<- readline(prompt = "Enter a number:")
n<-as.integer(n)
for(i in 1:n)
  if(n%%i==0){
    print(i)
  }

