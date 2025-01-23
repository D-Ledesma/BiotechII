#set working directory
setwd("C:/Users/ledes/Desktop/Biotechniques 2/Rstudio-1-21-25")

####assigningvariables
x <- 1
x<-1
x < -1
(X <--1)
X == x
X != x

#####Types of data

#Numeric
x <- 1.0

#integer
x <- 1L

#Characters
x <- "one"

#Logical
x <- TRUE ; y <- FALSE

#Complex
x <- 1+1i

#####Types of data structures

#vector
vector <- c(1,2,3,4)
vector <- 1:4

#matrix
matrix <- matrix (vector, nrow = 2, ncol = 2)

#Dataframe 
df <- data.frame(id = c("A","B","C","D"), values = vector)

###Vectors

#Create empty vectors
num_vec <- numeric(5)

#fill vectors
num_vec <- c(1,2,3,4)

num_vec[5] <- 5

#view specific value in vector
num_vec[3]

#assign a new value to vector
num_vec[3] <- num_vec[5]

#create vectors using c()
cha_vec <- c("this", "is", "a", "vector")

#access multiple indices of vector
cha_vec[c(1,4)]

#name vectors
names(num_vec) <- c("first", "second", "third", "fourth", "fifth")

#access indices by name
num_vec[c("second","fourth")]


###ACTIVITY: CREATING AND EDITING VECTORS####

one <- c(1, 2, 3, 4, 5, 6)
#checking
one

two <- c("apples", "bananas", "pears", "grapes", "oranges")
#checking
two

names(one) <- (two)
#checking
one[c("bananas")]

four <- c(one[c(1, 3, 5)])
#checking
four

five <- names(four)
#checking
five


#math and vectors
x <- 3
y <- 6

#multiplication
(x+y)*(x-y)

#division
y/x

#exponent
x^2

#square root
sqrt(x)

#log base 10
log10(y)

#natural log
log(y)

#log base 3
log(x = x, base = 3)


#ACTIVITY: VECCTOR MATH#######
Leaf_area <- c(2.5, 1.6, 2.2, 2.6)
Leaf_mass <- c(22, 15, 20, 24)

#1
mean(Leaf_area)
mean(Leaf_mass)

#2
LMA <- c(22/2.5, 15/1.6, 20/2.2, 24/2.6)

#3
mean(LMA)
