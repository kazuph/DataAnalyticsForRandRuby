library(ggplot2)
p <- ggplot()
# p <- p + layer(geom='point')
p <- p + geom_point(data=mpg, aes(displ, hwy, shape=(factor(year))))
