library(ggplot2)
library(dplyr)

ggplot(mtcars, aes(mpg, hp)) +
  geom_point()
