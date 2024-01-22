##############
#   Dplyr    #
##############

# Download a data set.
# install.packages('nycflights13')
library(dplyr)
library(nycflights13)

head(flights)
View(flights)

filter(flights, month == 9, day == 3, dep_time == 558)
flights[flights$month == 9 & flights$day == 3 & flights$dep_time == 558, ]

slice(flights, 1:5)

arrange(flights, year, month, day)

# Distinct(): Output the every value(not repeat)
distinct(select(flights, carrier))

# mutate():
mutate(flights, new_cal = arr_delay - dep_delay)
new_col <- flights$arr_delay - flights$dep_delay
mutate(flights, new_cal = new_col)

# Transmute(): Only print the result, not store the result into original data
transmute(flights, new_cal = arr_delay - dep_delay)

# summarise(): The output will have one row for each group.
summarise(flights, avg_air_time = mean(air_time, na.rm = TRUE))

# Return 10 rows from the data 'flights'
sample_n(flights, 10)

# Return 10% of rows in the data 'flights'
sample_frac(flights, 0.00002)
