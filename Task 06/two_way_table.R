library(dplyr)

cookies <- data.frame(
  DAY = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"),
  Chocolate_Chip = c(55, 50, 45, 55, 55, 30, 20),
  Oatmeal_Raisin = c(30, 35, 20, 25, 40, 15, 20),
  Sugar = c(20, 25, 30, 15, 10, 30, 15),
  Peanut_Butter = c(15, 20, 25, 20, 30, 25, 30),
  Snickerdoodle = c(10, 15, 10, 15, 10, 20, 25)
)

# Mean Values for Each type of cookie grouped by day
aggregated_data <- aggregate(. ~ DAY, data = cookies, FUN = mean)
print(aggregated_data)

# Sum
aggregated_data_sum <- aggregate(Chocolate_Chip ~ DAY, data = cookies, FUN = sum)
print(aggregated_data_sum)

# Max
aggregated_data_max <- aggregate(Sugar ~ DAY, data = cookies, FUN = max)
print(aggregated_data_max)

# Min
aggregated_data_min <- aggregate(Snickerdoodle ~ DAY, data = cookies, FUN = min)
print(aggregated_data_min)

# Contingency Table
table(cookies$Chocolate_Chip, cookies$DAY)
table(cookies$Peanut_Butter, cookies$DAY)
