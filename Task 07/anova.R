group <- rep(c("A", "B", "C"), each = 10)
factor1 <- rep(c("X", "Y"), each = 15)
factor2 <- rep(c("M", "N"), each = 5, times = 3)
response <- rnorm(30, mean = rep(c(10, 20, 30), each = 10), sd = 2)

# One-way ANOVA
one_way <- aov(response ~ group)
cat("One-Way ANOVA:\n")
summary(one_way)

# Two-way ANOVA
two_way <- aov(response ~ group + factor1)
cat("\nTwo-Way ANOVA:\n")
summary(two_way)

# Three-way ANOVA
three_way <- aov(response ~ group + factor1 + factor2)
cat("\nThree-Way ANOVA:\n")
summary(three_way)
