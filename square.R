row <- as.integer(readline("enter no of rows:"))
col <- as.integer(readline("enter no of columns:"))

mat <- matrix(0,row,col)
for(i in 1:dim(mat)[1]) {
  for(j in 1:dim(mat)[2]) {
    mat[i,j] <-as.integer(readline("enter elements:"))
  }
}
cat('Matrix is')
mat
cat('Square of matrix is')
mat^2

