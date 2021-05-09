str <- readline("Enter a String:")
str_lower =tolower(str)

get_vowel <- function(string) {
  count <- 0
  for (i in unlist(strsplit(string, ""))) {
    if ((i == 'a') | (i == 'e') | (i == 'i') | (i == 'o') | (i == 'u')) {
      count <- count + 1 
    }   
  }
  
  output <- paste("Your string has", count, "vowels in it!" )
  print(output)
}

get_vowel(str_lower)
