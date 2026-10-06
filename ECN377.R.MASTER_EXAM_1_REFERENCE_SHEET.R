# ==============================================================================
# ULTIMATE ECONOMETRICS MASTER EXAM CHEAT SHEET (PLAIN TEXT VERSION)
# Instructions: Copy and paste into RStudio. Run line-by-line using CTRL+ENTER.
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP: PACKAGES & DATASETS
# ------------------------------------------------------------------------------
install.packages("wooldridge")
library("wooldridge")

data("wage1")
data("bwght")
data("ceosal1")


# ==============================================================================
# PART 1: PRACTICE PROBLEM SET 7 (WOOLDRIDGE DATASETS)
# ==============================================================================

# ------------------------------------------------------------------------------
# DATASET DESCRIPTIVE STATISTICS & OLS (wage1)
# ------------------------------------------------------------------------------
nrow(wage1)                     # How many workers are in the wage1 sample?
mean(wage1$wage)                # What is the sample mean of hourly wage?
sd(wage1$educ)                  # What is the sample standard deviation of education?
var(wage1$educ)                 # Sample variance of education
cov(wage1$wage, wage1$educ)     # Sample covariance between wage and educ
cor(wage1$wage, wage1$educ)     # Sample correlation between wage and educ

reg <- lm(wage ~ educ, data = wage1) # OLS regression of wage on educ
reg

b1_hat <- reg$coefficients[2] 
b1_hat                          # What is the OLS slope b1_hat?

b0_hat <- reg$coefficients[1]
b0_hat                          # What is the OLS intercept b0_hat?

b0_hat + b1_hat * 14            # Predicted hourly wage for worker with 14 years educ
b1_hat * 2                      # Change in predicted wage when educ rises by 2 years

SSR <- sum(reg$residuals^2)     # Sum of Squared Residuals
SSR

SST <- sum((wage1$wage - mean(wage1$wage))^2) # Total Sum of Squares
SST

SSE <- SST - SSR                # Explained Sum of Squares
SSE

1 - SSR / SST                   # R^2 calculation for regression of wage on educ
summary(reg)$r.squared          # Checking R^2 another way

# ------------------------------------------------------------------------------
# DATASET OLS (bwght)
# ------------------------------------------------------------------------------
reg2 <- lm(bwght ~ cigs, data = bwght)
reg2

b1_hat <- reg2$coefficients[2]
b0_hat <- reg2$coefficients[1]

# Ounces birth weight changes when mother smokes 5 more cigarettes per day
b1_hat * 5

# ------------------------------------------------------------------------------
# CHALLENGE / FILTERING QUESTION
# ------------------------------------------------------------------------------
average_wage <- wage1$wage[wage1$educ == 16]
mean(average_wage)


# ==============================================================================
# PART 2: PROBABILITY & EXPECTATION CALCULATIONS (JOINT TABLES)
# ==============================================================================

# ------------------------------------------------------------------------------
# EXPECTED VALUE OF X: E[X]
# Formula: sum(x * p)
# ------------------------------------------------------------------------------
x <- c(6, 4, 5)
p <- c(0.2, 0.3, 0.5)

E_x <- sum(x * p)
round(E_x, 2)


# ------------------------------------------------------------------------------
# POPULATION COVARIANCE FROM PROBABILITY TABLE: Cov(X, Y)
# Formula: E[XY] - (E[X] * E[Y])
# ------------------------------------------------------------------------------
x <- c(3, 4, 3)
y <- c(3, 8, 8)
p <- c(0.2, 0.3, 0.5)

E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)

cov_xy <- E_xy - (E_x * E_y)
round(cov_xy, 2)


# ------------------------------------------------------------------------------
# POPULATION REGRESSION SLOPE: b1_hat
# Formula: Cov(X, Y) / Var(X) = (E[XY] - E[X]E[Y]) / (E[X^2] - (E[X])^2)
# ------------------------------------------------------------------------------
x <- c(0, 1, 5)
y <- c(0, 5, 7)
p <- c(0.2, 0.3, 0.5)

E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)
E_x2 <- sum((x^2) * p)

cov_xy <- E_xy - (E_x * E_y)
var_x  <- E_x2 - (E_x^2)

b1_hat <- cov_xy / var_x
round(b1_hat, 2)


# ------------------------------------------------------------------------------
# ADDING INDEPENDENT VARIANCES
# Formula: Var(X + Y) = Var(X) + Var(Y)
# ------------------------------------------------------------------------------
var_X <- 1
var_Y <- 7

var_sum <- var_X + var_Y
var_sum


# ------------------------------------------------------------------------------
# COVARIANCE FROM PAIRED DATA (Equally Likely Outcomes)
# Formula: Cov(X, Y) = E[XY] - E[X]*E[Y]
# ------------------------------------------------------------------------------
x_vals <- c(1, 5, 1)
y_vals <- c(4, 3, 5)
p_each <- 1/3 # Probability for each pair

E_XY <- sum(x_vals * y_vals * p_each)
E_X  <- sum(x_vals * p_each)
E_Y  <- sum(y_vals * p_each)

cov_XY <- E_XY - (E_X * E_Y)
cov_XY


# ------------------------------------------------------------------------------
# COVARIANCE PROPERTY WITH SCALARS
# Formula: Cov(a1*X + b1, a2*Y + b2) = a1 * a2 * Cov(X, Y)
# Note: Added constants (b1, b2) do NOT affect covariance!
# ------------------------------------------------------------------------------
cov_given <- 3
a1 <- 5
a2 <- 3

scaled_cov <- a1 * a2 * cov_given
scaled_cov


# ------------------------------------------------------------------------------
# CONDITIONAL EXPECTATION: EQUALLY LIKELY SUBGROUP AVERAGE
# Formula: E[Y | X = x] = mean(Y)
# ------------------------------------------------------------------------------
y_subgroup <- c(10, 11, 7, 9)

cond_expectation_simple <- mean(y_subgroup)
cond_expectation_simple


# ------------------------------------------------------------------------------
# CONDITIONAL EXPECTATION: WEIGHTED BY PROBABILITIES
# Formula: E[Y | X = x] = sum(Y * P(Y))
# ------------------------------------------------------------------------------
y_outcomes    <- c(7, 8, 5)
probabilities <- c(0.2, 0.3, 0.5)

cond_expectation_weighted <- sum(y_outcomes * probabilities)
cond_expectation_weighted


# ==============================================================================
# PART 3: STANDALONE PROBLEM SET QUESTIONS (Q1 TO Q20)
# ==============================================================================

# ------------------------------------------------------------------------------
# Q1: CONCEPT - FITTED VALUE (y_hat)
# Formula: y_hat = b0_hat + b1_hat * X_i
# Answer: The model's PREDICTION of Y at X_i
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q2: CONCEPT - OLS RESIDUAL (u_hat)
# Formula: u_hat = Y_i - y_hat
# Answer: Y_i - y_hat (actual minus fitted)
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q3: CONCEPT - POSITIVE RESIDUAL (u_hat > 0)
# Formula: Y_i - y_hat > 0  =>  Y_i > y_hat
# Answer: Under-predicted Y_i (actual > fitted)
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q4: CONCEPT - DEFINITION OF R^2
# Formula: R^2 = SSE / SST = 1 - (SSR / SST)
# Answer: The fraction of the sample variation in Y explained by X
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q5: CONCEPT - TOTAL SUM OF SQUARES DECOMPOSITION
# Formula: SST = SSE + SSR
# Answer: SSE + SSR
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q6: CONCEPT - SUM OF OLS RESIDUALS (sum u_hat)
# Answer: 0
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q7: CONCEPT - R^2 CLOSE TO 0
# Answer: The OLS line explains little of the variation in Y --- common, and not necessarily a bad model
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q8: CONCEPT - MEAN POINT (x_bar, y_bar)
# Answer: Always lies on the OLS regression line
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Q9: OLS SLOPE FROM SAMPLE DATA
# Formula: b1_hat = cov(x, y) / var(x)
# ------------------------------------------------------------------------------
x <- c(8, 2, 5)
y <- c(7, 10, 5)

b1_hat <- cov(x, y) / var(x)
round(b1_hat, 2)


# ------------------------------------------------------------------------------
# Q10: OLS INTERCEPT FROM SAMPLE DATA
# Formula: b0_hat = mean(y) - b1_hat * mean(x)
# ------------------------------------------------------------------------------
x <- c(3, 4, 3)
y <- c(7, 11, 8)

b1_hat <- cov(x, y) / var(x)
b0_hat <- mean(y) - b1_hat * mean(x)
round(b0_hat, 2)


# ------------------------------------------------------------------------------
# Q11: OLS LINE FIT & PREDICT AT TARGET X
# Formula: y_hat = b0_hat + b1_hat * x_target
# ------------------------------------------------------------------------------
x <- c(6, 5, 1)
y <- c(7, 12, 10)
x_target <- 3

b1_hat <- cov(x, y) / var(x)
b0_hat <- mean(y) - b1_hat * mean(x)

y_hat <- b0_hat + b1_hat * x_target
round(y_hat, 2)


# ------------------------------------------------------------------------------
# Q12: FITTED VALUE GIVEN INTERCEPT AND SLOPE
# Formula: y_hat = b0_hat + b1_hat * x
# ------------------------------------------------------------------------------
b0_hat <- 2
b1_hat <- 5 / 10
x <- 5

y_hat <- b0_hat + b1_hat * x
round(y_hat, 2)


# ------------------------------------------------------------------------------
# Q13: RESIDUAL GIVEN LINE AND POINT
# Formula: u_hat = y - y_hat
# ------------------------------------------------------------------------------
b0_hat <- 3
b1_hat <- 9 / 10
x <- 17
y <- 19

y_hat <- b0_hat + b1_hat * x
u_hat <- y - y_hat
round(u_hat, 2)


# ------------------------------------------------------------------------------
# Q14: PREDICTED CHANGE IN Y WHEN X CHANGES
# Formula: change_in_y = b1_hat * change_in_x
# ------------------------------------------------------------------------------
b1_hat <- 4 / 10
change_in_x <- 3

change_in_y <- b1_hat * change_in_x
round(change_in_y, 2)


# ------------------------------------------------------------------------------
# Q15: SUM OF SQUARED RESIDUALS (SSR) FROM POINTS AND LINE
# Formula: SSR = sum((y - y_hat)^2)
# ------------------------------------------------------------------------------
b0_hat <- 3
b1_hat <- 3 / 10
x <- c(7, 3, 4)
y <- c(13, 3, 7)

y_hat <- b0_hat + b1_hat * x
residuals <- y - y_hat
SSR <- sum(residuals^2)
round(SSR, 2)


# ------------------------------------------------------------------------------
# Q16: EXPLAINED SUM OF SQUARES (SSE) FROM SST AND SSR
# Formula: SSE = SST - SSR
# ------------------------------------------------------------------------------
SST <- 323
SSR <- 150

SSE <- SST - SSR
round(SSE, 2)


# ------------------------------------------------------------------------------
# Q17: R-SQUARED FROM SST AND SSR
# Formula: R2 = 1 - (SSR / SST)
# ------------------------------------------------------------------------------
SST <- 300
SSR <- 157

R2 <- 1 - (SSR / SST)
round(R2, 2)


# ------------------------------------------------------------------------------
# Q18: R-SQUARED FROM SSE AND SST
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
# Q20: SSR FROM SST AND R-SQUARED
# Formula: SSR = SST * (1 - R2)
# ------------------------------------------------------------------------------
SST <- 326
R2 <- 78 / 100

SSR <- SST * (1 - R2)
round(SSR, 2)


# ==============================================================================
# PART 4: ADDITIONAL FORMULAS FROM LECTURE NOTES
# ==============================================================================

# ------------------------------------------------------------------------------
# MULTIVARIABLE PREDICTED CHANGES
# Formula: Delta_y = b1_hat * Delta_x1 + b2_hat * Delta_x2
# Example: Ramen Q = 120 - 9.8*Price + 0.03*Income
# ------------------------------------------------------------------------------
b1_hat <- -9.8
b2_hat <- 0.03

delta_x1 <- -2    # Lower price by $2
delta_x2 <- 300   # Raise income by $300

delta_y <- (b1_hat * delta_x1) + (b2_hat * delta_x2)
delta_y


# ------------------------------------------------------------------------------
# LOG-LEVEL REGRESSION PERCENTAGE CHANGE
# Formula: pct_change_y = b1_hat * 100 * change_in_x
# ------------------------------------------------------------------------------
b1_hat <- 0.083
change_in_x <- 1

pct_change_y <- b1_hat * 100 * change_in_x
round(pct_change_y, 2)


# ------------------------------------------------------------------------------
# VARIANCE OF LINEAR COMBINATION: Var(a*X + b*Y)
# Formula: Var(aX + bY) = a^2*Var(X) + b^2*Var(Y) + 2*a*b*Cov(X,Y)
# ------------------------------------------------------------------------------
var_x <- 4
var_y <- 6
cov_xy <- 3
a <- 1
b <- 1

var_combo <- (a^2 * var_x) + (b^2 * var_y) + (2 * a * b * cov_xy)
var_combo