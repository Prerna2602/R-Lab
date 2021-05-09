# Wine Quality Dataset
data <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\winequality-red.csv",sep=";", header=TRUE)
print(data)
head(data)

# with Normalization/feature scaling 
nor = function(x, min, max) {
  return((x - min) / (max - min))
}

for(i in 1:ncol(data)){
  min <- min(data[,i]) 
  max <- max(data[,i])
  for(j in 1:nrow(data)){
    data[j,i] = nor(data[j,i], min, max)
  }
}

head(data)
model_nor <-lm(quality~fixed.acidity+volatile.acidity+citric.acid+residual.sugar+chlorides+free.sulfur.dioxide+total.sulfur.dioxide+density+pH+sulphates+alcohol,data = data)
print(model_nor)
summary(model_nor)


#TataSteel Dataset
data_tata <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\TATASTEEL.NS.csv")
print(data_tata)
head(data_tata)

#TimeSeries
Date.ts <- ts(data_tata$Volume,start = c(2019, 1),end= c(2020,1),frequency = 100)

print(Date.ts)

png(file = "line_chart_tatasteel.jpg",width=2048,height = 768,
    units = "px",pointsize = 12,bg="white")
plot(Date.ts,type="o",col="blue",xlab="Date",ylab="Volume",main="TATA-STEEL TimeSeries")
dev.off()
