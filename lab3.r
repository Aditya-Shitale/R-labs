


matrix <- matrix(runif(100), nrow = 10, ncol = 10)
matrix
rowMeans(matrix)

sd(rowMeans(matrix))

matrix1 <- matrix(runif(1000), nrow = 10, ncol = 100)
matrix1

colMeans(matrix1)
hist(matrix1)
