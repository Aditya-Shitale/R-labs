

# Check if the number is even or odd
num = as.integer(readline(prompt="Enter a number: "))
{
  if (num %% 2 == 0) {
    print("The number is even.")
  } else {
    print("The number is odd.")
  }
}


## Factorial using for loop
num = as.integer(readline(prompt="Enter a number: "))
factorial <- 1
for(i in 1:num){
  factorial <- factorial*i
}
print(paste("The factorial of", num, "is", factorial))

## Factorial using while loop
n = as.integer(readline(prompt="Enter a number: "))
factorial <- function(n) {
  result <- 1
  i <- 1
  while (i <= n) {
    result <- result * i
    i <- i + 1
  }
  print(paste("The factorial of", n, "is", result))
}
## factorial using inbuilt func
factorial(5)

## sum of natural numbers using for loop
n = as.integer(readline(prompt="Enter a number: "))
{
  sum = 0
  for (i in 1:n) {
    sum = sum + i
  }
  cat("The sum of", n, "is", sum)
  
}

## sum of natural numbers using while loop
n = as.integer(readline(prompt="Enter a number: "))
{
  i = 1
  sum = 0
  while (i <= n) {
    sum =sum + i
    i = i + 1
  }
  cat("The sum of", n, "is", sum)
}

## sum of natural numbers using user defined
n = as.integer(readline(prompt="Enter a number: "))
sum_of_naturals(n) 


## 
is_prime2 <- function(n) {
  if (n <= 1) {
    return("Not a prime number")
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return("Not a prime number")
    }
  }
  return("Prime number")
}
