install.packages("wooldridge")
library("wooldridge")
data("wage1")
data("bwght")

nrow(wage1) #How many workers are in the wage1 sample?
mean(wage1$wage) #What is the sample mean of hourly wage?
sd(wage1$educ) #What is the sample standard deviation of years of education?

reg <- lm(wage ~ educ, data = wage1) #OLS regression of wage on educ
reg
b1 <- reg$coefficients[2] 
b1 #What is the OLS slope ?
b0 <- reg$coefficients[1]
b0 #What is the OLS intercept b0_hat?
b0 + b1*14 #What is the predicted hourly wage for a worker with 14 years of education?
b1*2 #How much does the predicted hourly wage change when education rises by 2 years?
SSR <- sum(reg$residuals^2)
SSR
SST <- sum((wage1$wage - mean(wage1$wage))^2)
1 - SSR/SST #What is the R^2 for the regression of wage on educ?
summary(reg)$r.squared #checking R^2;another way to calculate

reg2 <- lm(bwght ~ cigs, data = bwght)
reg2
B1 <- reg2$coefficients[2]
B0 <- reg2$coefficients[1]
B1*5 #By how many ounces does predicted birth weight change when the mother smokes 5 more cigarettes per day? It can be negative.


##CHALLENGE QUESTION##
average_wage <- wage1$wage[wage1$educ == 16]
mean(average_wage)
