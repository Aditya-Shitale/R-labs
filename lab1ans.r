# **********Question 1**********
    rainfall <- c(0.1,0.6,33.8,1.9,9.6,4.3,33.7,0.3,0.0,0.1)
    rainfall
    print("Mean of rainfall ")
    # ****part a****
    mean(rainfall)
    sd(rainfall)
    # ****part b****
    cumsum(rainfall)
    # ****part c****
    which.max(rainfall)
    # ****part d****
    subset(rainfall,rainfall>20)
    # ****part e****
    mean( subset(rainfall,rainfall>4))
    # ****part f****
    rainfall[rainfall ==0 | rainfall ==0.6]
    
    
    
# **********Question 2**********
    # ****part a****
    len <- c(2.1,3.4,2.5,2.7,2.9)
    len
    dia <- c(0.3,0.5,0.6,0.9,1.1)
    dia
    # ****part b****
    cor(len,dia)
    # ****part c****
    volume = len*pi*(dia/2)*(dia/2)
    volume
    # ****part d****
    mean(volume)
    sd(volume)
    cv <- sd(volume) / mean(volume) * (100)
    cv
    # ****part e****
    len <- c(2.1,3.4,2.5,2.7,2.9)
    dia <- c(0.3,0.5,0.6,0.9,1.1)
    radii <- dia/2
    vol <- pi * radii^2 * len
    vol_con <- vol*1000     #conversion of volume  from cubic centimetres to cubic millimetres
     mean(vol_con)
     sd(vol_con)
     
     
     
# **********Question 3**********    
     # ****part a****
     x <- c(1,2,5,9,11)
     y <- c(2,5,1,0,23)
     intersect(x,y)
     # ****part b****
     setdiff(x,y)
     setdiff(y,x)    
     # ****part c****
    vec <- union(x,y)
    print(vec ==c(x,y))

    
    
# **********Question 4**********         
     # ****part a****
    matrix <- matrix(runif(100), nrow = 10, ncol = 10)
    matrix
    rowMeans(matrix)
    sd(rowMeans(matrix))
    # ****part b****
    matrix1 <- matrix(runif(1000), nrow = 10, ncol = 100)
    matrix1
    colMeans(matrix1)
    hist(matrix1)
    
    
    
# **********Question 5********** 
    # ****part a****
    cereal <- read.csv('cereal.csv')
    getwd()
    cereal
    head(cereal)
    str(cereal)
    # ****part b****
    cereal$totalcarb <- cereal$carbo + cereal$sugars
    cereal$totalcarb
    # ****part c****
    hot <- sum(cereal$type == "hot")
    hot
    # ****part d****
    length(unique(cereal$manufacturer))
    # ****part e****
    cereal[cereal$manufacturer == "K"]
    # ****part f****
    cereal[cereal$calories < 80 & cereal$vitamins > 20]
    # ****part g****
    trunc <- subset(cereal, cereal$sugars >= 1, select = c(name, calories, vitamins))
    trunc 
    # ****part h****
    output <- "cereal_subset.csv"
    write.csv(trunc, file=output)
    # ****part i****
    names(cereal)[names(cereal) == "Manufacturer"] <- "Producer"