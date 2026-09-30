x <- c(8, 2, 5)
y <- c(7, 10, 5)
b1 <- cov(x, y) / var(x)
round(b1, 2)


x <- c(3, 4, 3)
y <- c(7, 11, 8)
b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
round(b0, 2)

x <- c(6, 5, 1)
y <- c(7, 12, 10)
x_target <- 3
b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
y_hat <- b0 + b1 * x_target
round(y_hat, 2)

b0 <- 2
b1 <- 5/10
x_target <- 5
y_hat <- b0 + b1 * x_target
round(y_hat,2)

b0 <- 3
b1 <- 9/10
x <- 17
y_hat <- b0 + b1 * x
y <- 19
u_hat <- y - y_hat
round(u_hat,2)

b1_hat <- 4/10
change_in_x <- 3
change_in_yhat <- b1_hat*change_in_x
round(change_in_yhat,2)

b0 <- 3
b1 <- 3 / 10
x <- c(7, 3, 4)
y <- c(13, 3, 7)
y_hat <- b0 + b1 * x
residuals <- y - y_hat
SSR <- sum(residuals^2)
round(SSR, 2)

SST <- 323
SSR <- 150
SSE <- SST-SSR
round(SSE,2)

SST <- 300
SSR <- 157
R2 <- 1 - (SSR / SST)
round(R2, 2)

SSE <- 52
SST <- 279
R2 <- SSE / SST
round(R2, 2)

SST <- 239
SSR <- 168
unexplained_fraction <- SSR / SST
round(unexplained_fraction, 2)

SST <- 326
R2 <- 78 / 100
SSR <- SST * (1 - R2)
round(SSR, 2)
