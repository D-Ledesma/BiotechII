ggplot(mtcars, aes(mpg,hp, color = factor(gear))) +
  geom_point(mapping = aes(color = factor(gear))) +
  geom_smooth(formula = y~x, method = "lm") +
  scale_color_viridis_d() +
  coord_fixed(0.05) +
  labs(x = "Miles Per Gallon",
       y = "Horsepower",
       title = "Horsepower vs Miles Per Gallon",
       color = "Number of Gears") +
  theme_test() +
  theme(
    legend.position = "right"
  )
ggplot(mpg, aes(x = "", fill = manufacturer)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  theme_() +
  facet_grid(. ~ class)


ggplot(mpg, aes(x = class, y = hwy)) +
  geom_violin()

data("Orange")
ggplot(Orange, aes(age, circumference)) +
  geom_line(mapping = aes(color = Tree)) +
  theme_test() +
  labs(x = "Age",
       y = "Circumference",
       title = "Age of Different Trees vs Their Circumference",
       color = "Trees") +
  scale_color_manual(values = c(1, 2, 3, 4, 5))
