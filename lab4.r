# Read in the cereal data
cereal <- read.csv('random1.csv')
getwd()
cereal

head(cereal)

str(cereal)
cereal$X52 <- cereal$X35 + cereal$X72
cereal$X52

