n = as.integer(readline(prompt="How many terms? "))
a = 0
b = 1
c = 2
if(n <= 0) {
  print("Plese enter a positive integer")
} else {
  if(n == 1) {
    print("Fibonacci sequence:")
    print(a)
  } else {
    print("Fibonacci sequence:")
    print(a)
    print(b)
    while(c < n) {
      nth = a + b
      print(nth)
      a = b
      b = nth
      c = c + 1
    }
  }
}

