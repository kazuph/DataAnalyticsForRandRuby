library(ggplot2)
p <- ggplot(movies)
p + stat_bin(aes(year, ..count..))
