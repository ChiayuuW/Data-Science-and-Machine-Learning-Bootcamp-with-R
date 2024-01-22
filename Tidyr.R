library(tidyr)
library(data.table)

comp <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
yr <- c(1998, 1999, 2000, 1998, 1999, 2000, 1998, 1999, 2000)
q1 <- runif(9, min = 0, max = 100)
q2 <- runif(9, min = 0, max = 100)
q3 <- runif(9, min = 0, max = 100)
q4 <- runif(9, min = 0, max = 100)

df <- data.frame(comp = comp, year = yr,
                 Qrt1 = q1,
                 Qrt2 = q2,
                 Qrt3 = q3,
                 Qrt4 = q4)

# The variables before Qrt1 are unchanged. 
gather(df, Quarter, Revenue, Qrt1:Qrt4)

# Pipe line
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

stocks

stocks %>%
  gather(stocks_name, price, X:Z) %>%
  spread(time, price)

# Separate()
df <- data.frame(new.col = c(NA, "a-x", "b-y", "a-c"))
df

df_sep <- separate(df, col = new.col, into = c('ABC', "XYZ"), sep = '-')

# Unite()
unite(df_sep, new_joined_col, ABC, XYZ, sep = '~')
