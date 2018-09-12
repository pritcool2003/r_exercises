###############################Index_vector########################


###########################Exercise 1##############################

#Exercise 1
#If x <- c("ww", "ee", "ff", "uu", "kk"), what will be the output for x[c(2,3)]?
#a. "ee", "ff"
#b. "ee"
#c. "ff"

x <- c("ww", "ee", "ff", "uu", "kk")
x[c(2,3)]


###########################Exercise 2##############################

#Exercise 2
#If x <- c("ss", "aa", "ff", "kk", "bb"), what will be the third
#value in the index vector operation x[c(2, 4, 4)]?
#a. "uu"
#b. NA
#c. "kk"

x <- c("ss", "aa", "ff", "kk", "bb")

y <- x[c(2,4,4)]

y[3]

###########################Exercise 3##############################

# Exercise 3
# If x <- c("pp", "aa", "gg", "kk", "bb"), what will be the fourth value 
# in the index vector operation x[-2]?
# a. "aa"
# b. "gg"
# c. "bb"

x <- c("pp", "aa", "gg", "kk", "bb")
y <- x[-2]

y[4]

###########################Exercise 4##############################

# Exercise 4
# Let a <- c(2, 4, 6, 8) and b <- c(TRUE, FALSE, TRUE, FALSE), 
# what will be the output for the R expression max(a[b])? 


a <- c(2, 4, 6, 8)
b <- c(TRUE, FALSE, TRUE, FALSE)
d <- c(F,T,F,T)
max(a[b])


###########################Exercise 5##############################

# Exercise 5
# Let a <- c (3, 4, 7, 8) and b <- c(TRUE, TRUE, FALSE, FALSE),
#what will be the output for the R expression sum(a[b])?


a <- c (3, 4, 7, 8)

b <- c(TRUE, TRUE, FALSE, FALSE)

sum(a[b])



###########################Exercise 6##############################

#Exercise 6
#Write an R expression that will return the sum value of 10 for the 
#vector x <- c(2, 1, 4, 2, 1, NA)

x <- c(2, 1, 4, 2, 1, NA)
sum(x,na.rm=T)



###########################Exercise 7##############################

#Exercise 7
#If x <- c(1, 3, 5, 7, NA) write an r expression that will return the output 1, 3, 5, 7.

x <- c(1, 3, 5, 7, NA)

x[!is.na(x)]



###########################Exercise 8#############################


# Exercise 8
# Consider the data frame s <- data.frame(first= as.factor(c("x", "y", "a", "b", "x", "z")),
# second=c(2, 4, 6, 8, 10, 12)). Write an R statement that will return the 
# output 2, 4, 10, by using the variable first as an index vector. 


s <- data.frame(first= as.factor(c("x", "y", "a", "b", "x", "z")),
                second=c(2, 4, 6, 8, 10, 12))

s$second[(s$first=='x') | (s$first=='y')]

s$second[s$first %in% c('x', 'y')]   # alternative solution

###########################Exercise 9#############################

# Exercise 9
# What will be the output for the R expression (c(FALSE, TRUE)) || (c(TRUE, TRUE))?

(c(FALSE, TRUE)) || (c(TRUE, TRUE))




###########################Exercise 10############################

# Write an R expression that will return the positions of 3 and 7 in the
# vector x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 7, 2).

x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 7, 2)

which(x %in% c(3, 7))




################solved by ss########################

# Consider the data frame s <- data.frame(first= as.factor(c("x", "y", "a", "b", "x", "z")),
# second=c(2, 4, 6, 8, 10, 12)). Write an R statement that will return the 
# output 2, 4, 10, by using the variable first as an index vector. 


s <- data.frame(first= as.factor(c("x", "y", "a", "b", "x", "z")),
                second=c(2, 4, 6, 8, 10, 12))
s[s$first %in% c("x","y"),2 ]





# Write an R expression that will return the positions of 3 and 7 in the
# vector x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 7, 2).

x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 7, 2)

which(x %in% c(3,7) )

