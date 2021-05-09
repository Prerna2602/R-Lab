stack_list <- c()
top <- 0
size <- as.integer(readline("Enter size of stack"))

pop <- function() {
  if (top > 0) {
    v <- stack_list[top]
    stack_list[top] <<- 0
    top <<- top - 1
    print(v)
  } else {
    print("Stack Underflow")
  }
}


push <- function(value) {
  n=length(stack_list)
  if(n==size){
    print("Overflow")
    return(stack_list)
  }
  top <<- top + 1
  stack_list[top] <<- value
  return(stack_list)
}


push(23)
push(34)
push(56)
pop()
pop()
pop()

