####making a data frame######

my_dataframe <- read.csv("imaginary_data.csv")
print (my_dataframe)
summary (my_dataframe)

my_df <- data.frame (
  ID = c(1:4),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6),
  Leaf_mass = c(22, 15, 20, 24)
)
print (my_df)
summary (my_df)

###view the dataframe####
my_df$Leaf_area
my_df [2,]
my_df [2]
my_df [2,2]
my_df [2:3,1:2]
my_df$LMA <- my_df$Leaf_mass / my_df$Leaf_area

####Activity: create your own dataframe
Names <- c("Sam", "Daniel", "Ashlea", "Collins", "Grazi")
my_people <- data.frame (
  ID = c(Names),
  Age = c(26, 28, 25, 56, 26),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Commute_Time = c(15, 20, 40, 30, 25)
)
mean(my_people$Age)
mean(my_people$Commute_Time)
min(my_people$Age)
max(my_people$Commute_Time)

###Conditional statements
30 == 24
"A" == "B"

30 < 24
30 > 24

!(30 < 24)
30 != 24

!(24 < 30)

var1 <- 1
var2 <- "red"
(var1==1) & (var2=="red")
(var1==1) & (var2=="green")
(var1==1) | (var2=="red")
(var1==1) | (var2=="green")

###if-else statements
if (30 == 24)
  {
  print ("30 equals 24"
} else 
  { 
  print ("30 does not equal 24")
  }

##Functions
my_function <- function()
{
  print ("Hello WOrld")
}

my_function()

###return in functions
my_function <- function(x, y) {
  val <- x + y
}
my_function(1,2)

my_function2 <- function(x, y) {
  val <- x + y
  return(val)
} 
my_function2(1,2)
###Activity: decoding a function
my_function <- function(x,y) {
  if (x>y)
  {
    val <- x^2
    return(val)
  } else
  {
    val <- y^3
    return(val)
  }
}

#if the value assigned for x is greater than the value assigned 
#for y it will have an exponent of 2 and print that value
# if not then y will have an exponent of 3 and print that value
my_function(1)
#error:; y was not assigned a value
my_function(1,2)
#8

#activity: making a function
new_function <- function(x){
  random <- sample(1:5, 1)
  if(x == random) {
    print ("These two numbers are the same")
  } else 
  {
    print(random)
    print("These two numbers are not the same")
  }
}
new_function(1)

#activity: making your own function

activity_function <- function(x,y,z){
  if ((x>0) & (y>x) & (z<y)) {
    print("howdy there cowboy")
  } else
  {
    print("You are really bad at math")
  }
}
activity_function(1,3,2)
activity_function(1,2,3)
