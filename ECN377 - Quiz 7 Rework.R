var_X  <- 3
var_Y  <- 10
cov_XY <- -3.8
a      <- 2
b      <- -2

ans_q4 <- (a^2 * var_X) + (b^2 * var_Y) + (2 * a * b * cov_XY)
cat("Q4 Answer:", round(ans_q4, 2), "\n")


x <- c(1,5,6,8)
y <- c(7,5,7,5)
p <- c(0.3,0.2,0.1,0.4)
E_X  <- sum(x * p)
E_Y  <- sum(y * p)
E_X2 <- sum((x^2) * p)
E_Y2 <- sum((y^2) * p)
E_XY <- sum((x * y) * p)
var_X  <- E_X2 - E_X^2
var_Y  <- E_Y2 - E_Y^2
cov_XY <- E_XY - (E_X * E_Y)
ans_q5 <- cov_XY / (sqrt(var_X) * sqrt(var_Y))
cat("Q5 Answer:", round(ans_q5, 2), "\n")


E_X <- 4
E_X_squared <- 32
a      <- 5
b      <- -6
var_X <- E_X2 - (E_X)^2
sd_X  <- sqrt(var_X)
ans_q3 <- abs(a) * sd_X
ans_q3



x_vals <- c(3,7,8,9,10)
y_vals <- c(4,12,4,10,5)
k      <- 4  # observation index
fit <- lm(y_vals ~ x_vals)
residuals_vec <- resid(fit)
ans_q6 <- residuals_vec[k]
ans_q6


known_residuals <- c(1.6,-1.1,0.1,-0.5)
ans_q7 <- -sum(known_residuals)
cat("Q7 Answer:", round(ans_q7, 2), "\n")


R^2 = SSE / SST = 1 - (SSR / SST)
R_squared <- 0.67
SSE <- 108
SST <- SSE/R_squared
SSR <- SST - SSE
SSR

n     <- 47
S2_y  <- 9
ans_q10 <- (n - 1) * S2_y
ans_q10


library(wooldridge)
data("wage1")
row_num <- 9
reg <- lm(wage ~ tenure, data = wage1)
ans_q11 <- reg$residuals[row_num]
cat("Q11 Answer:", round(ans_q11, 2), "\n")
