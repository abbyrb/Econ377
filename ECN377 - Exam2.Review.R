#A1
  #Whatever affects the dependent variable, must affect the slope variable
124*.01 # = 1.24

#A2
#(a)
b1 <- 20
  change_in_x <- 10
  change_in_y <- (b1/100)*change_in_x
round(change_in_y, 2) # = 2
#(b)
b1 <- 0.31
  percent_change_x <- 10
  percent_change_y <- b1*percent_change_x
round(percent_change_y, 2) # = 3.1

#B1
#(a)
sd <- 0.84
k <- 4
sd_new <- sd / sqrt(k)
#(b)
(sd/0.28)^2

#B2
data('gpa1')
reg <-lm(colGPA ~ hsGPA + ACT, data = gpa1)
n <- nrow(gpa1)
k <-
  df <- n-k-1
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR/df)
SSTj <- sum((gpa1$ACT - mean(gpa1$ACT))^2) # or (n-1)*Sx2
R2j <- summary(lm(ACT ~ hsGPA, data = gpa1))$r.squared
se <- sigma_hat / sqrt(SSTj*(1-R2j))
round(se, 2) 
summary(reg)$coefficients[3, 2]

#C1
library('wooldridge')
data('wage1')
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
b3 <- reg$coefficients[4]
y <- b0 + b1*12 + b2*10 + b3*2
round(y, 2) 3 = 1.47

#C2
data('ceosal1')
reg2 <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
b0 <- reg2$coefficients[1]
b1 <- reg2$coefficients[2]
b2 <- reg2$coefficients[3]
y <- b0 + b2*(log(5000)) + b2*15
round(y, 2) # = 4.46

#D1
  # (a) MLR3 does not fail: no variables are the addition and multiplication of each other; MLR4 fails
  # (b) ability raises wage and postively correlated <- biased upward

#D2
#(a)
b2 <- 4.2
sigma <- 0.6
b2*sigma # = 2.52
#(b) 
reg <- lm(wage ~ educ + exper, data = wage1)
reg2 <- lm(exper ~ educ, data = wage1)
b2 <- reg$coefficients[3]
sigma <- reg2$coefficients[2]
b2*sigma # = -0.103

#E1
mean(wage1$wage[wage1$married == 1]) # = 6.53

#E2
mean(wage1$female) # = 0.48