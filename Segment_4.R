###################################

#Quantitative Economics with R:
#A Data Science Approach

#Segment 4 Graphing data

###################################

library(tidyverse)

# AER package
library(AER)


# load CAschools data
# Stock and Watson econometrics text 
data("CASchools")


# use ggplot for histogram
ggplot(data = CASchools, # what data?
       aes(x = math)) + # what variables?
  geom_histogram() # what shape or geom?


# change histogram appearance
ggplot(CASchools, 
       aes(x = math)) +
  geom_histogram(col = "black", 
                 fill = "white")


# histogram for variable income
ggplot(CASchools, 
       aes(x = income)) + # what variables?
  geom_histogram(col = "black", 
                 fill = "white")


# plot relationship between income and math
ggplot(CASchools, 
       aes(x = income, # variable on x
          y = math)) + # variable on y
  geom_point()  # points


# change appearance of scatter plot
  ggplot(CASchools, 
         aes(x = income, # variable on x
             y = math)) + # variable on y
  geom_point(alpha = 0.4) + # points
  theme_bw()


# plot relationship between income and math
ggplot(CASchools, 
       aes(x = income,
          y = math)) +
  geom_point(alpha = 0.4) + 
  geom_smooth(method = "lm", se = F) +
  theme_bw()



# plot relationship between income and math
ggplot(CASchools, 
       aes(x = income,
      y = math)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = F) +
  geom_smooth(col = "red", se = F) +
  theme_bw()


# plot relationship between income and math
ggplot(CASchools, 
       aes(x = log(income), # using log
            y = math)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = F) +
  geom_smooth(col = "red", se = F) +
  theme_bw()

