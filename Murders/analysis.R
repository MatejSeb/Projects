library(tidyverse)
load("tda/murders.rda")

murders %>% mutate(abb, rate) %>% ggplot(aes(abb, rate)) + geom_bar(width = 0.5, stat = "identity", colour = "black") +
  coord_flip()

ggsave("figs/barplot.png")