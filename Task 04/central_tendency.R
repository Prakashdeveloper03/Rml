# Read input from the user
numbers <- readline(prompt = "Enter a vector of numbers (separated by spaces): ") |>
  strsplit(" ") |>
  unlist() |>
  as.numeric()

# Mean using built-in function
mean_builtin <- mean(numbers)
cat("Mean :", mean_builtin, "\n")

# Median using built-in function
median_builtin <- median(numbers)
cat("Median :", median_builtin, "\n")

# Mode using custom function
mode_custom <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}
mode_value <- mode_custom(numbers)
cat("Mode :", mode_value, "\n")

# Variance using built-in function
variance_builtin <- var(numbers)
cat("Variance :", variance_builtin, "\n")

# Standard deviation using built-in function
sd_builtin <- sd(numbers)
cat("Standard Deviation :", sd_builtin, "\n")
