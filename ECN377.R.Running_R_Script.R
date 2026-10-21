## Find standard deviation of aX + b ##
   # Var(X) = E[X^2] - (E[X]^2)
   # sd(X) = sqrt(var)
   # sd(aX + b) = |a|* sd(X) 
E_x <- 
E_xsquared <- 
var <- E_xsquared - (E_x^2)
sd <- sqrt(var)
ans <- 4 * sd
round(ans, 2)


## Find Var(aX + bY) ##
   # = a^2*Var(x) + b^2*Var(y) + 2ab*Cov(x,y)
Var_x <- 
Var_y <- 
Cov_xy <- 
a <- 
b <- 
ans <- a^2*Var_x + b^2*Var_y + (2*a*b)*Cov_xy
round(ans, 2)


## Find Cor(x,y) ##
   # Cov(x,y) = E[XY] - E[X]*E[Y]
   # Sd(x) = sqrt(var) --> sqrt(E[X^2] - (E[X]^2)) --> sqrt(sum(x^2 * p) - sum(x * p)^2)
   # Cor(x,y) = Cov(x,y)/(sd(x)*sd(y))
x <- c()
y <- c()
p <- c()
cov_xy <- sum(x*y*p) - sum(x*p)*sum(y*p)
sd_x <- sqrt(sum(x^2 * p) - sum(x * p)^2)
sd_y <- sqrt(sum(y^2 * p) - sum(y * p)^2)
cor_xy <- cov_xy/(sd_x*sd_y)
round(cor_xy, 2)


## Find the rediual of the _ observation ##
x <- c()
y <- c()
reg <- lm(y~x)
round(resid(reg)[3], 2)

## Find the _ residual ##
   # OLS residual always sum to zero
e <- c()
e6 <- -sum(e)
round(e6, 2) 


## Find the sum of the product of x and the residuals ##
x <- c()
y <- c()
reg <- lm(y ~ x)
u_hat <- resid(reg)
sum(x * u_hat) #if you get an insanely small negative number like "-8.7e-15" put 0


## Find the sum of squared residuals SSR ##
   # R2 = SSE/SST
   # SST = SSE + SSR --> Sy_squared*(n-1)
   # SSR = SST - SSE --> (n-1)*S_uhat_squared
SSE <- 
R2 <-
SST <- SSE/R2
SSR <- SST - SSE
SSR

## Find the total sum of squares SST ##
n <- 
Sy_squared <- 
SST <- Sy_squared*(n-1)
SST

## Find SSE ##
   # SSE = SSR - SST --> S_yhat_squared*(n-1)
n <-
S_yhat_squared <- 
SSE <- S_yhat_squared*(n-1)


## What is the OLS residual of the worker in row __? ##
library('wooldridge')
data('wage1')
reg <- lm(wage ~ tenure, data = wage1)
reg$residuals[__]


## Find sample mean of y ##
b0_hat <- 
b1_hat <- 
x_bar <- 
y_bar <- b0_hat + b1_hat*x
y_bar

## If y is multiplied by c, both b0_hat and b1_hat are multipled by c ##
## If x is multiplied by c, b1_hat is multiplied by 1/c and b0_hat does not change ##
  # BUT inside of a "log" these do not apply -> b1_hat does not change; only b0_hat changes

## Find the OLS slope ##
library('wooldridge')
data('ceosal1')
reg <- lm(salary ~ sales, data = ceosal1)
reg
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
# measured in dollars rather than 1000s:
new_b1 <- b1*1000 # Rescale by multiplying by 1000

## Level-Level Regression ##
   # change_in_y = b1 * change_in_x
b1 <- 
change_in_x <- 
change_in_y <- b1*change_in_x
round(change_in_y, 2)

## Level-Log Regression: Find what percent does y change when x rises by __ for level-log regression ##
   # change_in_y = (b1/100%) * change_in_x
b1 <- 
change_in_x <- 
change_in_y <- (b1/100)*change_in_x
round(change_in_y, 2)


## Log-Level Regression: Find what percent does y change when x rises by __ for log-level regression ##
   # % change_in_y = b1 * 100% * change_in_x
b1 <- 
change_in_x <- 
percent_change_y <- 100*b1*change_in_x
round(percent_change_y, 2)


## Log-Log Regression: Find what percent does y change when x rises by __ for log-log regression ##
   # % change_in_y = b1 * % change_in_x
b1 <- 
percent_change_x <- 
percent_change_y <- b1*percent_change_x
round(percent_change_y, 2)


## Find the log-level regression lm(log(wage) ~ exper, data = wage1). ##
   #By about what percent does predicted wage change with __ more years of experience?
library('wooldridge')
data('wage1')
reg <- lm(log(wage) ~ exper, data = wage1)
reg
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
percent_change_x <- 
percent_change_y <- 100*b1*percent_change_x
round(percent_change_y, 2)

## Regression: log(salary_hat) = 5.11 + 0.16*log(sales) -> If salary is measured in dollars instead (every salary times 1000), what is the new intercept? ##
b0 <- 
b1 <- 
  # Add log(1000) to the original intercept
log(1000)
new_b0 <- b0 + log(1000)
round(new_b0, 2)

# An omitted variable causes bias in OLS if it satisfies two conditions: 
    # It affects the dependent variable. 
    # It is correlated with the explanatory variable. 

# Find the variance of b1_hat with the error variance and SST_x
   # SST_x = (n-1)*Sx^2
error_var <- 
SST_x <- 
var_b1_hat <- error_var / SST_x
round(var_b1_hat, 2)

# Find estimates of standard deviation for b1_hat ##
   # sd(b1_hat) = error_sd / sqrt(SST_x)
error_sd <- 
Sx_2 <- 
n <- 
SST_x <- (n-1) * Sx_2
sd <- error_sd / sqrt(SST_x)
round(sd, 2)


# Calculate the standard deviation of the OLS slope estimator sd(b1_hat) with a vector of x values
error_sd <- 
x <- c()
SST_x <- sum((x-mean(x))^2)
sd <- error_sd / sqrt(SST_x)
round(sd, 2)

# Find the estimate of the error variance (error_var) with n and SSR ##
n <- 
SSR <- 
error_var <- SSR / (n-2)
round(error_var, 2)

# Find the standard error se(b1_hat) using SSR, n-2, and SST_x
n <- 
SSR <- 
SST_x <- 
error_hat <- sqrt(SSR/(n-2))
standard_error_b1_hat <- error_hat / sqrt(SST_x)
round(standard_error_b1_hat, 2)

# Find Standard error of the intercept se(b0_hat)
n <- 
SSR <- 
SST_x <- 
x_bar <-   # Sample mean of X (required for b0_hat)
error_hat <- sqrt(SSR / (n - 2))
standard_error_b0_hat <- error_hat * sqrt((1 / n) + (x_bar^2 / SST_x))
round(standard_error_b0_hat, 2)

# Find standard error of regression (sigma_hat) using a regression line
data('')
reg <- lm()
sigma_hat <- sqrt(sum(reg$residuals^2) / (nrow(wage1) - 2))
round(sigma_hat, 2)
summary(reg)$sigma #data checker

# Holding everything else fixed, which change makes var(b1_hat)...?
    ## smaller: More spread-out values of (a larger SST_x)
    ## greater: a larger error variance (error_var) 

