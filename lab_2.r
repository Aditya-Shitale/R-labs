# 1
num = as.integer(readline(prompt="Enter a number: "))
if(num == 0) {
  print("Zero is neither even nor odd")
}
if((num %% 2) == 0) {
  print(paste(num,"is Even"))
} else {
  print(paste(num,"is Odd"))
}

# 2
nu=as.integer(readline("Enter number: "))
c = 1
for(x in 1:nu){
  c=x*c
}
print(paste(c," is the answer using for loop"))

c2 = nu

c1 = 1
while(nu){
  c1=c1*nu
  nu=nu-1
}
print(paste(c1," is the answer using while loop"))

factval <- factorial(c2)
factval


# 3
num1=as.integer(readline("How many natural numbers to be summed up: "))
ans = 0
for( x in 1:num1) {
  ans = ans + x
}
print(paste(ans," is the sum of natural numbers till limit"))
c3 = num1
ans1 = 0
while(c3) {
  ans1 = ans1 +c3
  c3 = c3 - 1
}
print(paste(ans1," is the required answer using while loop"))
# using user defined function to do the same
calcSum <- function(num1){
  sumVal <- 0
  for(i in 1:num1){
    sumVal <- sumVal + i
  }
  
  return (sumVal)
}
cat("The sum using user defined function is ",calcSum(num1))

# 4
a= as.integer(readline("Which number to check: "))
a
primeOrNot <- function(a){
  for(i in  2:(a - 1)){
    if(a %% i == 0){
      return (FALSE)
    }
  }
  return (TRUE)
}
primeOrNot(a)

# 5
m <- data.frame(c(1,4),c(2,5),c(3,6))
print(m)
n <- data.frame(c(1,3,5),c(2,4,6))
print(n)
m1 <- as.matrix(m)
n1 <- as.matrix(n)

print(m1%*%n1)

