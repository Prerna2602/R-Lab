str1 <- readline("enter the string: ")
str2 <- readline("enter the substring: ")

len1 = nchar(str1)
len2 = nchar(str2)

for(i in 1:((len1 - len2) + 1)){
  for(j in 1:len2) {
    if (str2[i + j] != str1[j]) 
    {
      break
    }
    
    if(j + 1 == len2)  
    return i
    
  }
  return -1
}
