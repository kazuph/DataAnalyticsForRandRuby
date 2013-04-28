library(ggplot2)
p <- ggplot(mpg)
p + geom_point(aes(cty, hwy))
p + geom_point(aes(cty, hwy), position='jitter')
