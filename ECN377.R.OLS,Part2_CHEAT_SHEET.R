# ==============================================================================
# BEGINNER OLS R-SCRIPT TEMPLATE
# ==============================================================================

# ------------------------------------------------------------------------------
# MULTIPLE CHOICE CONCEPT QUESTIONS
# ------------------------------------------------------------------------------

# Q1: Fitted value (y_hat)
# Answer: The model's PREDICTION of Y at X_i

# Q2: OLS residual (u_hat)
# Formula: u_hat = Y - y_hat
# Answer: Y_i - \hat{Y}_i (actual minus fitted)

# Q3: Positive residual (u_hat > 0)
# Formula: Y - y_hat > 0  =>  Y > y_hat
# Answer: Under-predicted Y_i (actual > fitted)

# Q4: R-squared definition
# Answer: The fraction of the sample variation in Y explained by X

# Q5: Total Sum of Squares (SST) decomposition
# Formula: SST = SSE + SSR
# Answer: SSE + SSR

# Q6: Sum of OLS residuals (sum u_hat)
# Answer: 0

# Q7: R-squared close to 0
# Answer: The OLS line explains little of the variation in Y --- common, and not necessarily a bad model

# Q8: Mean point (X_bar, Y_bar)
# Answer: Always lies on the OLS regression line


# ------------------------------------------------------------------------------
# Q9: FIND THE OLS SLOPE (b1) FROM DATA POINTS
# Formula: b1 = cov(x, y) / var(x)
# ------------------------------------------------------------------------------
x <- c(8, 2, 5)
y <- c(7, 10, 5)

b1 <- cov(x, y) / var(x)
round(b1, 2)


# ------------------------------------------------------------------------------
# Q10: FIND THE OLS INTERCEPT (b0) FROM DATA POINTS
# Formula: b0 = mean(y) - b1 * mean(x)
# ------------------------------------------------------------------------------
x <- c(3, 4, 3)
y <- c(7, 11, 8)

b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
round(b0, 2)


# ------------------------------------------------------------------------------
# Q11: FIT OLS LINE AND PREDICT Y AT A TARGET X
# Formula: y_hat = b0 + b1 * x_target
# ------------------------------------------------------------------------------
x <- c(6, 5, 1)
y <- c(7, 12, 10)
x_target <- 3

b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)

y_hat <- b0 + b1 * x_target
round(y_hat, 2)


# ------------------------------------------------------------------------------
# Q12: FIND FITTED VALUE (y_hat) GIVEN INTERCEPT AND SLOPE
# Formula: y_hat = b0 + b1 * x
# ------------------------------------------------------------------------------
b0 <- 2
b1 <- 5 / 10
x <- 5

y_hat <- b0 + b1 * x
round(y_hat, 2)


# ------------------------------------------------------------------------------
# Q13: FIND RESIDUAL (u_hat) GIVEN A LINE AND A POINT
# Formula: u_hat = y - y_hat
# ------------------------------------------------------------------------------
b0 <- 3
b1 <- 9 / 10
x <- 17
y <- 19

y_hat <- b0 + b1 * x
u_hat <- y - y_hat
round(u_hat, 2)


# ------------------------------------------------------------------------------
# Q14: PREDICTED CHANGE IN Y WHEN X CHANGES
# Formula: change_in_y = b1 * change_in_x
# ------------------------------------------------------------------------------
b1 <- 4 / 10
change_in_x <- 3

change_in_y <- b1 * change_in_x
round(change_in_y, 2)


# ------------------------------------------------------------------------------
# Q15: SUM OF SQUARED RESIDUALS (SSR) FROM POINTS AND A LINE
# Formula: SSR = sum((y - y_hat)^2)
# ------------------------------------------------------------------------------
b0 <- 3
b1 <- 3 / 10
x <- c(7, 3, 4)
y <- c(13, 3, 7)

y_hat <- b0 + b1 * x
residuals <- y - y_hat
SSR <- sum(residuals^2)
round(SSR, 2)


# ------------------------------------------------------------------------------
# Q16: FIND EXPLAINED SUM OF SQUARES (SSE) FROM SST AND SSR
# Formula: SSE = SST - SSR
# ------------------------------------------------------------------------------
SST <- 323
SSR <- 150

SSE <- SST - SSR
round(SSE, 2)

# ------------------------------------------------------------------------------
# Q17: FIND R-SQUARED FROM SST AND SSR
# Formula: R2 = 1 - (SSR / SST)
# ------------------------------------------------------------------------------
SST <- 300
SSR <- 157

R2 <- 1 - (SSR / SST)
round(R2, 2)


# ------------------------------------------------------------------------------
# Q18: FIND R-SQUARED FROM SSE AND SST
# Formula: R2 = SSE / SST
# ------------------------------------------------------------------------------
SSE <- 52
SST <- 279

R2 <- SSE / SST
round(R2, 2)


# ------------------------------------------------------------------------------
# Q19: FRACTION OF UNEXPLAINED VARIATION
# Formula: Unexplained fraction = SSR / SST
# ------------------------------------------------------------------------------
SST <- 239
SSR <- 168

unexplained_fraction <- SSR / SST
round(unexplained_fraction, 2)


# ------------------------------------------------------------------------------
# Q20: FIND SSR FROM SST AND R-SQUARED
# Formula: SSR = SST * (1 - R2)
# ------------------------------------------------------------------------------
SST <- 326
R2 <- 78 / 100

SSR <- SST * (1 - R2)
round(SSR, 2)