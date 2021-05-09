num<-as.integer(readline(prompt="enter a number:"))
org=num
rev=0
while(num>0)
{
  d=num%%10
  rev=(rev*10)+d
  num=num/10
}
if(org==rev){
  print("palindrome")
}else{
  print("not a palindrome")
}




