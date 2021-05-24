###################################

#Quantitative Economics with R:
#A Data Science Approach

#Segment 6 Simulation

###################################


## ------------------------------------------
# 10 draws from a uniform distribution
library(tidyverse)
x <- runif(10, min = 0, max = 100)
xdata <- data.frame(x)
ggplot(xdata, aes(x = x)) +
  geom_histogram(col = "black", fill = "white")
mean(x)


## ------------------------------------------
x <- runif(10, min = 0, max = 100)
xdata <- data.frame(x)
ggplot(xdata, aes(x = x)) +
  geom_histogram(col = "black", fill = "white")
mean(x)


## ------------------------------------------
num_loops <- 1000
sample_size <- 10
mean_x <- numeric(num_loops)
# for loop
for(i in 1:num_loops) {
x <- runif(sample_size, min = 0, max = 100)
mean_x[i] <- mean(x)
}

data_mean_x <- data.frame(mean_x)
ggplot(data_mean_x, aes(x = mean_x)) +
  geom_histogram(col = "black", fill = "white")
mean(mean_x)

