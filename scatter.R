data <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\INFY.BO.csv")

png(file = "line_chart.jpg")

plot(data$Open, type="o", col="blue", ylab="Open Price", main="Infosys-Share Data")

#Scatter
data_1 <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\data1.csv")
plot(x=data_1$Body.Weight, y=data_1$Brain.Weight, xlab = "Body Weight", ylab="Brain Weight", xlim = c(4,680), ylim = c(0.25,250), main="Body vs Brain")

#Scatter Matrix

#Histogram

hist(data_1$Brain.Weight, col = "yellow" , border = "orange",breaks= 5, main = "Brain Weight")

dev.off()



