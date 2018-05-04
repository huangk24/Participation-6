library(ggplot2)
library(dplyr)
diamonds_sample <- sample_n(diamonds, 100)

#1
carat_price <- ggplot(data = diamonds_sample) +
  geom_point(mapping = aes(x = carat, y = price, color = carat, size = carat))

#2
cut_price <- ggplot(data = diamonds_sample) +
  geom_boxplot(mapping = aes(x = cut, y = price, color = cut, size = carat, 
                             fill = cut))

#3
color_price <- ggplot(data = diamonds_sample) +
  geom_boxplot(mapping = aes(x = color, y = price, color = color, 
                             fill = color))

#4 
clarity_price <- ggplot(data = diamonds_sample) +
  geom_boxplot(mapping = aes(x = clarity, y = price, color = clarity, 
                             size = carat, fill = clarity))

#5
cut_clarity <- ggplot(data = diamonds_sample) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

                 