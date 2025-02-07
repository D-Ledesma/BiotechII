data("mtcars")
scatter.smooth(x=mtcars$mpg, y=mtcars$disp, main="Disp ~ mpg")
cor.test(mtcars$mpg, mtcars$disp)
cor_result <- cor.test(mtcars$mpg, mtcars$disp)
cor_result$estimate
cor_result$p.value

install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars))

data(trees)
corrplot(cor(trees))
cor.test(trees$Girth, trees$Height)
cor.test(trees$Girth, trees$Volume)
cor.test(trees$Height, trees$Volume)
scatter.smooth(x=trees$Girth, y=trees$Height)

Class <- data.frame (
  flower_height = c(1,2,3,4,5,6,7,8,9,10),
  number_of_petals = c(11,12,13,14,15,16,17,18,19,20),
  length_of_roots = c(21,22,23,24,25,26,27,28,29,30)
)

t_test_result <- t.test(Class$flower_height, Class$number_of_petals )
print(t_test_result)
t_test_result$p.value


data2 <- data.frame(
  group = rep(c("Group1", "Group2", "Group3"), each = 10), 
  value = rnorm(30)
)
res_aov <- aov(value ~ group, data = data2)
TukeyHSD(res_aov)

linear_mod <- lm(dist ~ speed, data = cars)
data("cars")

linear_mod2 <- lm(mpg ~ disp + qsec, data = mtcars)
summary(linear_mod2)

#is the speed and distance between cars significant using the "cars" data
activity <- t.test(cars$speed, cars$dist)
scatter.smooth(x = cars$speed, y = cars$dist,
               main = "speed vs distance",
               xlab = "Speed",
               ylab = "Distance"
)
