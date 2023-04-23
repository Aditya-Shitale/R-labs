## 1. Find Sum, Mean and Product of a Vector in R
      vec = c(1.1, 2, 3.0, 4.2)
      vec
      sum_vec = sum(vec)
      sum_vec
      mean_vec = mean(vec)
      mean_vec
      product_vec = prod(vec)
      product_vec
      
      vec1 = c(1.1,NA, 2, 3.0,NA)
      vec1
      sum_vec1 = sum(vec1, na.rm = TRUE)
      sum_vec1
      mean_vec1 = mean(vec1, na.rm = TRUE)
      mean_vec1
      product_vec1 = prod(vec1, na.rm = TRUE)
      product_vec1
      
## 2. Count Number of Occurrences of Certain Character in String in R
## Case 1: str = c("$I%Love!R programming %","cs^e%portal", "le%.5%rty.in","join2022%")
## Find the count of character “%” and “r” in the string.
      library(stringr)
      str = c("$I%Love!R programming %","cs^e%portal", "le%.5%rty.in","join2022%")
      
      count_percent = sapply(str, str_count, pattern = "%")
      count_percent
      count_r = sapply(str, str_count, pattern = "r")      
      count_r
      
## 3. Write a R program to create an 3 dimensional array of 24 elements using the dim()function.
      array_3d = array(1:24, dim = c(2, 3, 4))
      array_3d
      
## 4. Write a R program to print the numbers from 1 to 100 and print "Buy" for multiples of 4, print "Now" for multiples of 5, and print "BuyNow" for multiples of both.
      for (i in 1:100) {
        if (i %% 4 == 0 && i %% 5 == 0) {
          print("BuyNow")
        } else if (i %% 4 == 0) {
          print("Buy")
        } else if (i %% 5 == 0) {
          print("Now")
        } else {
          print(i)
        }
      }
      

## 5. Write a R program to create the system's current date with and without time.
      current_date = Sys.Date()
      current_date
      current_time = Sys.time()
      current_time
      
## 6. Task will be based on mtcars dataset. This dataset consists of information regarding car
##      characteristics like weight, fuel consumption, transmission type etc. Solve thefollowing
##      queries in R using Select, Filter, Mutate, Summarise and Arrange functions.
      
      mtcars=read.csv("mtcars.csv")
      mtcars
      ##1. Select random n rows.
      library(dplyr)
      n = 10
      mtcars %>% sample_n(n)
      ##2. Select random fraction of rows
      fraction = 0.1
      mtcars %>% sample_frac(fraction)
      ##3.  Select cyl, hp, and wt columns from the mtcars dataset.
      mtcars %>% select(cyl, hp, wt)
      
      ##4. Filter the data by taking only cars that have an automatic transmission.
      mtcars %>% filter(am == 0)
      
      ##5. Retrieve cars with horsepower larger than 225.
      mtcars %>% filter(hp > 225)
      
      ##6. Calculate the mean & median for the variable mpg.
      mtcars %>% summarize(mean_mpg = mean(mpg), median_mpg = median(mpg))
      
      ##7. Sort the variable hp in descending order.      
      mtcars %>% arrange(desc(hp))
      
      
      
##7. Answer the following with respect to the given dataset. Write the corresponding R code for
##all the questions     
      
        ##a) Read the following data into R and give the resulting dataframe a name .
            df = read.csv("datasetl7.csv")
            df
        ##b) Add a day number to the dataset you read in above (Monday=1,sunday=7).
            df = df %>% mutate(day_number = case_when(
              Day == "Monday" ~ 1,
              Day == "Tuesday" ~ 2,
              Day == "Wednesday" ~ 3,
              Day == "Thursday" ~ 4,
              Day == "Friday" ~ 5,
              Day == "Saturday" ~ 6,
              Day == "Sunday" ~ 7
            ))
            df
        ##c) Delete the ’Day’ variable from the dataset and only keep the daynumber that you addedin the above question.
            df = df %>% select(-Day)
            df
            
        ##d) On which daynumber did you observe the most number of birds?
            df %>% 
              group_by(day_number) %>% 
              summarize(total_birds = sum(nrbirds)) %>% 
              arrange(desc(total_birds)) %>% 
              slice_head(n=1) %>% 
              pull(day_number)
            
        ##e) Sort the dataset by number of birds seen.
            df %>% arrange(desc(nrbirds))
            

      
      
      
      
      
      
      
      
      
      
      