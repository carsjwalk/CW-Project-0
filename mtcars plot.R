library(ggplot2)
library(dplyr)
mtcars %>% 
  filter(between(disp, 100, 1000)) %>% 
  ggplot(aes(mpg, hp)) +
  geom_point(aes(color = am))

