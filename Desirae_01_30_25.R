###check your dataframe
data(ToothGrowth)
summary(ToothGrowth)
head(ToothGrowth)
class(ToothGrowth)
str(ToothGrowth)
dim(ToothGrowth)
names(ToothGrowth)
#data transformations -dplyr
filter(ToothGrowth, len >5 )
arrange(ToothGrowth, len)
select(ToothGrowth, len, supp)
mutate(ToothGrowth,
       dose_per_lenth = len/dose)
summarize(ToothGrowth,
          mean_length = mean(len),
          median_dose = median(dose))
ToothGrowth %>% 
  filter(len > 5) %>%
  mutate(dose_per_length = dose/len) %>%
  summarise(mean_dose = mean(dose))
ToothGrowth %>%
  group_by(len) %>%
  summarise(mean_len = mean(len))


install.packages("nycflights13")
library(nycflights13)
data("flights")

flights %>%
  filter(month == 7 | month == 8 | month == 9)
arrange(flights, dep_delay)
arrange(flights, arr_time)
select(flights, month, day, dep_time)
mutate(flights, 
       speed = distance/air_time*60, print(speed))
delays <- flights %>%
  group_by(origin) %>%
  summarize(
    delay = mean(arr_delay, na.rm = TRUE)
  )
plot(my_people$Age, my_people$Commute_Time,
xlab = "Age",
ylab = "Commute",
main = "Age vs Commute",
pch = ifelse(my_people$ID == "Sam", 19, 3),
col = ifelse(my_people$ID == "Sam", "blue", "orange"))
