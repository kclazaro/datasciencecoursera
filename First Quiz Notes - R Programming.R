x <- 4

x <- c(4, TRUE)
x <- c(1,3, 5)
y <- c(3, 2, 10)

cbind(x, y)


x <- list(2, "a", "b", TRUE)
class(x[[1]])

x <- 1:4 
y <- 2:3
x <- 4L 

a <- c(4, "a", TRUE)

c <- c(1,3, 5)
d <- c(3, 2, 10)
cbind(c,d)

l <- 1:4
m <- 2
l + m




x <- c(3, 5, 1, 10, 12, 6)

#returns 0 for all values <6
x[x < 6] <- 0
x[x <= 5] <- 0
x[x %in% 1:5] <- 0





#Adds the NAs in a particular column in a table
sum(is.na(d$Ozone))

#Gets the mean of a column without the NAs
mean(d$Ozone, na.rm = TRUE)

complete.cases(d)

# subset with complete.cases to get complete cases
d[complete.cases(d), ]

# or subset with `!` operator to get incomplete cases
d[!complete.cases(d), ]

# or use na.omit() to get same as d[complete.cases(d), ]
na.omit(d)

#subset of table when Ozone > 31 and Temp > 90
e <- d[ which(d$Ozone>31 & d$Temp>90), ]
mean(e$Solar.R)

#using the subset() function 
f <- subset(d, Month==6)
mean(f$Temp)

g <- subset(d, Month==5)
max(g$Ozone, na.rm = TRUE)