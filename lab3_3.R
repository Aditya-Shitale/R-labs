pupae <- read.csv("pupae.csv")

#plot
plot(Frass ~ PupalWeight, data = pupae)

#summary
model <- lm(Frass ~ PupalWeight, data = pupae)
summary(model)

#diagnostic plots
par(mfrow=c(1,2))
library(car)
