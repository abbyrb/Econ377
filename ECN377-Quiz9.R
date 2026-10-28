b1 <- 0.062
  change_in_x <- -3
  percent_change_y <- 100*b1*change_in_x
round(percent_change_y, 2)


library('wooldridge')
data('bwght')
reg <- lm(log(bwght) ~ log(faminc), data = bwght ) 
b1 <- reg$coefficients[2]
  percent_change_x <- 15
  percent_change_y <- b1*percent_change_x
round(percent_change_y, 2)


n <- 8
Sx <- 1.1
SST_x <- (n-1)*(Sx^2)
simga_hat <- 9.4
standard_error_b1_hat <- simga_hat / sqrt(SST_x)
round(standard_error_b1_hat, 2)


sd_b1_hat <- 0.42
sd_b1_hat / sqrt(8)

b0_hat <- 1
b1_hat <- 3.5
  b2_hat <- 0.4
  slope_1 <- 15
  slope_2 <- 6
  multiple_regression_b1 <- b0_hat + b1_hat*slope_1 + b2_hat*slope_2
round(multiple_regression_b1, 2)


change_in_x1 <- 1
  change_in_x2 <- 4
  b1_hat <- 0.9
  b2_hat <- -1.9
  change_in_yhat <- b1_hat*change_in_x1 + b2_hat*change_in_x2
round(change_in_yhat, 2)


data("wage1")
reg3 <- lm(wage ~ educ + exper + tenure, data = wage1)
reg3$coefficients
b0 <- reg3$coefficients[1]
b1 <- reg3$coefficients[2]
b2 <- reg3$coefficients[3]
b3 <- reg3$coefficients[4]
predicted_change <- b0 + b1*16 + b2*5 + b3*2
round(predicted_change, 2)

data('wage1')
reg3 <- lm(wage ~ educ + exper + tenure, data = wage1)
change_in_e <- 10
  predicted_change <- b2*change_in_e
round(predicted_change, 2)
