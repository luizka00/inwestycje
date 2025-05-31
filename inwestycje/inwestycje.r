#imports:
library(dplyr)
library(corrplot)

#import the dataset
data_with_quarters <- read.csv("inwestycje/dane.csv")
summary(data_with_quarters)

data <- data_with_quarters[, !(names(data_with_quarters) %in% c( "X" , "X.1", "Year", "Quarter"))]
rownames(data) <- NULL

data_cor = cor(data)
corrplot(data_cor)

