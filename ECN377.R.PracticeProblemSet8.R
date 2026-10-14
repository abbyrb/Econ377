# ==========================================
# QUESTION 1: Theoretical Concept
# Concept: Omitted variable bias / Zero conditional mean assumption
# ==========================================
# Answer: The zero conditional mean assumption fails, 
# because the average of U changes with class size.


# ==========================================
# QUESTION 2: Identifying the OLS Line
# OLS Properties: 
# 1) Residuals must sum to 0: sum(u_hat) == 0
# 2) OLS minimizes sum of squared residuals: min(sum(u_hat^2))
# ==========================================

# Data table from Question 2
lines_df <- data.frame(
  Line     = c("A", "B", "C", "D"),
  sum_u    = c(0.00, -1.00, 0.00, 0.50),
  sum_abs_u = c(7.30, 5.80, 6.40, 6.70),
  sum_sq_u = c(9.71, 9.00, 8.13, 8.35)
)

# Step 1: Filter lines where sum of residuals is 0
valid_ols_candidates <- subset(lines_df, sum_u == 0)

# Step 2: Select candidate with the minimum sum of squared residuals
ols_line <- valid_ols_candidates[which.min(valid_ols_candidates$sum_sq_u), ]

cat("Q2 Best OLS Line is:", ols_line$Line, "\n")

# ==========================================
# QUESTION 3: Standard Deviation of (aX + b)
# Formula: Var(X) = E[X^2] - (E[X])^2
# Formula: sd(aX + b) = |a| * sqrt(Var(X))
# ==========================================
E_X   <- 1
E_X2  <- 26
a     <- 4
b     <- -2

var_X <- E_X2 - (E_X)^2
sd_X  <- sqrt(var_X)
ans_q3 <- abs(a) * sd_X
cat("Q3 Answer:", round(ans_q3, 2), "\n")


# ==========================================
# QUESTION 4: Variance of (aX + bY)
# Formula: Var(aX + bY) = a^2*Var(X) + b^2*Var(Y) + 2*a*b*Cov(X,Y)
# ==========================================
var_X  <- 5
var_Y  <- 11
cov_XY <- -3.6
a      <- 3
b      <- -2

ans_q4 <- (a^2 * var_X) + (b^2 * var_Y) + (2 * a * b * cov_XY)
cat("Q4 Answer:", round(ans_q4, 2), "\n")


# ==========================================
# QUESTION 5: Joint Distribution Correlation
# Formula: E[X] = sum(x_i * p_i),  E[Y] = sum(y_i * p_i),  E[XY] = sum(x_i * y_i * p_i)
# Formula: Var(X) = E[X^2] - (E[X])^2,  Var(Y) = E[Y^2] - (E[Y])^2
# Formula: Cov(X,Y) = E[XY] - E[X]*E[Y]
# Formula: Cor(X,Y) = Cov(X,Y) / (sd(X) * sd(Y))
# ==========================================
x <- c(2, 4, 5, 6)
y <- c(5, 12, 1, 9)
p <- c(0.2, 0.3, 0.4, 0.1)

E_X  <- sum(x * p)
E_Y  <- sum(y * p)
E_X2 <- sum((x^2) * p)
E_Y2 <- sum((y^2) * p)
E_XY <- sum((x * y) * p)

var_X  <- E_X2 - E_X^2
var_Y  <- E_Y2 - E_Y^2
cov_XY <- E_XY - (E_X * E_Y)

ans_q5 <- cov_XY / (sqrt(var_X) * sqrt(var_Y))
cat("Q5 Answer:", round(ans_q5, 2), "\n")


# ==========================================
# QUESTION 6: Residual of Observation k
# Formula: u_hat_i = y_i - (beta0_hat + beta1_hat * x_i)
# ==========================================
x_vals <- c(1, 4, 7, 9, 10)
y_vals <- c(2, 4, 7, 7, 9)
k      <- 3  # observation index

fit <- lm(y_vals ~ x_vals)
residuals_vec <- resid(fit)
ans_q6 <- residuals_vec[k]
cat("Q6 Answer:", round(ans_q6, 2), "\n")


# ==========================================
# QUESTION 7: Missing Residual
# Formula: sum(u_hat_i) = 0  -->  u_hat_n = -sum(u_hat_1 to u_hat_{n-1})
# ==========================================
known_residuals <- c(-2.1, 2.8, 2.6, -2.9, -0.2)

ans_q7 <- -sum(known_residuals)
cat("Q7 Answer:", round(ans_q7, 2), "\n")


# ==========================================
# QUESTION 8: Sum of (x * u_hat)
# Property: sum(x_i * u_hat_i) = 0  (OLS First-Order Condition)
# ==========================================
ans_q8 <- 0
cat("Q8 Answer:", ans_q8, "\n")


# ==========================================
# QUESTION 10: Total Sum of Squares (SST)
# Formula: S_y^2 = SST / (n - 1)  -->  SST = (n - 1) * S_y^2
# ==========================================
n     <- 54
S2_y  <- 8

ans_q10 <- (n - 1) * S2_y
cat("Q10 Answer:", round(ans_q10, 2), "\n")


# ==========================================
# QUESTION 11: Residual from wage1 Dataset
# Formula: u_hat_12 = wage_12 - (beta0_hat + beta1_hat * tenure_12)
# ==========================================
# Install if needed: install.packages("wooldridge")
library(wooldridge)
data("wage1")

row_num <- 12
reg <- lm(wage ~ tenure, data = wage1)
ans_q11 <- reg$residuals[row_num]
cat("Q11 Answer:", round(ans_q11, 2), "\n")


# ==========================================
# QUESTION 12: Mean of y using (x_bar, y_bar)
# Formula: y_bar = beta0_hat + beta1_hat * x_bar
# ==========================================
beta0_hat <- 1
beta1_hat <- 2.5
x_bar     <- 8

ans_q12 <- beta0_hat + (beta1_hat * x_bar)
cat("Q12 Answer:", round(ans_q12, 2), "\n")

# ==========================================
# BONUS CHEAT SHEET: basic stats & OLS metrics
# ==========================================

# --- 1. BASIC SUMMARY STATISTICS (Vectors x and y) ---
x <- c(1, 4, 7, 9, 10)
y <- c(2, 4, 7, 7, 9)

# Variance: Var(X)
# Formula: sum((x - x_bar)^2) / (n - 1)
var_x <- var(x)

# Covariance: Cov(X, Y)
# Formula: sum((x - x_bar)(y - y_bar)) / (n - 1)
cov_xy <- cov(x, y)

# Correlation: Cor(X, Y)
# Formula: Cov(X, Y) / (sd(X) * sd(Y))
cor_xy <- cor(x, y)


# --- 2. REGRESSION METRICS: SST, SSE, SSR, R-squared ---
# Fit linear model
fit <- lm(y ~ x)

# Get actual y, fitted values (y_hat), and residuals (u_hat)
y_actual <- y
y_hat    <- fitted(fit)
u_hat    <- resid(fit)

# Total Sum of Squares (SST)
# Formula: SST = sum((y - y_bar)^2)
SST <- sum((y_actual - mean(y_actual))^2)

# Sum of Squared Residuals (SSR) / Residual Sum of Squares (RSS)
# Formula: SSR = sum(u_hat^2)
SSR <- sum(u_hat^2)

# Explained Sum of Squares (SSE) / Model Sum of Squares
# Formula: SSE = sum((y_hat - y_bar)^2)
SSE <- sum((y_hat - mean(y_actual))^2)

# R-Squared (Coefficient of Determination)
# Formula: R^2 = SSE / SST = 1 - (SSR / SST)
r_squared <- SSE / SST

# Alternatively, extract R-squared directly from model summary:
r_squared_direct <- summary(fit)$r.squared


# --- PRINT RESULTS ---
cat("Variance of x:", round(var_x, 2), "\n")
cat("Covariance:", round(cov_xy, 2), "\n")
cat("Correlation:", round(cor_xy, 2), "\n")
cat("SST (Total):", round(SST, 2), "\n")
cat("SSE (Explained):", round(SSE, 2), "\n")
cat("SSR (Residuals):", round(SSR, 2), "\n")
cat("R-Squared:", round(r_squared, 4), "\n")