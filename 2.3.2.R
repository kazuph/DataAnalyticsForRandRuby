x <- 10
if (x > 20) {
    print("x is greater then 20")
} else {
    print("x is less then 20")
}
x <- 0
repeat {
    if (x > 10) {
        break
    } else {
        print(x);
        x <- x + 1
    }
}
x <- 0
while (x < 10) {
    x <- x + 1
    print(x);
}
for ( x in 1:10 ) print(x)
