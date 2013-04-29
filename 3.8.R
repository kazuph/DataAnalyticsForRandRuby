incomes1 <- c(100, 200, 250, 300, 400, 700)
incomes2 <- c(200, 200, 200, 200, 201)

library(ineq)
par(mfcol=c(1, 2))
Lc(incomes1, plot=TRUE)
Lc(incomes2, plot=TRUE)
ineq(incomes1)
ineq(incomes2)
