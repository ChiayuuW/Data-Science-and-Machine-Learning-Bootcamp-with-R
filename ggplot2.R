library(ggplot2)
# Data (no plot shown yet)
ggplot(data = mtcars) 
# Data and Aesthetics
ggplot(data = mtcars, aes(x = mpg, y = hp))
# Data, Aesthetics, and Geometries
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp))
pl + geom_point()

# Data, Aesthetics, Geometries, and Facets
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point() 
pl + facet_grid(cyl ~ .)

# Data, Aesthetics, Geometries, Facets, and Statistics
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point() 
pl + facet_grid(cyl ~ .) + stat_smooth()

# Data, Aesthetics, Geometries, Facets, Statistics, and Coordinates
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point() 
pl2 <- pl + facet_grid(cyl ~ .) + stat_smooth()
pl2 + coord_cartesian(xlim = c(15, 25))
# Data, Aesthetics, Geometries, Facets, Statistics, Coordinates, and Theme
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point() 
pl2 <- pl + facet_grid(cyl ~ .) + stat_smooth()
pl2 + coord_cartesian(xlim = c(15, 25)) + theme_bw()

