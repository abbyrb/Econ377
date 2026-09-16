# R CHEAT SHEET: PROBABILITY & EXPECTATION PROBLEMS
# ==============================================================================


# ------------------------------------------------------------------------------
# 1. ADDING INDEPENDENT VARIANCES
# Formula: Var(X + Y) = Var(X) + Var(Y)
# ------------------------------------------------------------------------------
var_X <- 1
var_Y <- 7

var_sum <- var_X + var_Y
var_sum


# ------------------------------------------------------------------------------
# 2. COVARIANCE FROM PAIRED DATA (Equally Likely Outcomes)
# Formula: Cov(X, Y) = E[XY] - E[X]*E[Y]
# ------------------------------------------------------------------------------
x_vals <- c(1, 5, 1)
y_vals <- c(4, 3, 5)
p_each <- 1/3 # Since there are 3 pairs, each has probability 1/3

E_XY <- sum(x_vals * y_vals * p_each)
E_X  <- sum(x_vals * p_each)
E_Y  <- sum(y_vals * p_each)

cov_XY <- E_XY - (E_X * E_Y)
cov_XY


# ------------------------------------------------------------------------------
# 3. COVARIANCE PROPERTY WITH SCALARS
# Formula: Cov(a1*X + b1, a2*Y + b2) = a1 * a2 * Cov(X, Y)
# Note: Added constants (b1, b2) do NOT affect covariance!
# ------------------------------------------------------------------------------
cov_given <- 3
a1 <- 5
a2 <- 3

scaled_cov <- a1 * a2 * cov_given
scaled_cov


# ------------------------------------------------------------------------------
# 4. CONDITIONAL EXPECTATION: EQUALLY LIKELY SUBGROUP AVERAGE
# Formula: E[Y | X = x] = mean(Y)
# ------------------------------------------------------------------------------
y_subgroup <- c(10, 11, 7, 9)

cond_expectation_simple <- mean(y_subgroup)
cond_expectation_simple


# ------------------------------------------------------------------------------
# 5. CONDITIONAL EXPECTATION: WEIGHTED BY PROBABILITIES
# Formula: E[Y | X = x] = sum(Y * P(Y))
# ------------------------------------------------------------------------------
y_outcomes    <- c(7, 8, 5)
probabilities <- c(0.2, 0.3, 0.5)

cond_expectation_weighted <- sum(y_outcomes * probabilities)
cond_expectation_weighted