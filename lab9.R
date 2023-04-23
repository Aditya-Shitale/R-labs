
##Step 1: Import the data
    set.seed(678)
    titanic <-read.csv("https://raw.githubusercontent.com/guru99-edu/R-Programming/master/titanic_data.csv")
    head(titanic)
    tail(titanic)
    shuffle_index <- sample(1:nrow(titanic))
    head(shuffle_index)
    titanic <- titanic[shuffle_index, ]
    head(titanic)
##Step 2:Clean the dataset   
    library(dplyr)
    # Drop variables
    clean_titanic <- titanic %>% select(-c(home.dest, cabin, name, ticket)) %>% mutate(pclass = factor(pclass, levels = c(1, 2, 3), labels = c('Upper', 'Middle', 'Lower')),survived = factor(survived, levels = c(0, 1), labels = c('No', 'Yes'))) %>% 
      na.omit()
    glimpse(clean_titanic)

##Step 3: Create train/test set
    create_train_test <- function(data, size = 0.8, train = TRUE) {
      n_row = nrow(data)
      total_row = size * n_row
      train_sample <- 1: total_row
      if (train == TRUE) {
        return (data[train_sample, ])
      } else {
        return (data[-train_sample, ])
      }
    }
    
    data_train <- create_train_test(clean_titanic, 0.8, train = TRUE)
    data_test <- create_train_test(clean_titanic, 0.8, train = FALSE)
    dim(data_train)
    dim(data_test)
    prop.table(table(data_train$survived))
    prop.table(table(data_test$survived))

    install.packages("rpart.plot")    
## Step 4 Build the model   
    library(rpart)
    library(rpart.plot)
    fit <- rpart(survived~., data = data_train, method = 'class')
    rpart.plot(fit, extra = 106)
  
## Step 5 Make a prediction    
    predict_unseen <- predict(fit,data= data_test, type = 'class')
    table_mat <- table(predict_unseen)
    table_mat1 <- table(data_test$survived)
    table_mat    
    table_mat1
    
## Step 6 Measure performance    
    accuracy_Test <- sum(diag(table_mat)) / sum(table_mat1)
    accuracy_Test
    print(paste('Accuracy for test', accuracy_Test))    

## Step 7 Tune the hyper-parameters    
    accuracy_tune <- function(fit) {
      predict_unseen <- predict(fit, data=data_test, type = 'class')
      table_mat <- table(data_test$survived, predict_unseen)
      accuracy_Test <- sum(diag(table_mat)) / sum(table_mat)
      accuracy_Test
    }    
    control <- rpart.control(minsplit = 4,minbucket = round(5 / 3), maxdepth = 3, cp = 0)
    tune_fit <- rpart(survived~., data = data_train, method = 'class', control = control)
    accuracy_tune(tune_fit)
    