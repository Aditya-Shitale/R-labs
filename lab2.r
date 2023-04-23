len <- c(2.1,3.4,2.5,2.7,2.9)
len
dia <- c(0.3,0.5,0.6,0.9,1.1)
dia

cor(len,dia)

volume = len*pi*(dia/2)*(dia/2)
volume

mean(volume)
sd(volume)

cv <- sd(volume) / mean(volume) * (100)
cv

