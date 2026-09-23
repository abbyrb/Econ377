cov <- 2
var <- 1
sb1 <- cov/var
sb1

ybar <- 12
xbar <- 5
b1 <- 5/10
#SLR -> Y = B0 + B1*X + U
bo <- ybar - b1*xbar
bo


x <- c(8,4,5)
y <- c(8,1,5)
x_bar <- mean(x)
y_bar <- mean(y)
num <- sum((x - x_bar) * (y - y_bar))
den <- sum((x - x_bar)^2)
b1_hat <- num / den
b1_hat


x <- c(4,8,2)
y <- c(4,2,2)
x_target <- 9  # Change to the x value given in problem
x_bar <- mean(x)
y_bar <- mean(y)
b1_hat <- sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar)^2)
b0_hat <- y_bar - (b1_hat * x_bar)
y_hat <- b0_hat + (b1_hat * x_target)
round(y_hat, 2)

b0 <- 10/10
b1 <- 3/10
colgpa <- function(hsgpa) {b0 + b1*hsgpa}
colgpa(23/10)
x <- c(3,1,5)
p <- c(0.2, 0.3, 0.5)
E_x <- sum(x * p)
round(E_x, 2)


x <- c(0,6,2)
y <- c(1,0,2)
p <- c(0.2, 0.3, 0.5)
E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)
cov_xy <- E_xy - (E_x * E_y)
round(cov_xy, 2)



x_bar <- 5
y_bar <- 12
b1_hat <- 5/10
b0_hat <- y_bar - (b1_hat * x_bar)
round(b0_hat, 2)


b1 <- 7/10
b1*9
