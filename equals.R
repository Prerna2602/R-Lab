str1 <- readline("enter the string1 ")
str2 <- readline("enter the string2 ")

string1 <- strsplit(as.character(str1), "")
string2 <- strsplit(as.character(str2), "")
string1 = unlist(string1)
string2 = unlist(string2)

if (all(string1 == string2) ) {
  cat("string is same")
} else{
  cat("not same")
}

