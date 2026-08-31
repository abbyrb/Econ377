
## ----------------------------------------------------------------

## ECN 377 - Day 4  |  variance, sd, covariance, correlation.  (all SAMPLE calculations)
## We fill in the blanks together -- swap in your own numbers (poll the room!)
## We build this from scratch together -- pick your own numbers (poll the room!).

## --- Sample variance & sd ---
x <- c(2,1,3)                # our data (change these)
xbar = mean(x)                        # the mean

## find its mean
mean(x) #=[1] 2
## by hand: subtract the mean from each value, square, add up, divide by n - 1
sum((x-xbar)^2)/(length(x)-1) #=[1] 1
## check it with the built-in variance function
var(x) #=[1] 1
## sd = the square root of the variance
## the sd is the square root of the variance
sd(x) #OR sqrt(var(x)) #=[1] 1

## --- Sample covariance ---
x <- c(2, 0, -2); y <- c(0, 1, 2)   # two paired variables (change these)

## put two paired variables (same length) in vectors x and y
x = c(7,0,8)
y = c(1,1,4)
## by hand: subtract each mean, multiply the pairs, add up, divide by n - 1
xbar = mean(x)
ybar = mean(y)
sum((x-xbar)*(y-ybar))/(length(x)-1) #=4.5
## check it with the built-in covariance function
cov(x,y) #=4.5 : shorter way to get same answer

## --- Sample correlation ---
## correlation = covariance divided by (sd of x  times  sd of y)
## the correlation is the covariance divided by (sd of x  times  sd of y)
cov(x,y)/(sd(x)*sd(y)) #=0.5960396
## check it with the built-in correlation function
cor(x,y) #=0.5960396; they are the same

## --- Nonlinear: log & exp (allow non-constant, curved relationships) ---
## make a range of positive x-values (call it x)
#______
## plot log(x): it flattens out (diminishing).  then plot exp(x): it grows fast.
#______
#______
## check that exp undoes log, and log undoes exp (pick any positive number):
#______
#______

## remember: var, sd, cov, cor are all SAMPLE quantities -- our best guesses at the population's.