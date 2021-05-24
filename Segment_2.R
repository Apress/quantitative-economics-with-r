###################################

#Quantitative Economics with R:
  #A Data Science Approach

#Segment 2 Vectors and dataframes

###################################


## Vectors


# make vector
Price <- c(10,3,15) 


# print vector
Price 


# lower case p error
price 


# square bracket error
Price <- c[10,3,15]


# find the length
length(Price) 



# extract element
Price[1] 


# extract elements
Price[2:3]


# make another vector
Quantity <- c(25,3,20)


# print vector
Quantity


# compute expenditure
Expenditure <- Price * Quantity
Expenditure


# calculate total expenditure
Total_expenditure <- sum(Expenditure) 
Total_expenditure



## dataframes

# make data frame
Exp_data <- data.frame(Price, Quantity)



# extract second variable
Exp_data[,2]


# extract quantity variable
Exp_data$Quantity


# print data frame
Exp_data

