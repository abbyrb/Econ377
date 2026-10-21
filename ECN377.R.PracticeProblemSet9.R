# Question 2
library('wooldridge')
data('wage1')
b1 <- 0.0047
percent_change_x <- 12
percent_change_y <- 100*b1*percent_change_x
round(percent_change_y, 2)

# Question 3
b0 <- 5.11
b1 <- 0.16
  # Add log(1000) to the original intercept
log(1000)
new_b0 <- b0 + log(1000)
round(new_b0, 2)

# Question 5 **
b1 <- 0.27
b0 <- 2.3
percent_change_x <- - 2
percent_change_y <- b1*percent_change_x
round(percent_change_y, 2)

# Question 6 **
data('ceosal1')
reg <- lm(log(salary) ~ roe, data = ceosal1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
change_in_x <- 5 # change in roe
percent_change_y <- 100*b1*change_in_x
round(percent_change_y, 2)

# Question 7
reg2 <- lm(salary ~ log(sales), data = ceosal1)
b1 <- reg2$coefficients[2]
change_in_x <- 10
change_in_y <- (b1/100)*change_in_x
round(change_in_y, 2)

# Question 9 **
  # An omitted variable causes bias in OLS if it satisfies two conditions: 
    #It affects the dependent variable. 
    #It is correlated with the explanatory variable. 

# Question 11
error_var <- 173
SST_x <- 22
var_b1 <- error_var / SST_x
round(var_b1, 2)

# Question 12
error_sd <- 7
Sx_2 <- 4
n <- 8
SST_x <- (n-1) * Sx_2
sd <- error_sd / sqrt(SST_x)
round(sd, 2)

# Question 13 **
  # Holding everything else fixed, which change makes var(b1_hat) smaller?
      ## More spread-out values of (a larger SST_x).

# Question 14 **
error_sd <- 2
x <- c(2,5,6,8,10)
SST_x <- sum((x-mean(x))^2)
sd <- error_sd / sqrt(SST_x)
round(sd, 2)

# Question 15 **
n <- 56
SSR <- 540
error_var <- SSR / (n-2)
round(error_var, 2)

# Question 16 **
n <- 10
SSR <- 462
SST_x <- 12
error_hat <- sqrt(SSR/(n-2))
standard_error_b1_hat <- error_hat / sqrt(SST_x)
round(standard_error_b1_hat, 2)

# Question 18
data('wage1')
reg3 <- lm(wage ~ educ, data = wage1)
sigma_hat <- sqrt(sum(reg3$residuals^2) / (nrow(wage1) - 2))
round(sigma_hat, 2)
summary(reg3)$sigma #data checker

# Question 19
library('wooldridge')
data('wage1')
SST_x <- sum( (wage1$educ - mean(wage1$educ))^2 )
round(SST_x, 2)
