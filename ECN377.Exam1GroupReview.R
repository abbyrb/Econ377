


## QUESTION E1 ##
library("wooldridge")
data("wage1")
reg <- lm(wage ~ tenure, data = wage1)
View(wage1) 
residuals(reg)[6] # = 2.340458 

## QUESTION E2 ##
data("ceosal1")
reg2 <- lm(salary ~ roe, data = ceosal1)
SST <- sum((ceosal1$salary - mean(ceosal1$salary))^2)
SSR <- sum(residuals(reg2)^2)
SSE <- SST - SSR
SSE # = 5166419
r_squared <- summary(reg2)$r.squared
r_squared*100 # = 1.318862

## QUESTION G2 ##
1.5*4 - 0.8*-3 # change in y = 8.4
