install.packages(c('neuralnet','keras','tensorflow'),dependencies = T)
library(tidyverse)
library(neuralnet)
iris <- iris %>% mutate_if(is.character, as.factor)
set.seed(245)
data_rows <- floor(0.80 * nrow(iris))
train_indices <- sample(c(1:nrow(iris)), data_rows)
train_data <- iris[train_indices,]
test_data <- iris[-train_indices,]
model = neuralnet(
  Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,
  data=train_data,
  hidden=c(4,2),
  linear.output = FALSE
)



plot(model,rep = "best")
pred <- predict(model, test_data)
labels <- c("setosa", "versicolor", "virginca")
prediction_label <- data.frame(max.col(pred)) %>%     
  mutate(pred=labels[max.col.pred.]) %>%
  select(2) %>%
  unlist()




table(test_data$Species, prediction_label)
check = as.numeric(test_data$Species) == max.col(pred)
accuracy = (sum(check)/nrow(test_data))*100
print(accuracy)