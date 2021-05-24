## ----------------------------------------
#install.packages("Ecdat")
library(Ecdat)
data(Hdma)
names(Hdma)[11] <- "condo"
set.seed(111)


## ----------------------------------------
library(tidyverse) 
hdma <- Hdma %>%
  na.omit() 
glimpse(hdma)

## ----------------------------------------
library(rpart)
hm.tree <- rpart(deny ~ . , data = hdma, method = "class")
#install.packages("rpart.plot")
library(rpart.plot)
prp(hm.tree, extra = 1)


## ----------------------------------------
#install.packages("randomForest")
library(randomForest)
set.seed(1234)
rf.fit <- randomForest(deny ~ ., data = hdma, importance = TRUE)
rf.fit

## ----------------------------------------
varImpPlot(rf.fit, type = 1)


## ----------------------------------------
hdma$random_forest_prediction <- predict(rf.fit)
# can use with newdata

## ----------------------------------------
library(visreg)
visreg(rf.fit, "dmi")

