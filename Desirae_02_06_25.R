library(ggplot2)
ggplot(data = mpg)
ggplot(mpg, mapping = aes(x = cty, y = hwy))
ggplot(mpg, aes(cty,hwy)) +
  geom_point()+
  geom_smooth(formula = y ~ x, method = "lm")
ggplot(mpg, aes(cty, hwy)) + 
  geom_point() +
  labs(x = "City MPG",
       y = "Highway MPG",
       title = "City vs Highway MPG")
ggplot(mpg, aes(cty, hwy, color = class)) + 
  geom_point() +
  scale_color_viridis_d()
ggplot(mpg, aes(cty, hwy)) +
  geom_point() +
  facet_grid(year ~ drv)


#mtcars
ggplot(data = mtcars)
ggplot(mtcars, mapping = aes(x = wt, y = mpg))
ggplot(mtcars, aes(wt,mpg)) +
  geom_point() +
  geom_smooth(formula = y ~ x, method = "lm")
ggplot(mtcars, aes(wt,mpg)) +
  geom_point() +
  labs(x = "Weight (Thousands)",
       y = "Miles Per Gallon",
       title = "Weight of car vs Miles Per Gallon")
ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) + 
  geom_point() + 
  scale_color_viridis_d()
ggplot(mtcars, aes(wt,mpg)) +
  geom_point() +
  facet_grid(cyl ~ gear)
ggplot(mtcars, aes(wt,mpg)) +
  geom_point() +
  coord_fixed()
ggplot(mtcars, aes(wt,mpg, color = factor(cyl))) +
  geom_point() +
  theme_test() +
  labs(x = "Weight (Thousands)",
       y = "Miles Per Gallon",
       title = "Weight of car vs Miles Per Gallon",
       color = "number of cylinders") +
  theme(
    legend.position = "bottom",
    axis.line.y.left = element_line(color = "green"),
    axis.line.x.bottom = element_line(color = "hotpink"),
    axis.title = element_text(size = 32),
    axis.text = element_text(size = 20),
    axis.line = element_line(linewidth = 1)
    
  )



       