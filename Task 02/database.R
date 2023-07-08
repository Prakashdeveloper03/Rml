# Load required libraries
library(DBI)
library(RPostgres)

# Establish a connection to the 'dvdrental' database using the 'Postgres' driver
con <- dbConnect(Postgres(), dbname = "dvdrental", user = "postgres", password = "0812")

# List all tables in the database
dbListTables(con)

# Print a summary of the connection object
summary(con)

# Execute a query to select the first name of all actors
dbGetQuery(con, "SELECT first_name FROM actor")

# Execute a query to select the first and last name of all actors
dbGetQuery(con, "SELECT first_name, last_name FROM actor")

# Execute a query to select all columns from the 'actor' table
dbGetQuery(con, "SELECT * FROM actor")

# Execute a query to select the first 5 rows from the 'actor' table
dbGetQuery(con, "SELECT * FROM actor LIMIT 5")

# Execute a query to select 5 rows starting from the 6th row of the 'actor' table
dbGetQuery(con, "SELECT * FROM actor LIMIT 5 OFFSET 5")

# Execute a query to select all columns from the 'actor' table where the first name is 'Grace'
dbGetQuery(con, "SELECT * FROM actor WHERE first_name = 'Grace'")

# Execute a query to select all columns from the 'actor' table where the last name is 'Johansson'
dbGetQuery(con, "SELECT * FROM actor WHERE last_name = 'Johansson'")

# Execute a query to select all columns from the 'actor' table where the actor_id is between 12 and 14
dbGetQuery(con, "SELECT * FROM actor WHERE actor_id > 12 and actor_id < 15")

# Execute a query to select all columns from the 'actor' table where the actor_id is between 12 and 15
dbGetQuery(con, "SELECT * FROM actor WHERE actor_id BETWEEN 12 and 15")

# Disconnect from the database
dbDisconnect(con)
