################QUESTION 1################
pupae <- read.csv("pupae.csv")
pupae$CO2_treatment <- as.factor(pupae$CO2_treatment)
levels(pupae$CO2_treatment)

palette(c("blue", "red"))
plot(Frass ~ PupalWeight, col = CO2_treatment, data = pupae, pch = 19)
legend("topleft", levels(pupae$CO2_treatment), col = palette(), pch = 19)

par(mfrow = c(1, 2))
plot(Frass ~ PupalWeight, col = CO2_treatment, data = subset(pupae, T_treatment =="ambient"), pch = 19)
plot(Frass ~ PupalWeight, col = CO2_treatment, data = subset(pupae, T_treatment == "elevated"), pch = 19)

par(mfrow = c(1, 2))
plot(Frass ~ PupalWeight, col = CO2_treatment, data = subset(pupae, T_treatment =="ambient"), xlim = c(0, 0.5), ylim = c(0, 3.5), pch = 19)
plot(Frass ~ PupalWeight, col = CO2_treatment, data = subset(pupae, T_treatment =="elevated"), xlim = c(0, 0.5), ylim = c(0, 3.5), pch = 19)

#######################QUESTION 2###########################
#tossing 10 coins
dbinom(x = 0, size = 10, prob = 0.5)

#seeking 5 heads
dbinom(x = 5, size = 10, prob = 0.5)

#part 3
#simulate
x <- rnorm(n=100, mean=100, sd=5)

#histogram
par(mfrow=c(1,2))
hist(x)
boxplot(x)

#mean and sd
mean(x)
sd(x)

#median and interquartile range
median(x)
IQR(x)

#test the hypothesis
t.test(x, mu=100)

t.test(x, mu=90)

#Wilcox signed rank test
wilcox.test(x, mu=100)
wilcox.test(x, mu=90)

###########################QUESTION 3########################
pupae <- read.csv("pupae.csv")

#plot
plot(Frass ~ PupalWeight, data = pupae)

#summary
model <- lm(Frass ~ PupalWeight, data = pupae)
summary(model)

#diagnostic plots
par(mfrow=c(1,2))
library(car)




