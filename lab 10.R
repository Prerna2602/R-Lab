data_1 <-read.csv("C:\\Users\\KIIT\\Documents\\RLab\\BostonHousing.csv")
head(data_1)
lm(crim~zn+indus,data = data_1)
model <-lm(medv~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio,data = data_1)

print(model)
summary(model)

a<-coef(model)[1]
a

coef(model)[2]
coef(model)[3]
coef(model)[4]
