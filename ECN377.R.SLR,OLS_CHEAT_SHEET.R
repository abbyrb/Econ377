# ==============================================================================
#                 SLR & OLS CHEAT SHEET (FORMULA BASED)
# ==============================================================================
#SLR -> Y = B0 + B1*X + U
#E[U/X] -> average of U does not depend on X
#E[Y/X = x] = B0 + B1*X
#sample_B1 = cov(x,y)/var(x)

# ------------------------------------------------------------------------------
# TYPE 1: PROBABILITY DISTRIBUTIONS (JOINT PROBABILITY TABLES)
# ------------------------------------------------------------------------------

# --- 1A. Expected Value of X: E[X] ---
# Formula: sum(x_i * p_i)
x <- c(6, 4, 5)
p <- c(0.2, 0.3, 0.5)

E_x <- sum(x * p)
round(E_x, 2)


# --- 1B. Population Covariance: Cov(X, Y) ---
# Formula: E[XY] - (E[X] * E[Y])
x <- c(3, 4, 3)
y <- c(3, 8, 8)
p <- c(0.2, 0.3, 0.5)

E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)

cov_xy <- E_xy - (E_x * E_y)
round(cov_xy, 2)


# --- 1C. Population Regression Slope: beta_1 ---
# Formula: Cov(X, Y) / Var(X) = (E[XY] - E[X]E[Y]) / (E[X^2] - (E[X])^2)
x <- c(0, 1, 5)
y <- c(0, 5, 7)
p <- c(0.2, 0.3, 0.5)

E_x  <- sum(x * p)
E_y  <- sum(y * p)
E_xy <- sum((x * y) * p)
E_x2 <- sum((x^2) * p)

cov_xy <- E_xy - (E_x * E_y)
var_x  <- E_x2 - (E_x^2)

beta_1 <- cov_xy / var_x
round(beta_1, 2)


# ------------------------------------------------------------------------------
# TYPE 2: SAMPLE DATA CALCULATIONS (Vectors of x and y values)
# ------------------------------------------------------------------------------

# --- 2A. Sample Covariance: S_xy ---
# Formula: S_xy = (1 / (n - 1)) * sum((x_i - mean(x)) * (y_i - mean(y)))
x <- c(0, 3, 6)
y <- c(6, 0, 3)

n <- length(x)
x_bar <- mean(x)
y_bar <- mean(y)

S_xy <- sum((x - x_bar) * (y - y_bar)) / (n - 1)
round(S_xy, 2)


# --- 2B. OLS Slope Estimate: beta_1_hat ---
# Formula: sum((x_i - mean(x)) * (y_i - mean(y))) / sum((x_i - mean(x))^2)
x <- c(1, 5, 2)
y <- c(3, 3, 5)

x_bar <- mean(x)
y_bar <- mean(y)

num <- sum((x - x_bar) * (y - y_bar))
den <- sum((x - x_bar)^2)

beta_1_hat <- num / den
round(beta_1_hat, 2)


# --- 2C. OLS Intercept Estimate: beta_0_hat ---
# Formula: beta_0_hat = mean(y) - beta_1_hat * mean(x)
x <- c(4, 5, 7)
y <- c(1, 6, 9)

x_bar <- mean(x)
y_bar <- mean(y)

beta_1_hat <- sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar)^2)
beta_0_hat <- y_bar - (beta_1_hat * x_bar)

round(beta_0_hat, 2)


# --- 2D. Predict y_hat at a specific x value ---
# Formula: y_hat = beta_0_hat + (beta_1_hat * x_target)
x <- c(8, 2, 3)
y <- c(10, 5, 5)
x_target <- 2  # Change to the x value given in problem

x_bar <- mean(x)
y_bar <- mean(y)

beta_1_hat <- sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar)^2)
beta_0_hat <- y_bar - (beta_1_hat * x_bar)

y_hat <- beta_0_hat + (beta_1_hat * x_target)
round(y_hat, 2)


# ------------------------------------------------------------------------------
# TYPE 3: PRE-CALCULATED SUMMARY STATISTIC INPUTS
# ------------------------------------------------------------------------------

# --- 3A. Slope from given Covariance and Variance ---
# Formula: beta_1_hat = cov(x, y) / var(x)
cov_xy <- 4
var_x  <- 7

beta_1_hat <- cov_xy / var_x
round(beta_1_hat, 2)


# --- 3B. Intercept from given Means and Slope ---
# Formula: beta_0_hat = y_bar - (beta_1_hat * x_bar)
y_bar      <- 7
x_bar      <- 8
beta_1_hat <- 7 / 10

beta_0_hat <- y_bar - (beta_1_hat * x_bar)
round(beta_0_hat, 2)


# --- 3C. Change in Predicted Y given Change in X (Ceteris Paribus) ---
# Formula: delta_y_hat = beta_1_hat * delta_x
beta_1_hat <- 3 / 10
delta_x    <- 9       # Change in X

delta_y_hat <- beta_1_hat * delta_x
round(delta_y_hat, 2)