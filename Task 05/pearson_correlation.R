x <- readline(prompt = "Enter a vector of x (separated by spaces): ") |>
  strsplit(" ") |>
  unlist() |>
  as.numeric()
y <- readline(prompt = "Enter a vector of y (separated by spaces): ") |>
  strsplit(" ") |>
  unlist() |>
  as.numeric()

# Pearson correlation using built-in function
cor_builtin <- cor(x, y, method = "pearson")
cat("Pearson correlation (Built-in):", cor_builtin, "\n")

# Pearson correlation without built-in function
pearson_custom <- function(x, y) {
  n <- length(x)
  mean_x <- mean(x)
  mean_y <- mean(y)
  num <- sum((x - mean_x) * (y - mean_y))
  den <- sqrt(sum((x - mean_x)^2) * sum((y - mean_y)^2))
  corr <- num / den
  return(corr)
}

cor_custom <- pearson_custom(x, y)
cat("Pearson correlation (Custom):", cor_custom, "\n")
