## Practice Exam

#1
x <- c(1,3,6,8)
y <- c(4,8,2,10)
p <- c(0.15,0.35,0.3,0.2)
cov <- sum(x*y*p) - sum(x*p)*sum(y*p)
varx <- sum(x^2*p) - sum(x*p)^2
vary <- sum(y^2*p) - sum(y*p)^2
cor <- cov / sqrt(varx*vary)
round(cor, 2) # = 0.13

#2
Ex <- 3
Ex2<- 34
var <- Ex2 - Ex^2
sd <- 5*sqrt(var)
round(sd, 2) # = 25

#3
library('wooldridge')
data('wage1')
sd_male <- sd(wage1$wage[wage1$female == 0])
round(sd_male, 2) # = 4.16

#4
  #The zero conditional mean assumption fails because the average of U changes systematically with class size.

#5
data('ceosal1')
reg <- lm(salary ~ sales, data = ceosal1)
b1 <- reg$coefficients[2]
b1*1000 # = 15.47

#6: Log-level
b1 <- 0.042
b2 <- -0.015
x1 <- 2
x2 <- 4
percent_change_y <- 100*(b1*x1 + b2*x2) #MLR
round(percent_change_y, 2) # = 2.4

#7: log-log interpretation
  #A 1% increase in distance is associated with approximately a 0.65% decrease in house price.

#8
data('bwght')
reg2 <- lm(log(bwght) ~ log(faminc), data = bwght)
b1 <- reg2$coefficients[2]
percent_change_x <- 25
percent_change_y <- b1*percent_change_x
round(percent_change_y, 2) # = 0.52

#9
reg3 <- lm(wage ~ educ + exper + tenure, data = wage1)
b0 <- reg3$coefficients[1]
b1 <- reg3$coefficients[2]
b2 <- reg3$coefficients[3]
b3 <- reg3$coefficients[4]
predicted_change <- b0 + b1*16 + b2*8 + b3*4
round(predicted_change, 2) # = 7.57

#10
change_in_t <- 4
predicted_change <- b3*change_in_t
round(predicted_change, 2) # = 0.68

#11
data('ceosal1')
reg4 <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
b <- coef(reg4)
exp_log_salary <- exp(b[1] + b[2]*log(4000) + b[3]*18)
round(exp_log_salary, 2) # = 1059.4
  
#12
  #Properties:
    # A. The sample average of the OLS residuals is zero
    # C. The regression hyperplane passes directly through the point of sample means: y_bar = b0 + b1*x1 + bk*xk
    # D.  The sample covariance between each explanatory variable Xj and the residuals is zero

#13
  #MLR3
    # A. Regressing college GPA on ACT score and high school GPA, where ACT and high school GPA have a sample correlation of 0.68.
    # C. Regressing candidate vote share on candidate campaign expenditures ( expenditures ( expendB ), and total campaign expenditures ( expendA ), opponent totexpend ), where totexpend = expendA + expendB
    # D. A model containing 5 explanatory variables plus an intercept estimated using a sample of 4 observations.

#14


#15
  # Bpoverty > 0 and cor(policy, poverty) > 0 : positive bias (upward)
    # C. Biased upward (overstating the positive association between police and crime).

#16
reg_mult <- lm(bwght ~ cigs + faminc, data = bwght)
reg_aux  <- lm(faminc ~ cigs, data = bwght)
slope.x <- reg_aux$coefficients[2]
b2hat <- reg_mult$coefficients[3]
ovb <- slope.x*b2hat 
round(ovb, 2) # = -0.05

#17
sigma_squared <- 36
sigma <- sqrt(sigma_squared)
n <- 31
Sx2 <- 5
SSTx <- (n-1)*Sx2
sd_b1_hat <- sigma / sqrt(SSTx)
round(sd_b1_hat, 2) # = 0.49

#18
sd_b1 <- 2.4
scale <- sqrt(9)
sd_b1_new <- 2.4/scale
round(sd_b1_new, 2) # = 0.8

#19
  # Which auxiliary regression yields the value for R2^2 when evaluating the coefficient on X2 in a regression of Y on X1, X2, X3?
  # C. lm(X2 ~ X1 + X3)

#20 
data('hprice1')
reg6 <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
n <- nrow(hprice1)
df <- n-3-1
SSR <- sum(reg6$residuals^2)
sigma <- sqrt(SSR/df)
SST <- sum((hprice1$bdrms - mean(hprice1$bdrms))^2)
R_squared <- summary(reg6)$r.squared
se <- sigma / sqrt(SST*(1-R_squared))
round(se, 2) # = 13.32
summary(reg6)$coefficients["sqrft", "Std. Error"]
summary(reg6)
