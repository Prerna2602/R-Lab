marks1<-as.interger(readline(prompt="enter marks of 1st subjects:"))
marks2<-as.interger(readline(prompt="enter marks of 2nd subjects:"))
marks3<-as.interger(readline(prompt="enter marks of 3rd subjects:"))
total=marks1+marks2+marks3
print(total)
percentage=(total/300)*100
print(percentage)
if(percentage<=100 && percentage >= 90){
  cat("Outstanding")
}
else if(percentage <=89 && percentage >= 80){
  cat("Excellent")
}
else if(percentage < =79 && percentage >=70){
  cat("A")
}
else if(percentage < =69 && percentage >=60){
  cat("B")
}
else if(percentage < =59 && percentage >=50){
  cat("C")
}
else{
  cat("fail")
}
