library(ggplot2)
p <- ggplot(movies)
p + geom_histogram(aes(year))
