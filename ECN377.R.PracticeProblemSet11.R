#1, #2, #3, #4, #6, #7, #9, #11, #14, #16, #17

## Question 1 ##
b0 <- 1.5
b1 <- 0.053
b2 <- -0.014
x1 <- 3
x2 <- 4
percent_change_y <- 100* (b1*x1 + b2*x2)
round(percent_change_y, 2)

## Question 2 ##
library('wooldridge')
data('wage1')
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
b3 <- reg$coefficients[4]
reg$coefficients
percent_change_y <- 100*((b2*2) + (b3*1))
round(percent_change_y, 2)

## Question 3 ##
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
predict.wage <- exp(b0 + b1*12 + b2*10 + b3*3)
round(predict.wage, 2)

## Question 4 ##
  #MLR Properties
    # 1. The sample average of the residuals is 0.
    # 2. The regression passes through the point of sample means: yhat = b0hat + b1hat*x1bar +...bkhat*xkbar
    # 3. The sample covariance between each Xj and the residuals is 0.

## Question 5 ##
data('gpa1')
reg2 <- lm(colGPA ~ ACT + hsGPA, data = gpa1)
reg2$coefficients
b0 <- reg2$coefficients[1]
b1 <- reg2$coefficients[2]
b2 <- reg2$coefficients[3]
act.mean <- mean(gpa1$ACT)
hsgpa.mean <- mean(gpa1$hsGPA)
predicted.colGPA <- (b0 + b1*mean(gpa1$ACT) + b2*mean(gpa1$hsGPA))
round(predicted.colGPA, 2)
mean(gpa1$colGPA)

## Question 6 ##
b0 <- 8.3
b1 <- 0.5
b2 <- -1.1
x1 <- 4.6
x2 <- 6.3
ybar <- b0 + b1*x1 + b2*x2
round(ybar, 2)

## Question 8 ##
data('vote1')
vote1$totexpend <- vote1$expendA + vote1$expendB
lm(voteA ~ expendA + expendB + totexpend, data = vote1)

## Question 11 ##
b1.SLR <- -0.54
b2.MLR <- 0.79
slope.x <- 0.39
b1.MLR <- b1.SLR - b2.MLR*slope.x
round(b1.MLR, 2)

## Question 12 ##
data('bwght')
reg3 <- lm(bwght ~ cigs, data = bwght)
reg3$coefficients           

## Question 13 ##
reg4 <- lm(bwght ~ cigs + faminc, data = bwght)
reg4$coefficients

## Question 14 ##
reg5 <- lm(faminc ~ cigs, data = bwght)
slope.x <- reg5$coefficients[2]
b2hat <- reg4$coefficients[3]
slope.x*b2hat
reg3$coefficients[2] - reg4$coefficients[2]