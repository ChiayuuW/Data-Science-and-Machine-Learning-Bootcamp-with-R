# Date and Timestamps
Sys.Date()
today <- Sys.Date()
class(today)                           # 'Date'

D <- "1990-01-01"
class(D)                               # "character"
as.Date(D)                             # 'Date'

my_date <- as.Date(D)

# %d: Day of the month
# %m: Month(decimal number)
# %b: Month(abbreviated)
# %B: Month(full name)
# %y: Year(2 digits)
# %Y: Year(4 digits)
my_date2 <- as.Date("Nov-03-90", format = "%b-%d-%y")

as.Date("June, 01, 2002", format = "%B, %d, %Y")


# POSIXct
as.POSIXct("11:02:03", format = "%H:%M:%S")

# Strptime
strptime("11:02:01", format = "%H:%M:%S")

