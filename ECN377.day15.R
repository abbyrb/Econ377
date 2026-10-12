library("wooldridge")
data("ceosal1")
# log(salary) = b0 + b1*log(sales)
reg <- lm(log(salary) ~ log(sales), data = ceosal1)
reg
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b1 * 50 # = 12.83% What os the predicted change in salary if sales increase by 50%
