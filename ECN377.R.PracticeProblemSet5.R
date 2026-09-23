cov <- -8
var <- 4
b1_hat <- cov/var
b1_hat

ybar <- 7
xbar <- 8
b1_hat <- 7/10
bo_hat <- ybar - b1_hat*xbar
bo_hat

x <- c(2,4,4)
y <- c(2,9,10)
x_bar <- mean(x)
y_bar <- mean(y)
num <- sum((x - x_bar) * (y - y_bar))
den <- sum((x - x_bar)^2)
beta_1_hat <- num / den
round(beta_1_hat, 2)

x <- c(8,8,5)
y <- c(0,1,11)
x_bar <- mean(x)
y_bar <- mean(y)
beta_1_hat <- sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar)^2)
beta_0_hat <- y_bar - (beta_1_hat * x_bar)
round(beta_0_hat, 2)


x_target <- 7  # Change to the x value given in problem
beta_1_hat <- 7/10
beta_0_hat <- 8
y_hat <- beta_0_hat + (beta_1_hat * x_target)
round(y_hat, 2)

x <- c(8,4,2)
y <- c(0,1,4)
x_target <- 1  # Change to the x value given in problem
x_bar <- mean(x)
y_bar <- mean(y)
beta_1_hat <- sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar)^2)
beta_0_hat <- y_bar - (beta_1_hat * x_bar)
y_hat <- beta_0_hat + (beta_1_hat * x_target)
round(y_hat, 2)

b0 <- 12/10
b1 <- 6/10
colgpa <- function(hsgpa){b0+b1*hsgpa}
colgpa(33/10)

b1 <- 2/10
b1*4

x <- c(2,1,6)
p <- c(0.2,0.3,0.5)
E_x <- sum(x * p)
round(E_x, 2)

x <- c(5,2,4)
y <- c(3,8,6)
p <- c(0.2, 0.3, 0.5)
E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)
cov_xy <- E_xy - (E_x * E_y)
round(cov_xy, 2)

x <- c(4,3,1)
y <- c(4,7,8)
p <- c(0.2, 0.3, 0.5)
E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)
E_x2 <- sum((x^2) * p)
cov_xy <- E_xy - (E_x * E_y)
var_x  <- E_x2 - (E_x^2)
beta_1 <- cov_xy / var_x
round(beta_1, 2)

x <- c(6,4,0)
y <- c(1,3,6)
n <- length(x)
x_bar <- mean(x)
y_bar <- mean(y)
S_xy <- sum((x - x_bar) * (y - y_bar)) / (n - 1)
round(S_xy, 2)
