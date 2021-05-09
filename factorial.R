num = as.integer(readline(prompt="Enter a number: "))
factorial = 1
if(num < 0) {
  print("factorial does not exist for negative numbers")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i=1;i<=num;i++) {
    factorial = factorial * i
  }
  print(paste("The factorial of", num ,"is",factorial))
}

