library(ggplot2)
qplot(displ, hwy, data=mpg)
qplot(displ, hwy, data=mpg, shape=factor(year))
