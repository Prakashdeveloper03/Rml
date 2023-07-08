# Load readr package
library(readr)

# Load iris dataset
df <- data.frame(iris3)

# Store dataframe to text file
write_delim(df, "data/iris_df.tsv", delim = "\t")

# Store dataframe to CSV file
write_csv(df, "data/iris_df.csv")

# Read a CSV file
data_csv <- read_csv("data/iris_df.csv")

# Read a text file
data_txt <- read_delim("data/iris_df.tsv", delim = "\t")

# Display some rows
head(data_csv)
