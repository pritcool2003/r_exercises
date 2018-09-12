##### Missing values #####

## 1] If X <- c (22,3,7,NA,NA,67) what will be the output for the R statement length(X)

X <- c(22,3,7,NA,NA,67)
length(X)


## 2] If X = c(NA,3,14,NA,33,17,NA,41) write some R code that will remove 
#all occurrences of NA in X.
#a. X[!is.na(X)]
#b. X[is.na(X)]
#c. X[X==NA]= 0

X = c(NA,3,14,NA,33,17,NA,41)

X[!is.na(X)]


## 3] If Y = c(1,3,12,NA,33,7,NA,21) what R statement will replace 
#all occurrences of NA with 11?
#a. Y[Y==NA]= 11
#b. Y[is.na(Y)]= 11
#c. Y[Y==11] = NA

Y = c(1,3,12,NA,33,7,NA,21)

Y[is.na(Y)]= 11

Y


## 4] If X = c(34,33,65,37,89,NA,43,NA,11,NA,23,NA) then what will 
#count the number of occurrences of NA in X?
#a. sum(X==NA)
#b. sum(X == NA, is.na(X))
#c. sum(is.na(X))

X = c(34,33,65,37,89,NA,43,NA,11,NA,23,NA) 
sum(is.na(X))


## 5] Consider the following vector W <- c (11, 3, 5, NA, 6)
#Write some R code that will return TRUE for value of W missing in the vector. 


W <- c (11, 3, 5, NA, 6)

is.na(W)


## 6] Load 'Orange' dataset from R using the command data(Orange).
#Replace all values of age=118 to NA. 


data <- Orange

Orange$age[Orange$age == 118] <- NA

Orange[Orange$age == 118,]


## 7] Consider the following vector A <- c (33, 21, 12, NA, 7, 8) .
#Write some R code that will calculate the mean of A without the missing value.


A <- c (33, 21, 12, NA, 7, 8)
mean(A, na.rm = T)
mean(A)


## 8] Let:
#c1 <- c(1,2,3,NA) ;
#c2 <- c(2,4,6,89) ;
#c3 <- c(45,NA,66,101) .
#If X <- rbind (c1,c2,c3, deparse.level=1) ,
#write a code that will display all rows with missing values.

c1 <- c(1,2,3,NA)
c2 <- c(2,4,6,89)
c3 <- c(45,NA,66,101) 
X <- rbind (c1,c2,c3, deparse.level=1)
X
X[!complete.cases(X),]


## 9] Consider the following data obtained from 
#df <- data.frame (Name = c(NA, "Joseph", "Martin", NA, "Andrea"),
#                 Sales = c(15, 18, 21, 56, 60), 
#                Price = c(34, 52, 21, 44, 20), 
#                  stringsAsFactors = FALSE)
# Write some R code that will return a data frame which 
# removes all rows with NA values in Name column


df <- data.frame(Name = c(NA, "Joseph", "Martin", NA, "Andrea"),
                 Sales = c(15, 18, 21, 56, 60), Price = c(34, 52, 21, 44, 20), 
                 stringsAsFactors = FALSE)

df[is.na(df$Name),]



## 10] Consider the following data obtained from 
#df <- data.frame (Name = c(NA, "Joseph", "Martin", NA, "Andrea"),
#                 Sales = c(15, 18, 21, 56, 60), 
#                Price = c(34, 52, 21, 44, 20), 
#                  stringsAsFactors = FALSE)
# Write some R code that will remove all rows with NA values and
# give the following output

df <- data.frame(Name = c(NA, "Joseph", "Martin", NA, "Andrea"),
                 Sales = c(15, 18, 21, 56, 60), Price = c(34, 52, 21, 44, 20), 
                 stringsAsFactors = FALSE)

df[!is.na(df$Name),]

