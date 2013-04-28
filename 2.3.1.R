mean(x <- 1:10)
a <- 1
a + 1
a
`+`(a, 1)
my_function <- function(x, y = 5){
    x + y
}
my_function(1, 2)
my_function(1)

l <- c(1, 2, 3, 4, 5)
sapply(l, my_function)
