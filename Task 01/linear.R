# store x and y values as numeric vectors
x <- c(0, 1, 2, 3, 4)
y <- c(2, 3, 5, 4, 6)

# plot a scatter plot with lines connecting the points
plot(x, y, type = "b")

# calculate the sum of x and y
sum_x <- sum(x)
sum_y <- sum(y)

# calculate the product of x and y
xy <- x * y

# calculate the square of x
x_square <- x^2

# calculate the sum of xy and sum of x squares
sum_xy <- sum(xy)
sum_x_square <- sum(x_square)

# calculate the number of observations
n <- length(x)

# calculate the slope and intercept of the linear regression line
slope <- ((n * sum_xy) - (sum_x * sum_y)) / ((n * sum_x_square) - (sum_x^2))
intercept <- (1 / n) * (sum_y - (slope * sum_x))

# calculate the predicted values of y using the linear regression line
lr <- slope * x + intercept

# print the predicted values
print(lr)

# plot the linear regression line
plot(x, lr, type = "b")

# fit a linear model using the built-in lm() function
lm <- lm(y ~ x)

# print a summary of the linear model
print(summary(lm))

# predict new values using the linear model
predictions <- predict(lm, data.frame(x))

# print the predicted values
print(predictions)
