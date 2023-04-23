library(arules)
library(arulesViz)
library(tidyverse)
library(readxl)
library(ggplot2)
library(lubridate)
library(plyr)
library(dplyr)
library(readxl)


#Reading dataset
retail <- read_excel('Online Retail.xlsx')
View(retail)
retail = retail[complete.cases(retail),]
retail

#Making factors
retail %>% mutate(Description = as.factor(Description))

retail %>% mutate(Country = as.factor(Country))

#Extract date and time
retail$Date = as.Date(retail$InvoiceDate)

retail$TransTime = format(retail$InvoiceDate, "%H:%M:%S")

retail$InvoiceNo = as.numeric(as.character(retail$InvoiceNo))

cbind(retail,retail$TransTime)
cbind(retail,retail$InvoiceNo)