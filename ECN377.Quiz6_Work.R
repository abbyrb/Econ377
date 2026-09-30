x <- c(2,5,2)
y <- c(12,7,9)
b1 <- cov(x, y) / var(x)
round(b1, 2)


x <- c(6,3,7)
y <- c(12,6,8)
b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
round(b0, 2)


x <- c(2,7,8)
y <- c(11,10,1)
x_target <- 4
b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
y_hat <- b0 + b1 * x_target
round(y_hat, 2)


b0 <- 5
b1 <- 9 / 10
x <- 15
y_hat <- b0 + b1 * x
round(y_hat, 2)


b0 <- -3
b1 <- 8 / 10
x <- 8
y <- 19
y_hat <- b0 + b1 * x
u_hat <- y - y_hat
round(u_hat, 2)



b1 <- 8 / 10
change_in_x <- 1
change_in_y <- b1 * change_in_x
round(change_in_y, 2)



b0 <- 2
b1 <- 4 / 10
x <- c(10,6,7)
y <- c(2,15,5)
y_hat <- b0 + b1 * x
residuals <- y - y_hat
SSR <- sum(residuals^2)
round(SSR, 2)



SST <- 262
SSR <- 152
SSE <- SST - SSR
round(SSE, 2)
