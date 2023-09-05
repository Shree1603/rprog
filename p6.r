#program 6

num<- readline(prompt = "Enter the range:")
num<- as.integer(num)
if(num>1){
  flag=1
  for(i in 2:num){
    if((num %% i)==0){
      flag=0
    }
    else{
      print(i)
    }
  }
}

