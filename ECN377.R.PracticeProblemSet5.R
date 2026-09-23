cov <- 4
var <- 7
sb1 <- cov/var
sb1

ybar <- 7
xbar <- 8
sb1 <- (7/10)
b0 <- ybar - (sb1*xbar)
b0

x <- c(1,5,2)
y <- c(3,3,5)
sb1 <- cov(x,y)/var(x)
sb1

x <- c(4,5,7)
y <- c(1,6,9)
sb0 <- y - (sb1*x)
sb0

sb0 <- 2
sb1 <- (7/10)
x <- 11
sy <- sb0 + (sb1*x)
sy

x <- c(8,2,3)
y <- c(10,5,5)

b0 <- (17/10)
b1 <- (6/10)
colgpa <- function(hsgpa) {b0 + b1*hsgpa}
colgpa(37/10)

b1 <- 3/10
b1*9

5*6*0.5


x <- c(3,4,3)
y <- c(3,8,8)
p <- c(0.2,0.3,0.5)
cov <- (sum(x*y*p) - (sum(x*p)*sum(y*p)))
cov

x <- c(0,1,5)
y <- c(0,5,7)
p <- c(0.2,0.3,0.5)
cov <- (sum(x*y*p) - (sum(x*p)*sum(y*p)))
var <- (sum((x^2)*p)-(sum(x*p)^2))
cov/var


x <- c(0,3,6)
y <- c(6,0,3)
cov(x,y)

x <- c(4,5,7)
y <- c(1,6,9)
b1 <- cov(x,y)/var(x)
b0 <- (mean(y) - (b1*mean(x)))
b0

x <- c(8,2,3)
y <- c(10,5,5)
b1 <- cov(x,y)/var(x)
b0 <- (mean(y) - (b1*mean(x)))
yhat <- b0 + b1*2
yhat

x <- c(6,4,5)
p <- c(0.2,0.3,0.5)
sum(x*p)