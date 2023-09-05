#program 7

q<- c(1:100)
for(i in q){
  if(i%%3==0 & i%%5==0){
    print("Fizzbuzz")
  }
  else if(i%%3==0){
    print("Fizz")
  }
  else if(i%%5==0){
    print("Buzz")
  }
  else{
    print(i)
  }
}

