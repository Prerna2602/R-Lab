data <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\BostonHousing.csv")
print(data)
summary(data)
print(is.na(data))
new <- na.omit(data)
new
head(data)
tail(data)
new<-Filter(is.numeric,new)
new


for(i in col(new)){
  min<- min(new[,i])
  max<- max(new[,i])
  new[,i]<- (new[,i]-min)/(max-min)
}

Covariance <- function(x) {
  
  return ((x[i] - x) / (max(x) - min(x)))
  
}





cov_mat<-cov(new)
cor_mat<-cor(new)
print(cov_mat)
print(cor_mat)


