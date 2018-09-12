#############Character vector exercises############

## 1]
# If x <- "Good Morning! ", find out the number of characters in X
#a. 1
#b. 14
#c. 13

x <- "Good Morning! "
nchar(x)


## 2]
# Consider the character vector x <- c ("Nature's", "Best"), 
# how many characters are there in x?
#a. 12
#b. 13
#c. 8,5

x <- c("Nature's", "Best ")
nchar(x)


## 3]
# If x <- c("Nature's"," At its best ") , how many characters are there in x?
#a. 19
#b. 8, 13
#c. 8, 9 

x <- c("Nature's", "At  its best ")
nchar(x)



## 4]
# If fname <- "James" and lname <- "Bond",
# write some R code that will produce the output "James Bond". 


fname <- "James"
lname <- "Bond"

paste(fname,lname)



## 5]
# If m <- "Capital of America is Washington" then extract the string
# "Capital of America" from the character vector m. 

m <-"Capital of America is washigton"
substr(m, start=1, stop=18)



## 6]
# Write some R code to replace the first occurrence of the word "failed" 
# with "failure" in the string "Success is not final, failed is not fatal".

x <- "Success is not final, failed is not fatal"
sub("failed", "failure", x)



## 7]
# Consider two character vectors:
# Names <- c("John", "Andrew", "Thomas") and
# Designation <- c("Manager", "Project Head", "Marketing Head").
# Write some R code to obtain the following output.
# Names Designation
# 1 John Manager
# 2 Andrew Project Head
# 3 Thomas Marketing Head


Names <- c("John", "Andrew", "Thomas")
Designation <- c("Manager", "Project Head", "Marketing Head")

#cbind is not correct you can check the difference, data.frame is correct
cbind(Names,Designation)


data.frame(Names, Designation)



## 8]
# Write some R code that will initialise a character vector with fixed length of 10. 

vector(mode="character", length=10)


## 9]
# Write some R code that will generate a vector with
# the following elements, without using loops.
# "aa" "ba" "ca" "da" "ea" "ab" "bb" "cb" "db" "eb" "ac" "bc" "cc" "dc" "ec"
# "ad" "bd" "cd" "dd" "ed" "ae" "be" "ce" "de" "ee"


c(outer(letters[1:5], letters[1:5], FUN=paste, sep=""))
c(outer(letters[1:5], letters[1:5], FUN=paste0))



## 10]
# Let df <- data.frame(Date = c("12/12/2000 12:11:10")) . 
# Write some R code that will convert the given date to 
# character values and gives the following output:
# "2000-12-12 12:11:10 GMT" 

df <-data.frame(Date=c("12/12/2000 12:11:10"))

strptime(df$Date, "%m/%d/%Y %H:%M:%S")
