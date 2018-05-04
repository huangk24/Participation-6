library(ggplot2)
library(dplyr)
diamonds_sample <- sample_n(diamonds, 100)

#1
carat_price <- ggplot(data = diamonds_sample) +
  geom_point(mapping = aes(x = carat, y = price, color = carat, size = carat))
