## ECN 377 - Day 11 STARTER  |  OLS properties 1-3;  SST = SSE + SSR, R^2
## ------------------------------------------------------------------
## Each ______ comment gives the MATH + a hint at the code; you write the command.
## Fill each ______ as we go, then upload to GitHub.
## ------------------------------------------------------------------

library(wooldridge)
## Example 2.3
reg = lm(salary ~ roe, data = ceosal1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b0+b1*(-15) #prediction=685.6735
b1*(-5) #prediction=--92.50593

data("wage1")
reg <- lm(wage ~ educ, data = wage1)
resids <- reg$residuals

## ---- OLS properties 1-3  (hold on ANY sample) ----
sum(resids)   # 1) the residuals sum to 0            -- add up the residuals of reg #=-1.175587e-13 (error truncation within R)
cov(resids, wage1$educ)   # 2) x & residuals are uncorrelated    -- add up educ * (the residuals)  (~ 0) #=5.114328e-15
b0 <- reg$coefficients[1]   # 3) (xbar, ybar) is ON the line       -- does mean(wage) equal  b0 + b1*mean(educ)?
b1 <- reg$coefficients[2]
b0 + (b1 * mean(wage1$educ))
mean(wage1$wage)
## ---- SST = SSE + SSR, and R^2   (bwght ~ cigs) ----
data("bwght")
reg2 <- ______   # regress bwght on cigs
SST <- ______    # total variation:   squared deviations of bwght from its mean, summed
SSR <- ______    # unexplained:       squared residuals of reg2, summed
SSE <- ______    # explained:         SST - SSR
R2  <- ______    # R^2 = SSE / SST    (~ 0.02: low is normal)

## ================= YOUR TURN =========================
## A regression has SST = 200 and SSR = 150.
SST0 <- 200
SSR0 <- 150
SSE0 <- ______   # (a) explained sum of squares
R20  <- ______   # (b) R^2