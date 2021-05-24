###################################

#Quantitative Economics with R:
#A Data Science Approach

#Segment 5 Causal inference

###################################



## ---------------------------------------------------------------------------
# load package
library(tidyverse)


## ---------------------------------------------------------------------------
# read in data
women <- read_csv("women.csv")
glimpse(women)


## ---------------------------------------------------------------------------
# summarize by reserved 
women %>%
  group_by(reserved) %>% 
  summarize(mean_water = mean(water)) 


## ---------------------------------------------------------------------------
# use randomization inference
# install.packages(ri2)
library(ri2)
dat <- data.frame(Y = women$water,
     Z = women$reserved ,
     cluster = women$GP)
head(dat)


## ---------------------------------------------------------------------------
declaration <- with(dat, {
declare_ra(clusters = cluster )
})


## ---------------------------------------------------------------------------
# conduct randomization inference
ri2_out <- conduct_ri(Y ~ Z,
   sharp_hypothesis = 0, declaration = declaration, data = dat)


## ---------------------------------------------------------------------------
# ask for summary 
summary(ri2_out)


## ---------------------------------------------------------------------------
plot(ri2_out)


## ---------------------------------------------------------------------------
library(tidyverse)
ajr <- read_csv("complete.data.iv.csv")


## ---------------------------------------------------------------------------
# use data of AJR
 ajrb <- ajr %>% filter(baseco == 1)


## ---------------------------------------------------------------------------
# load packages
library(AER)
library(texreg)
# OLS
# logpgp95 is log GDP per capita
# average protection against risk of expropriation
ol1 <- lm(logpgp95 ~ avexpr, data = ajrb)
screenreg(ol1)


## ---------------------------------------------------------------------------
# logem4 settler mortality (historical)
mod1 <- ivreg(logpgp95 ~ avexpr |logem4, data = ajrb)
mod2 <- ivreg(logpgp95 ~ avexpr + lat_abst | logem4 + lat_abst, 
              data = ajrb)
screenreg(list(mod1, mod2))

