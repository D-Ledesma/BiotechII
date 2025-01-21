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

#assign a new value 