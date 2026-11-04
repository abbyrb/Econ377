## >>> GET & SAVE (details in the R guide) -------------------------
## GET, git mode  -> run in the Console:
##   download.file("https://raw.githubusercontent.com/isaaccloh/ECON377/main/377_2026/D21/D21_starter.R", "D21.R")
## GET, easy mode -> copy this file from github.com/isaaccloh/ECON377 (377_2026/D21) into a new script
## SAVE your work -> commit + push D21.R to your own econ377 repo (or upload it on github.com)
## ----------------------------------------------------------------

## ECN 377 - Day 21 STARTER  |  Standard errors;  Gauss-Markov, normality, the t-statistic
## ------------------------------------------------------------------
## The t-statistic = estimate / se = "how many standard errors from zero."
## The simulation DEMO at the end shows where the t distribution comes from.
## Fill each ______ and ANSWER, then upload to GitHub.
## ------------------------------------------------------------------

library(wooldridge)
data("wage1")

## ---- A standard error by hand: se(educ) in wage ~ educ + exper ----
## regress wage on educ and exper; find educ's "Std. Error" in summary()
reg <- lm(wage ~ educ + exper, data = wage1)
reg$coefficients
b1 <- reg$coefficients[2]
summary(reg)

## df = n - K - 1   (n from nrow(); K = 2)
n <- nrow(wage1)
k <- 2
df <- n-k-1 # = 523

## sigma-hat = sqrt(SSR / df)
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR/df)

## SST_j for educ
SST_j <- (n-1)*var(wage1$educ)
SST_j

## R_j^2: regress educ on the other x, then take the R-squared
R_j <- lm(educ ~ exper, data = wage1)
R_j2 <- summary(R_j)$r.squared
R_j2

## se(educ) = sigma-hat / sqrt(SST_j * (1 - R_j^2)); does it match summary()?
se <- (sigma_hat / sqrt(SST_j * (1 - R_j2)))
summary(reg)
## ---- Demo: the t-statistic ----
## What you're learning: the "t value" column is beta-hat / se.
reg <- lm(wage ~ educ, data = wage1)
s <- summary(reg)$coefficients
s                                        # Estimate | Std. Error | t value | Pr(>|t|)
s[, "Estimate"] / s[, "Std. Error"]      # = the "t value" column

## ================= PROBLEMS (your turn) =========================
## An estimate beta-hat = 0.54 with se = 0.05.
bhat <- 0.54
se <- 0.05
tstat <- ______   # (a) t = beta-hat / se   (hint: bhat/se)
## (b) Is |t| big (far from 0)?              ANSWER:
## (c) What null hypothesis does this t test? ANSWER:
