n <- as.integer(readline(prompt = "enter no of rows"))
 k=1
for(i in 1:n){
  for(j in 1:i+1){
    cat(k)
    
    k=k+1;
  }
  cat("\n")
}

