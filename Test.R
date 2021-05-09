#Reading the dataframe
data <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\BostonHousing.csv")
data

#Removing Rows
is.na(data)
which(is.na(data))
data[data == "null"]<-NA
data<-na.omit(data)
data

#normalize
nor <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

data$age_norm<-nor(data$age)

data$dis_norm<-nor(data$dis)

datarad_norm<-nor(data$rad)

data$tax_norm<-nor(data$tax)

data$ptratio_norm<-nor(data$ptratio)

data$lstat_norm<-nor(data$lstat)

data$medv_norm<-nor(data$medv)

data$crim_norm<-nor(data$crim)

data$zn_norm<-nor(data$zn)

data$indus_norm<-nor(data$indus)

data$chas_norm<-nor(data$chas)

data$nox_norm<-nor(data$nox)

data$rm_norm<-nor(data$rm)

dataframe <- data[ -c(1,2:10) ]

print(dataframe)

#CorrelationMatrix
cor_mat<-cor(data)
print(cor_mat)

#ScatterMatrix
png(file = "scatterMatrix.jpg")
pairs(~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+b+lstat+medv, data=data, main="ScatterMatrix")
dev.off()

#Using Correlation and Scatter matrix identify the variables which has clear dependency with MEDV attribute.
png(file ="scatterandcorelation.jpg")
pairs(~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+b+lstat+medv, data=cor_mat, main="ScatterMatrix/CorrMatrix")
dev.off()

