##**********************************1**********************************##
  ##step1
Dataset = read.csv('Dataset.csv',header=TRUE)
View(Dataset)
  ##step2
Dataset$Age = ifelse(is.na(Dataset$Age), ave(Dataset$Age, FUN = function (x)mean(x, na.rm = TRUE)), Dataset$Age)
Dataset$Age
Dataset$Salary = ifelse(is.na(Dataset$Salary), ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)), Dataset$Salary)
Dataset$Salary 
 ##step3
Dataset$Country = factor(Dataset$Country, 
                         levels = c('France','Spain','Germany'), 
                         labels = c(1.0, 2.0 , 3.0 ))
Dataset$Purchased = factor(Dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0, 1))
Dataset$Purchased[is.na(Dataset$Purchased)] <- 0
as.factor(Dataset$Purchased)

    ##step4
library(caTools)
set.seed(123)
split = sample.split(Dataset$Purchased, SplitRatio = 0.8)
split

#Creating the training set and test set separately
training_set = subset(Dataset, split == TRUE)
test_set = subset(Dataset, split == FALSE)
training_set
test_set

##**************************************2*************************************##
data("iris")
iris
dim(iris)
names(iris)
str(iris)
attributes(iris)
iris[1, ]
iris[1:10, 'Sepal.Length']
summary(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
range(iris$Sepal.Length)
quantile(iris$Sepal.Length)
var(iris$Sepal.Length)
hist(iris$Sepal.Length)
plot(iris$Sepal.Length)
table(iris$Sepal.Length)
pie(iris$Sepal.Length)
barplot(iris$Sepal.Length)
cor(iris$Sepal.Length, iris$Sepal.Width)
cov(iris[,1:4])
boxplot(iris)
plot(iris)
#ScatterPlot
plot(iris$Sepal.Width, iris$Sepal.Length, main='Scatterplot', pch=1)
pairs(iris[,1:4], pch = 1)
install.packages("scatterplot3d") # Install
library("scatterplot3d") # load
scatterplot3d(iris[,1:3])
x <- matrix(iris$Sepal.Length, iris$Sepal.Width)
heatmap(x)
install.packages("ggplot2")
library(ggplot2)
head(iris)
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()

##***********************************3*********************************##
A<-c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
B<-c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)
n<-length(A)
meanOfA = mean(A)
meanOfB = mean(B)
meanOfA
meanOfB
SDofA = sd(A)
SDofA
SDofB = sd(B)
SDofB
C = 0
for ( z in 1:n) {
  C = C + ((A[z]-meanOfA)*(B[z]-meanOfB))
}
C = C/((n-1) *SDofA *SDofB)
C
if(C>0){
  print("POSITIVE")
}
if(C<0){
  print("NEGATIVE")
}
C1<- (C*SDofA*SDofB)
C1

