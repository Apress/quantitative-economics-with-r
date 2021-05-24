
###################################

#Quantitative Economics with R:
#A Data Science Approach

#Segment 3 Wrangling data

###################################


# tidyverse package
library(tidyverse)


# input hypothetical data
surv_id <- c(1,2,3,4,5,6)
payment <- c(1000,700,600,1200,800,500)
hours <- c(7,5,3,6,7,4)
gender <- c("F","M","F","M","M","M")
age <- c(28,52,37,35,59,43)


# make tibble (dataframe)
labour <- tibble(surv_id,
                 payment, hours,
                 gender,age)


# print tibble (dataframe)
labour


# glimpse of tibble
glimpse(labour)


# write dataframe to csv file
write_csv(labour, "labour.csv")


# read in the data
labour2 <- read_csv("labour.csv")
labour2


# pipe operator %>%
# f(x) same as x %>% f()

# can chain commands do f then g
# x %>% f() %>% g()

# filter the data
labour_filter <- labour %>%
  filter(gender == "F")

labour_filter


# mutate, create new variable
labour_mutate <- labour %>%
  mutate(wage = payment /
           hours)

labour_mutate



# select variables
labour_select <- labour %>%
  select(hours, gender)

labour_select


# group by and then summarize
labour_summary <- labour %>%
  group_by(gender) %>%
  summarize(mean = mean(hours))

labour_summary

