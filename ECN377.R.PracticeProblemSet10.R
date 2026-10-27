## Question 2 ##
b1 <- 0.06
  change_in_x <- -1
  percent_change_y <- 100*b1*change_in_x
  percent_change_y
round(percent_change_y, 2)

## Question 3 ##
library('wooldridge')
data('bwght')
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
reg$coefficients
b1 <- reg$coefficients[2]
  percent_change_x <- 20
  percent_change_y <- b1*percent_change_x
round(percent_change_y, 2)

## Question 4 ##
  # Suppose you could draw 1,000 different random samples from the same population and compute 
    # b1_hat in each one. If OLS is unbiased (SLR1–SLR4 hold), which statement is correct?
# "The average of the 1,000 estimates is close to b1"

## Question 5 ##
  # Why do we prefer an unbiased estimator with a smaller variance var(b1_hat)?
# "Its estimates land closer to b1 from sample to sample, so any one estimate is more reliable."

## Question 7 ##
n <- 25
  Sx <- 0.5 
  SST_x <- (n-1)*(Sx^2)
  simga_hat <- 8.4
standard_error_b1_hat <- simga_hat / sqrt(SST_x)
round(standard_error_b1_hat, 2)

## Question 8 ##
x <- c(2,3,6,7,9)
SSR <- 76
n <- 5
sigma_hat <- sqrt(SSR/(n-2))
SST_x <- sum((x-mean(x))^2)
se_b1_hat <- sigma_hat / sqrt(SST_x)
round(se_b1_hat, 2)

## Question 9 ##
sd_b1_hat <- 1.89
sd_b1_hat/sqrt(4)

## Question 10 ##
data('ceosal1')
reg2 <- lm(salary ~ roe, data = ceosal1)
SST_x <- sum((ceosal1$roe - mean(ceosal1$roe))^2)
n <- nrow(ceosal1)
SSR <- sum(resid(reg2)^2)
sigma_hat <- sqrt(SSR/(n-2))
se_b1_hat <- sigma_hat / sqrt(SST_x)
se_b1_hat
summary(reg2)

## Question 12 ##
x_1 <- 4
x_2 <- 12
y_hat <- 2 + 3.6*x_1 + 1.3*x_2
y_hat

## Question 13 ##
change_in_x1 <- 4
change_in_x2 <- 3
b1_hat <- 3.7
b2_hat <- -2.1
change_in_yhat <- b1_hat*change_in_x1 + b2_hat*change_in_x2
round(change_in_yhat, 2)

## Question 14 ##
data('wage1')
reg3 <- lm(wage ~ educ + exper + tenure, data = wage1)
reg3$coefficients
b0 <- reg3$coefficients[1]
b1 <- reg3$coefficients[2]
b2 <- reg3$coefficients[3]
b3 <- reg3$coefficients[4]
predicted_change <- b0 + b1*14 + b2*10 + b3*5
round(predicted_change, 2)

## Question 15 ##
data('wage1')
reg3 <- lm(wage ~ educ + exper + tenure, data = wage1)
change_in_t <- 3
predicted_change <- b3*change_in_t
round(predicted_change, 2)

## Question 16 ##
data('ceosal1')
reg4 <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
reg4$coefficients
b_roe <- reg4$coefficients[3]
change_in_roe <- 10
percent_change_salary <- 100*b_roe*change_in_roe
round(percent_change_salary, 2)

## Question 17 ##
data('ceosal1')
reg4 <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
reg4$coefficients
b <- coef(reg4)
b
exp_log_salary <- exp(b[1] + b[2]*log(5000) + b[3]*15)
round(exp_log_salary, 2)

## Question 18 ##
b1_hat <- 1.48
b2_hat <- -1.32
slope_1 <- -0.19
multiple_regression_b1 <- b1_hat + b2_hat*slope_1
round(multiple_regression_b1, 2)

## Question 19 ##
beta2 <- -1.62
delta1_tilde <- -0.17
bias <- beta2 * delta1_tilde
round(bias, 2)

## Question 21 ##
reg5 <- lm(wage ~ educ + exper, data = wage1)
b5 <- reg5$coefficients[3]
reg6 <- lm(exper ~ educ, data = wage1)
reg6$coefficients
b6 <- reg6$coefficients[2]
b5*b6
