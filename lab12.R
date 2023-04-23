
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)
relation

# print summary of regression results
print(summary(relation))

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

#####Question - 2
dataset = read.csv("income.csv")
x = dataset$income
y = dataset$happiness

#create model
relation = lm(y ~ x)
print(summary(relation))

#predict
a = data.frame(x = 5.5)
result = predict(relation , a)
result

#visualization
plot(y, x, col = "blue", main = "Income & Happiness Regression",
     abline(lm(x ~ y)), cex = 1.3, pch = 16, xlab = "Income in 10000K", ylab = "Happiness Measure")

###QUESTION 3
# Read in the data
data <- read.csv("heart.data.csv")
print(data)
head(data)
summary(data)
cor(data$biking,data$smoking)
hist(data$heart.disease)
plot(heart.disease ~ biking, data=data)
plot(heart.disease ~ smoking, data=data)
heart.disease.lm<-lm(heart.disease ~ biking + smoking, data = data)

summary(heart.disease.lm)
par(mfrow=c(2,2))
plot(heart.disease.lm)
par(mfrow=c(1,1))
