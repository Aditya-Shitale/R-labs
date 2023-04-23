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