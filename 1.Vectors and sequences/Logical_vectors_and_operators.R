#######Logical vectors and operators#####
##Before you start, enter the following code: data <- mtcars
#to load the mtcars data

data <-mtcars

#view the data in mtcars
View(data)

## 1] Use logical operators to output only those rows of  data  
#where column  mpg  is between 15 and 20 (excluding 15 and 20).

subset(data, mpg >15 & mpg <20)

##or

data[data$mpg > 15 & data$mpg < 20,]

## 2] Use logical operators to output only those rows of  data  where 
#column  cyl  is equal to 6 and column  am  is not 0.


subset(data, cyl== 6 & am!= 0)

##or

data[data$cyl == 6 & data$am != 0,]

## 3] Use logical operators to output only those rows of  data  where 
#column  gear  or  carb  has the value 4.


subset(data, gear == 4 | carb == 4)

##or

data[data$gear == 4 | data$carb == 4,]

## 4] Use logical operators to output only the even rows of  data.

data[c(F,T),]


## 5] Use logical operators and change every fourth element in column  mpg  to 0.

data$mpg[c(F,F,F,T)] <- 0


## 6] Output only those rows of  data  where columns  vs  and  am 
#have the same value 1, solve this without using  ==  operator.

data[data$vs & data$am,]

## 7] (TRUE + TRUE) * FALSE , what does this expression evaluate to and why?

(TRUE + TRUE) * FALSE


## 8] Output only those rows of  data  where at least  vs  or  am  
#have the value 1, solve this without using  ==  or  !=.

data[data$vs | data$am,]


## 9] Explain the difference between  | ,  || ,  &  and  &&.

# && evaluates only one of the condition and only if it's TRUE will it 
# evaluate the second condition. & on the other hand evaluates both expressions
# and compares them. | and || have the same difference as the above
# so if there is a condition as 3<4 || 7/"b" it wont flag an error as 3<4 is TRUE so 
# 7/"b" is never evaluated. However 3<4 | 7/"b" will flag an error as you cannot 
# divide by a character. && is generally used in control flow (ifelse) and & is used
# in vectorization


## 10] Change all values that are 0 in the column  am  in  data  to 2.

## why it cannot be solved like 5th one


data$am[data$am == 0] <- 2



## 11] Add 2 to every element in the column  vs  without using numbers.

data$vs <- data$vs + 2*(TRUE)


## 12] Output only those rows of  data  where  vs  and  am  have different 
#values, solve this without using  ==  or  !=.


data[xor(data$vs,data$am),]
