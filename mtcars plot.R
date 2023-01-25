library(ggplot2)
library(dplyr)
library(ggrepel)
library(patchwork)
manual <- mtcars %>% 
  filter(between(disp, 100, 1000)) %>% 
  group_by(am) %>% 
  arrange(desc(am)) %>% 
  ungroup() %>% 
  slice(1:8)
automatic <- mtcars %>% 
  filter(between(disp, 100, 1000)) %>% 
  group_by(am) %>% 
  arrange(desc(am)) %>% 
  ungroup() %>% 
  slice(9:27)
p1 <- ggplot(manual, aes(mpg, hp)) +
  geom_point(aes(color = cyl))

p2 <- ggplot(automatic, aes(mpg, hp)) +
  geom_point(aes(color = cyl))
(p1 | p2)
