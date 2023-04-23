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

#Wilcoxon signed rank test
wilcox.test(x, mu=100)
wilcox.test(x, mu=90)



