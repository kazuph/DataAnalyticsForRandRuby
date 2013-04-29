library(ggplot2)
qplot(mpg$hwy, geom="histogram", binwidth=0.5)
shapiro.test(mpg$hwy)
