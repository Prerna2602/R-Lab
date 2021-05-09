n <- readline("enter the string ")
string <- strsplit(as.character(n), "")
string = unlist(string)
reversed_split = string[nchar(n):1]

cat(reversed_split)
